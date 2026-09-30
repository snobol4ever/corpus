                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/json/json-match-fence.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
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
                        sub              rsp, 136
                        lea              rax, [rip + .Lgcmap_PAT$0]
                        mov              qword ptr [rbp + -128], rax
                        mov              dword ptr [rbp + -136], 160
                        mov              dword ptr [rbp + -132], 136
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -120], xmm0
                        movups           xmmword ptr [rbp + -104], xmm0
                        movups           xmmword ptr [rbp + -88], xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n0_match_fence1_bx, @function
n0_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_fence1_α:      mov              qword ptr [rbp + -48], rsp
                        mov              qword ptr [rbp + -40], r12
                        sub              rsp, 0;                              jmp   n1_match_alternate_α
.Lmatch_fence1_γ_0_as:  add              rsp, 0
                        mov              rsp, qword ptr [rbp + -48];          jmp   PAT$0_γ
.Lmatch_fence1_γ_0_af:
.Lmatch_fence1_ω_0_af:  add              rsp, 0
n0_match_fence1_β:      mov              r12, qword ptr [rbp + -40]
                        mov              rsp, qword ptr [rbp + -48];          jmp   PAT$0_ω
                        .size            n0_match_fence1_bx, .-n0_match_fence1_bx
                        .type            n1_match_alternate_bx, @function
n1_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_match_alternate_α:   mov              dword ptr [rbp + -80], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_7_21]
                        mov              qword ptr [rbp + -64], rax;          jmp   n3_match_span_α
.Lmatch_alternate_α_7_21:
                        lea              rax, [rip + .Lmatch_alternate_α_7_19]
                        mov              qword ptr [rbp + -64], rax;          jmp   n2_match_lit_α
.Lmatch_alternate_γ_1_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_7_40]
                        mov              qword ptr [rbp + -72], rax;          jmp   .Lmatch_alternate_γ_1_as
.Lmatch_alternate_γ_1_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_7_41]
                        mov              qword ptr [rbp + -72], rax;          jmp   .Lmatch_alternate_γ_1_as
.Lmatch_alternate_α_7_40:
                                                                              jmp   n3_match_span_β
.Lmatch_alternate_α_7_41:
                                                                              jmp   n2_match_lit_β
.Lmatch_alternate_γ_1_as:
                                                                              jmp   .Lmatch_fence1_γ_0_as
n1_match_alternate_β:   mov              rax, qword ptr [rbp + -72];          jmp   rax
.Lmatch_alternate_γ_1_af:
.Lmatch_alternate_ω_1_af:
                        mov              r14d, dword ptr [rbp + -80]
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
.Lmatch_alternate_α_7_19:
                                                                              jmp   .Lmatch_fence1_ω_0_af
                        .size            n1_match_alternate_bx, .-n1_match_alternate_bx
                        .type            n2_match_lit_bx, @function
n2_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_match_lit_α:                                                               jmp   .Lmatch_alternate_γ_1_s1
n2_match_lit_β:                                                               jmp   .Lmatch_alternate_ω_1_af
                        .size            n2_match_lit_bx, .-n2_match_lit_bx
                        .type            n3_match_span_bx, @function
n3_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_match_span_α:        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lmatch_span_α_11_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_11_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_11_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_11_0
.Lmatch_span_α_11_1:    cmp              ecx, r14d;                           jle   .Lmatch_alternate_ω_1_af
                        mov              dword ptr [rbp + -108], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_1_s0
n3_match_span_β:        mov              r14d, dword ptr [rbp + -108];        jmp   .Lmatch_alternate_ω_1_af
                        .size            n3_match_span_bx, .-n3_match_span_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + PAT$0_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$0:
                        .quad            585462009178
                        .quad            17179869208
                        .quad            0
                        .quad            136
                        .quad            16
                        .quad            8804682956680
                        .quad            17600775978896
                        .quad            8808977924000
                        .quad            8804682956712
                        .quad            8804682956720
                        .quad            8813272891320
                        .quad            8813272891328
                        .quad            8804682956744
                        .quad            17600775978960
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_PAT$0:            .quad            FN__PAT$0
                        .long            112, 1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$1:
PAT$1_α_body:
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
                        lea              rax, [rip + .Lgcmap_PAT$1]
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
                        .type            n12_match_lit_bx, @function
n12_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    PAT$1_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 92;                             jne   PAT$1_ω
                        add              r14d, 1;                             jmp   n13_match_alternate_α
n12_match_lit_β:        sub              r14d, 1;                             jmp   PAT$1_ω
                        .size            n12_match_lit_bx, .-n12_match_lit_bx
                        .type            n13_match_alternate_bx, @function
n13_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_match_alternate_α:  cmp              r14d, r15d;                          jge   .Lmatch_alternate_α_23_17
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        lea              rcx, [rip + .C3]
                        movzx            eax, byte ptr [rcx + rax]
                        test             eax, eax;                            je    .Lmatch_alternate_α_23_17
                        mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_23_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n19_match_any_α
.Lmatch_alternate_α_23_21:
                        lea              rax, [rip + .Lmatch_alternate_α_23_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n14_match_lit_α
.Lmatch_alternate_γ_13_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_23_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_13_as
.Lmatch_alternate_γ_13_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_23_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_13_as
.Lmatch_alternate_α_23_40:
                                                                              jmp   n19_match_any_β
.Lmatch_alternate_α_23_41:
                                                                              jmp   n18_match_any_β
.Lmatch_alternate_γ_13_as:
                                                                              jmp   PAT$1_γ
n13_match_alternate_β:  mov              rax, qword ptr [rbp + -64];          jmp   rax
.Lmatch_alternate_γ_13_af:
.Lmatch_alternate_ω_13_af:
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lmatch_alternate_α_23_19:
.Lmatch_alternate_α_23_17:
                                                                              jmp   n12_match_lit_β
                        .size            n13_match_alternate_bx, .-n13_match_alternate_bx
                        .type            n14_match_lit_bx, @function
n14_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_13_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 117;                            jne   .Lmatch_alternate_ω_13_af
                        add              r14d, 1;                             jmp   n15_match_any_α
n14_match_lit_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_13_af
                        .size            n14_match_lit_bx, .-n14_match_lit_bx
                        .type            n15_match_any_bx, @function
n15_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n14_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0;               je    n14_match_lit_β
                        add              r14d, 1;                             jmp   n16_match_any_α
n15_match_any_β:        sub              r14d, 1;                             jmp   n14_match_lit_β
                        .size            n15_match_any_bx, .-n15_match_any_bx
                        .type            n16_match_any_bx, @function
n16_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n15_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0;               je    n15_match_any_β
                        add              r14d, 1;                             jmp   n17_match_any_α
n16_match_any_β:        sub              r14d, 1;                             jmp   n15_match_any_β
                        .size            n16_match_any_bx, .-n16_match_any_bx
                        .type            n17_match_any_bx, @function
n17_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n16_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0;               je    n16_match_any_β
                        add              r14d, 1;                             jmp   n18_match_any_α
n17_match_any_β:        sub              r14d, 1;                             jmp   n16_match_any_β
                        .size            n17_match_any_bx, .-n17_match_any_bx
                        .type            n18_match_any_bx, @function
n18_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n17_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0;               je    n17_match_any_β
                        add              r14d, 1;                             jmp   .Lmatch_alternate_γ_13_s1
n18_match_any_β:        sub              r14d, 1;                             jmp   n17_match_any_β
                        .size            n18_match_any_bx, .-n18_match_any_bx
                        .type            n19_match_any_bx, @function
n19_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_13_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C5]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_alternate_ω_13_af
                        add              r14d, 1;                             jmp   .Lmatch_alternate_γ_13_s0
n19_match_any_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_13_af
                        .size            n19_match_any_bx, .-n19_match_any_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   n13_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + PAT$1_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$1:
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
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_PAT$1:            .quad            FN__PAT$1
                        .long            80, 1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$2:
PAT$2_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 88
                        lea              rax, [rip + .Lgcmap_PAT$2]
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
                        .type            n36_match_break_bx, @function
n36_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_match_break_α:      sub              rsp, 16
                        lea              rdi, [rip + .C6]
                        movsxd           rcx, r14d
.Lmatch_break_α_38_0:   cmp              ecx, r15d;                           jl    .Lmatch_break_α_38_240
                        add              rsp, 16;                             jmp   PAT$2_ω
.Lmatch_break_α_38_240: movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               jnz   .Lmatch_break_α_38_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_38_0
.Lmatch_break_α_38_1:   mov              dword ptr [rbp + -64], r14d
                        mov              r14d, ecx;                           jmp   PAT$2_γ
n36_match_break_β:      mov              r14d, dword ptr [rbp + -64]
                        add              rsp, 16;                             jmp   PAT$2_ω
                        .size            n36_match_break_bx, .-n36_match_break_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_β:
                                                                              jmp   n36_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + PAT$2_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$2:
                        .quad            379303578970
                        .quad            17179869208
                        .quad            0
                        .quad            88
                        .quad            11
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
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_PAT$2:            .quad            FN__PAT$2
                        .long            32, 1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$3:
PAT$3_α_body:
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
                        lea              rax, [rip + .Lgcmap_PAT$3]
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
                        .type            n39_match_lit_bx, @function
n39_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    PAT$3_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34;                             jne   PAT$3_ω
                        add              r14d, 1;                             jmp   n40_match_defer_α
n39_match_lit_β:        sub              r14d, 1;                             jmp   PAT$3_ω
                        .size            n39_match_lit_bx, .-n39_match_lit_bx
                        .type            n40_match_defer_bx, @function
n40_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_49_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_49_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_49_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_49_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_49_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_49_18
.Lmatch_defer_α_49_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
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
.Lmatch_defer_α_49_4:                                                         jmp   n41_match_arbno_α
.Lmatch_defer_α_49_5:   cmp              r14d, -2;                            je    n44_match_abort_β
                        add              rsp, 16;                             jmp   n39_match_lit_β
.Lmatch_defer_α_49_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
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
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        and              rcx, 255
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
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_49_44:  add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_49_46
.Lmatch_defer_α_49_45:  add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_49_47
.Lmatch_defer_α_49_42:  add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_49_46
.Lmatch_defer_α_49_43:  add              rsp, 16
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
.Lmatch_defer_α_49_142: add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_49_46
.Lmatch_defer_α_49_143: add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_49_47
.Lmatch_defer_α_49_46:  mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_49_2
.Lmatch_defer_α_49_47:  mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_49_2
.Lmatch_defer_α_49_40:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_49_48
.Lmatch_defer_α_49_3:   mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_49_49:  cmp              r14d, -2;                            je    n44_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_49_240
                        add              rsp, 16;                             jmp   n39_match_lit_β
.Lmatch_defer_α_49_240: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_49_6]
                        push             rcx
                        push             rax;                                 jmp   n41_match_arbno_α
.Lmatch_defer_α_49_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n39_match_lit_β
n40_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_49_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_49_12
                                                                              jmp   rax
.Lmatch_defer_β_49_12:                                                        jmp   qword ptr [rsp]
                        .size            n40_match_defer_bx, .-n40_match_defer_bx
                        .type            n41_match_arbno_bx, @function
n41_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_match_arbno_α:      sub              rsp, 48
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   n42_match_lit_α
n41_match_arbno_β:      mov              rax, qword ptr [rbp + -48]
                        mov              r12, qword ptr [rax + 8];            jmp   n45_match_defer_α
.Lmatch_arbno_γ_41_as:  mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n46_match_defer_β
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
                        mov              qword ptr [rbp + -48], rsp;          jmp   n42_match_lit_α
.Lmatch_arbno_γ_41_af:
.Lmatch_arbno_ω_41_af:  mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -48], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_51_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -64], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -56], rax
                        lea              rsp, [rcx + 48];                     jmp   n46_match_defer_β
.Lmatch_arbno_β_51_3:   lea              rsp, [rcx + 48];                     jmp   n40_match_defer_β
                        .size            n41_match_arbno_bx, .-n41_match_arbno_bx
                        .type            n42_match_lit_bx, @function
n42_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n41_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34;                             jne   n41_match_arbno_β
                        add              r14d, 1;                             jmp   n43_match_fence0_α
n42_match_lit_β:        sub              r14d, 1;                             jmp   n41_match_arbno_β
                        .size            n42_match_lit_bx, .-n42_match_lit_bx
                        .type            n43_match_fence0_bx, @function
n43_match_fence0_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_match_fence0_α:     mov              rsp, rbp
                        sub              rsp, 88;                             jmp   PAT$3_γ
n43_match_fence0_β:                                                           jmp   n44_match_abort_β
                        .size            n43_match_fence0_bx, .-n43_match_fence0_bx
                        .type            n44_match_abort_bx, @function
n44_match_abort_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_match_abort_α:      mov              r14d, -2;                            jmp   PAT$3_ω
n44_match_abort_β:      mov              r14d, -2;                            jmp   PAT$3_ω
                        .size            n44_match_abort_bx, .-n44_match_abort_bx
                        .type            n45_match_defer_bx, @function
n45_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_57_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_57_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_57_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_57_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_57_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_57_18
.Lmatch_defer_α_57_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_57_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_57_54:  lea              rdi, [rsp + 0]
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
1:                      test             rax, rax;                            je    .Lmatch_defer_α_57_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_57_16:
.Lmatch_defer_α_57_18:  test             rax, rax;                            jz    .Lmatch_defer_α_57_0
.Lmatch_defer_α_57_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_57_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_57_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_57_4:                                                         jmp   n46_match_defer_α
.Lmatch_defer_α_57_5:   cmp              r14d, -2;                            je    n41_match_arbno_β
                                                                              jmp   .Lmatch_arbno_ω_41_af
.Lmatch_defer_α_57_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_57_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_57_51:  lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_57_2:   test             rax, rax;                            je    .Lmatch_defer_α_57_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_57_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_57_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_57_141
                        lea              rcx, [rip + .Lmatch_defer_α_57_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_57_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_57_42]
                        lea              rdx, [rip + .Lmatch_defer_α_57_43];  jmp   rax
.Lmatch_defer_α_57_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_57_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_57_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_57_44:  add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_57_46
.Lmatch_defer_α_57_45:  add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_57_47
.Lmatch_defer_α_57_42:  add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_57_46
.Lmatch_defer_α_57_43:  add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_57_47
.Lmatch_defer_α_57_141: lea              rcx, [rip + .Lmatch_defer_α_57_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_57_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_57_142]
                        lea              rdx, [rip + .Lmatch_defer_α_57_143]; jmp   rax
.Lmatch_defer_α_57_142: add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_57_46
.Lmatch_defer_α_57_143: add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_57_47
.Lmatch_defer_α_57_46:  mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_57_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_57_52:  lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_57_2
.Lmatch_defer_α_57_47:  mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_57_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_57_53:  lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_57_2
.Lmatch_defer_α_57_40:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_57_48
.Lmatch_defer_α_57_3:   mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_57_49:  cmp              r14d, -2;                            je    n41_match_arbno_β
                        test             eax, eax;                            js    .Lmatch_arbno_ω_41_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_57_6]
                        push             rcx
                        push             rax;                                 jmp   n46_match_defer_α
.Lmatch_defer_α_57_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_arbno_ω_41_af
n45_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_57_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_57_12
                                                                              jmp   rax
.Lmatch_defer_β_57_12:                                                        jmp   qword ptr [rsp]
                        .size            n45_match_defer_bx, .-n45_match_defer_bx
                        .type            n46_match_defer_bx, @function
n46_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_58_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_58_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_58_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_58_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_58_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_58_18
.Lmatch_defer_α_58_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_58_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_58_54:  lea              rdi, [rsp + 0]
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
1:                      test             rax, rax;                            je    .Lmatch_defer_α_58_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_58_16:
.Lmatch_defer_α_58_18:  test             rax, rax;                            jz    .Lmatch_defer_α_58_0
.Lmatch_defer_α_58_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_58_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_58_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_58_4:                                                         jmp   .Lmatch_arbno_γ_41_as
.Lmatch_defer_α_58_5:   cmp              r14d, -2;                            je    n41_match_arbno_β
                                                                              jmp   n45_match_defer_β
.Lmatch_defer_α_58_0:   sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_58_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_58_51:  lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_58_2:   test             rax, rax;                            je    .Lmatch_defer_α_58_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_58_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_58_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_58_141
                        lea              rcx, [rip + .Lmatch_defer_α_58_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_58_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_58_42]
                        lea              rdx, [rip + .Lmatch_defer_α_58_43];  jmp   rax
.Lmatch_defer_α_58_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_58_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_58_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_58_44:  add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_58_46
.Lmatch_defer_α_58_45:  add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_58_47
.Lmatch_defer_α_58_42:  add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_58_46
.Lmatch_defer_α_58_43:  add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_58_47
.Lmatch_defer_α_58_141: lea              rcx, [rip + .Lmatch_defer_α_58_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_58_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_58_142]
                        lea              rdx, [rip + .Lmatch_defer_α_58_143]; jmp   rax
.Lmatch_defer_α_58_142: add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_58_46
.Lmatch_defer_α_58_143: add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_58_47
.Lmatch_defer_α_58_46:  mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_58_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_58_52:  lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_58_2
.Lmatch_defer_α_58_47:  mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_58_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_58_53:  lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_58_2
.Lmatch_defer_α_58_40:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_58_48
.Lmatch_defer_α_58_3:   mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_58_49:  cmp              r14d, -2;                            je    n41_match_arbno_β
                        test             eax, eax;                            js    n45_match_defer_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_58_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_arbno_γ_41_as
.Lmatch_defer_α_58_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n45_match_defer_β
n46_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_58_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_58_12
                                                                              jmp   rax
.Lmatch_defer_β_58_12:                                                        jmp   qword ptr [rsp]
                        .size            n46_match_defer_bx, .-n46_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_β:
                                                                              jmp   n44_match_abort_α
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + PAT$3_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$3:
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
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_PAT$3:            .quad            FN__PAT$3
                        .long            224, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$4:
PAT$4_α_body:
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
                        sub              rsp, 424
                        lea              rax, [rip + .Lgcmap_PAT$4]
                        mov              qword ptr [rbp + -416], rax
                        mov              dword ptr [rbp + -424], 160
                        mov              dword ptr [rbp + -420], 424
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -408], xmm0
                        movups           xmmword ptr [rbp + -392], xmm0
                        movups           xmmword ptr [rbp + -376], xmm0
                        movups           xmmword ptr [rbp + -360], xmm0
                        movups           xmmword ptr [rbp + -344], xmm0
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
                        .type            n59_match_fence1_bx, @function
n59_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_match_fence1_α:     mov              qword ptr [rbp + -368], rsp
                        mov              qword ptr [rbp + -360], r12
                        sub              rsp, 0;                              jmp   n81_match_alternate_α
.Lmatch_fence1_γ_59_as: add              rsp, 0
                        mov              rsp, qword ptr [rbp + -368];         jmp   n60_match_alternate_α
.Lmatch_fence1_γ_59_af:
.Lmatch_fence1_ω_59_af: add              rsp, 0
n59_match_fence1_β:     mov              r12, qword ptr [rbp + -360]
                        mov              rsp, qword ptr [rbp + -368];         jmp   PAT$4_ω
                        .size            n59_match_fence1_bx, .-n59_match_fence1_bx
                        .type            n60_match_alternate_bx, @function
n60_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_match_alternate_α:  cmp              r14d, r15d;                          jge   .Lmatch_alternate_α_87_17
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        lea              rcx, [rip + .C9]
                        movzx            eax, byte ptr [rcx + rax]
                        test             eax, eax;                            je    .Lmatch_alternate_α_87_17
                        mov              dword ptr [rbp + -272], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_87_21]
                        mov              qword ptr [rbp + -256], rax;         jmp   n80_match_lit_α
.Lmatch_alternate_α_87_21:
                        lea              rax, [rip + .Lmatch_alternate_α_87_19]
                        mov              qword ptr [rbp + -256], rax;         jmp   n75_match_any_α
.Lmatch_alternate_γ_60_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_87_40]
                        mov              qword ptr [rbp + -264], rax;         jmp   .Lmatch_alternate_γ_60_as
.Lmatch_alternate_γ_60_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_87_41]
                        mov              qword ptr [rbp + -264], rax;         jmp   .Lmatch_alternate_γ_60_as
.Lmatch_alternate_α_87_40:
                                                                              jmp   n80_match_lit_β
.Lmatch_alternate_α_87_41:
                                                                              jmp   n76_match_fence1_β
.Lmatch_alternate_γ_60_as:
                                                                              jmp   n61_match_fence1_α
n60_match_alternate_β:  mov              rax, qword ptr [rbp + -264];         jmp   rax
.Lmatch_alternate_γ_60_af:
.Lmatch_alternate_ω_60_af:
                        mov              r14d, dword ptr [rbp + -272]
                        mov              rax, qword ptr [rbp + -256];         jmp   rax
.Lmatch_alternate_α_87_19:
.Lmatch_alternate_α_87_17:
                                                                              jmp   n59_match_fence1_β
                        .size            n60_match_alternate_bx, .-n60_match_alternate_bx
                        .type            n61_match_fence1_bx, @function
n61_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_match_fence1_α:     mov              qword ptr [rbp + -176], rsp
                        mov              qword ptr [rbp + -168], r12
                        sub              rsp, 0;                              jmp   n71_match_alternate_α
.Lmatch_fence1_γ_61_as: add              rsp, 0
                        mov              rsp, qword ptr [rbp + -176];         jmp   n62_match_fence1_α
.Lmatch_fence1_γ_61_af:
.Lmatch_fence1_ω_61_af: add              rsp, 0
n61_match_fence1_β:     mov              r12, qword ptr [rbp + -168]
                        mov              rsp, qword ptr [rbp + -176];         jmp   n60_match_alternate_β
                        .size            n61_match_fence1_bx, .-n61_match_fence1_bx
                        .type            n62_match_fence1_bx, @function
n62_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_match_fence1_α:     mov              qword ptr [rbp + -48], rsp
                        mov              qword ptr [rbp + -40], r12
                        sub              rsp, 0;                              jmp   n63_match_alternate_α
.Lmatch_fence1_γ_62_as: add              rsp, 0
                        mov              rsp, qword ptr [rbp + -48];          jmp   PAT$4_γ
.Lmatch_fence1_γ_62_af:
.Lmatch_fence1_ω_62_af: add              rsp, 0
n62_match_fence1_β:     mov              r12, qword ptr [rbp + -40]
                        mov              rsp, qword ptr [rbp + -48];          jmp   n61_match_fence1_β
                        .size            n62_match_fence1_bx, .-n62_match_fence1_bx
                        .type            n63_match_alternate_bx, @function
n63_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_match_alternate_α:  mov              dword ptr [rbp + -80], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_93_21]
                        mov              qword ptr [rbp + -64], rax;          jmp   n65_match_any_α
.Lmatch_alternate_α_93_21:
                        lea              rax, [rip + .Lmatch_alternate_α_93_19]
                        mov              qword ptr [rbp + -64], rax;          jmp   n64_match_lit_α
.Lmatch_alternate_γ_63_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_93_40]
                        mov              qword ptr [rbp + -72], rax;          jmp   .Lmatch_alternate_γ_63_as
.Lmatch_alternate_γ_63_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_93_41]
                        mov              qword ptr [rbp + -72], rax;          jmp   .Lmatch_alternate_γ_63_as
.Lmatch_alternate_α_93_40:
                                                                              jmp   n67_match_span_β
.Lmatch_alternate_α_93_41:
                                                                              jmp   n64_match_lit_β
.Lmatch_alternate_γ_63_as:
                                                                              jmp   .Lmatch_fence1_γ_62_as
n63_match_alternate_β:  mov              rax, qword ptr [rbp + -72];          jmp   rax
.Lmatch_alternate_γ_63_af:
.Lmatch_alternate_ω_63_af:
                        mov              r14d, dword ptr [rbp + -80]
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
.Lmatch_alternate_α_93_19:
                                                                              jmp   .Lmatch_fence1_ω_62_af
                        .size            n63_match_alternate_bx, .-n63_match_alternate_bx
                        .type            n64_match_lit_bx, @function
n64_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_match_lit_α:                                                              jmp   .Lmatch_alternate_γ_63_s1
n64_match_lit_β:                                                              jmp   .Lmatch_alternate_ω_63_af
                        .size            n64_match_lit_bx, .-n64_match_lit_bx
                        .type            n65_match_any_bx, @function
n65_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_63_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 101;                            je    .Lmatch_any_α_97_0
                        cmp              esi, 69;                             je    .Lmatch_any_α_97_0
                                                                              jmp   .Lmatch_alternate_ω_63_af
.Lmatch_any_α_97_0:     add              r14d, 1;                             jmp   n66_match_fence1_α
n65_match_any_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_63_af
                        .size            n65_match_any_bx, .-n65_match_any_bx
                        .type            n66_match_fence1_bx, @function
n66_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_match_fence1_α:     mov              qword ptr [rbp + -128], rsp
                        mov              qword ptr [rbp + -120], r12
                        sub              rsp, 0;                              jmp   n68_match_alternate_α
.Lmatch_fence1_γ_66_as: add              rsp, 0
                        mov              rsp, qword ptr [rbp + -128];         jmp   n67_match_span_α
.Lmatch_fence1_γ_66_af:
.Lmatch_fence1_ω_66_af: add              rsp, 0
n66_match_fence1_β:     mov              r12, qword ptr [rbp + -120]
                        mov              rsp, qword ptr [rbp + -128];         jmp   n65_match_any_β
                        .size            n66_match_fence1_bx, .-n66_match_fence1_bx
                        .type            n67_match_span_bx, @function
n67_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_match_span_α:       sub              rsp, 16
                        lea              rdi, [rip + .C9]
                        movsxd           rcx, r14d
.Lmatch_span_α_101_0:   cmp              ecx, r15d;                           jge   .Lmatch_span_α_101_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_101_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_101_0
.Lmatch_span_α_101_1:   cmp              ecx, r14d;                           jg    .Lmatch_span_α_101_240
                        add              rsp, 16;                             jmp   n66_match_fence1_β
.Lmatch_span_α_101_240: mov              dword ptr [rbp + -108], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_63_s0
n67_match_span_β:       mov              r14d, dword ptr [rbp + -108]
                        add              rsp, 16;                             jmp   n66_match_fence1_β
                        .size            n67_match_span_bx, .-n67_match_span_bx
                        .type            n68_match_alternate_bx, @function
n68_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_match_alternate_α:  mov              dword ptr [rbp + -160], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_103_21]
                        mov              qword ptr [rbp + -144], rax;         jmp   n70_match_any_α
.Lmatch_alternate_α_103_21:
                        lea              rax, [rip + .Lmatch_alternate_α_103_19]
                        mov              qword ptr [rbp + -144], rax;         jmp   n69_match_lit_α
.Lmatch_alternate_γ_68_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_103_40]
                        mov              qword ptr [rbp + -152], rax;         jmp   .Lmatch_alternate_γ_68_as
.Lmatch_alternate_γ_68_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_103_41]
                        mov              qword ptr [rbp + -152], rax;         jmp   .Lmatch_alternate_γ_68_as
.Lmatch_alternate_α_103_40:
                                                                              jmp   n70_match_any_β
.Lmatch_alternate_α_103_41:
                                                                              jmp   n69_match_lit_β
.Lmatch_alternate_γ_68_as:
                                                                              jmp   .Lmatch_fence1_γ_66_as
n68_match_alternate_β:  mov              rax, qword ptr [rbp + -152];         jmp   rax
.Lmatch_alternate_γ_68_af:
.Lmatch_alternate_ω_68_af:
                        mov              r14d, dword ptr [rbp + -160]
                        mov              rax, qword ptr [rbp + -144];         jmp   rax
.Lmatch_alternate_α_103_19:
                                                                              jmp   .Lmatch_fence1_ω_66_af
                        .size            n68_match_alternate_bx, .-n68_match_alternate_bx
                        .type            n69_match_lit_bx, @function
n69_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_match_lit_α:                                                              jmp   .Lmatch_alternate_γ_68_s1
n69_match_lit_β:                                                              jmp   .Lmatch_alternate_ω_68_af
                        .size            n69_match_lit_bx, .-n69_match_lit_bx
                        .type            n70_match_any_bx, @function
n70_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_68_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .Lmatch_any_α_107_0
                        cmp              esi, 45;                             je    .Lmatch_any_α_107_0
                                                                              jmp   .Lmatch_alternate_ω_68_af
.Lmatch_any_α_107_0:    add              r14d, 1;                             jmp   .Lmatch_alternate_γ_68_s0
n70_match_any_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_68_af
                        .size            n70_match_any_bx, .-n70_match_any_bx
                        .type            n71_match_alternate_bx, @function
n71_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_match_alternate_α:  mov              dword ptr [rbp + -208], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_109_21]
                        mov              qword ptr [rbp + -192], rax;         jmp   n73_match_lit_α
.Lmatch_alternate_α_109_21:
                        lea              rax, [rip + .Lmatch_alternate_α_109_19]
                        mov              qword ptr [rbp + -192], rax;         jmp   n72_match_lit_α
.Lmatch_alternate_γ_71_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_109_40]
                        mov              qword ptr [rbp + -200], rax;         jmp   .Lmatch_alternate_γ_71_as
.Lmatch_alternate_γ_71_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_109_41]
                        mov              qword ptr [rbp + -200], rax;         jmp   .Lmatch_alternate_γ_71_as
.Lmatch_alternate_α_109_40:
                                                                              jmp   n74_match_span_β
.Lmatch_alternate_α_109_41:
                                                                              jmp   n72_match_lit_β
.Lmatch_alternate_γ_71_as:
                                                                              jmp   .Lmatch_fence1_γ_61_as
n71_match_alternate_β:  mov              rax, qword ptr [rbp + -200];         jmp   rax
.Lmatch_alternate_γ_71_af:
.Lmatch_alternate_ω_71_af:
                        mov              r14d, dword ptr [rbp + -208]
                        mov              rax, qword ptr [rbp + -192];         jmp   rax
.Lmatch_alternate_α_109_19:
                                                                              jmp   .Lmatch_fence1_ω_61_af
                        .size            n71_match_alternate_bx, .-n71_match_alternate_bx
                        .type            n72_match_lit_bx, @function
n72_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_match_lit_α:                                                              jmp   .Lmatch_alternate_γ_71_s1
n72_match_lit_β:                                                              jmp   .Lmatch_alternate_ω_71_af
                        .size            n72_match_lit_bx, .-n72_match_lit_bx
                        .type            n73_match_lit_bx, @function
n73_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_71_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 46;                             jne   .Lmatch_alternate_ω_71_af
                        add              r14d, 1;                             jmp   n74_match_span_α
n73_match_lit_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_71_af
                        .size            n73_match_lit_bx, .-n73_match_lit_bx
                        .type            n74_match_span_bx, @function
n74_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_match_span_α:       lea              rdi, [rip + .C9]
                        movsxd           rcx, r14d
.Lmatch_span_α_115_0:   cmp              ecx, r15d;                           jge   .Lmatch_span_α_115_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_115_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_115_0
.Lmatch_span_α_115_1:   cmp              ecx, r14d;                           jle   n73_match_lit_β
                        mov              dword ptr [rbp + -236], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_71_s0
n74_match_span_β:       mov              r14d, dword ptr [rbp + -236];        jmp   n73_match_lit_β
                        .size            n74_match_span_bx, .-n74_match_span_bx
                        .type            n75_match_any_bx, @function
n75_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_60_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C10]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_alternate_ω_60_af
                        add              r14d, 1;                             jmp   n76_match_fence1_α
n75_match_any_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_60_af
                        .size            n75_match_any_bx, .-n75_match_any_bx
                        .type            n76_match_fence1_bx, @function
n76_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_match_fence1_α:     mov              qword ptr [rbp + -288], rsp
                        mov              qword ptr [rbp + -280], r12
                        sub              rsp, 0;                              jmp   n77_match_alternate_α
.Lmatch_fence1_γ_76_as: add              rsp, 0
                        mov              rsp, qword ptr [rbp + -288];         jmp   .Lmatch_alternate_γ_60_s1
.Lmatch_fence1_γ_76_af:
.Lmatch_fence1_ω_76_af: add              rsp, 0
n76_match_fence1_β:     mov              r12, qword ptr [rbp + -280]
                        mov              rsp, qword ptr [rbp + -288];         jmp   n75_match_any_β
                        .size            n76_match_fence1_bx, .-n76_match_fence1_bx
                        .type            n77_match_alternate_bx, @function
n77_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_match_alternate_α:  mov              dword ptr [rbp + -320], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_121_21]
                        mov              qword ptr [rbp + -304], rax;         jmp   n79_match_span_α
.Lmatch_alternate_α_121_21:
                        lea              rax, [rip + .Lmatch_alternate_α_121_19]
                        mov              qword ptr [rbp + -304], rax;         jmp   n78_match_lit_α
.Lmatch_alternate_γ_77_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_121_40]
                        mov              qword ptr [rbp + -312], rax;         jmp   .Lmatch_alternate_γ_77_as
.Lmatch_alternate_γ_77_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_121_41]
                        mov              qword ptr [rbp + -312], rax;         jmp   .Lmatch_alternate_γ_77_as
.Lmatch_alternate_α_121_40:
                                                                              jmp   n79_match_span_β
.Lmatch_alternate_α_121_41:
                                                                              jmp   n78_match_lit_β
.Lmatch_alternate_γ_77_as:
                                                                              jmp   .Lmatch_fence1_γ_76_as
n77_match_alternate_β:  mov              rax, qword ptr [rbp + -312];         jmp   rax
.Lmatch_alternate_γ_77_af:
.Lmatch_alternate_ω_77_af:
                        mov              r14d, dword ptr [rbp + -320]
                        mov              rax, qword ptr [rbp + -304];         jmp   rax
.Lmatch_alternate_α_121_19:
                                                                              jmp   .Lmatch_fence1_ω_76_af
                        .size            n77_match_alternate_bx, .-n77_match_alternate_bx
                        .type            n78_match_lit_bx, @function
n78_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_match_lit_α:                                                              jmp   .Lmatch_alternate_γ_77_s1
n78_match_lit_β:                                                              jmp   .Lmatch_alternate_ω_77_af
                        .size            n78_match_lit_bx, .-n78_match_lit_bx
                        .type            n79_match_span_bx, @function
n79_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_match_span_α:       lea              rdi, [rip + .C9]
                        movsxd           rcx, r14d
.Lmatch_span_α_125_0:   cmp              ecx, r15d;                           jge   .Lmatch_span_α_125_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_125_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_125_0
.Lmatch_span_α_125_1:   cmp              ecx, r14d;                           jle   .Lmatch_alternate_ω_77_af
                        mov              dword ptr [rbp + -348], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_77_s0
n79_match_span_β:       mov              r14d, dword ptr [rbp + -348];        jmp   .Lmatch_alternate_ω_77_af
                        .size            n79_match_span_bx, .-n79_match_span_bx
                        .type            n80_match_lit_bx, @function
n80_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_60_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 48;                             jne   .Lmatch_alternate_ω_60_af
                        add              r14d, 1;                             jmp   .Lmatch_alternate_γ_60_s0
n80_match_lit_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_60_af
                        .size            n80_match_lit_bx, .-n80_match_lit_bx
                        .type            n81_match_alternate_bx, @function
n81_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_match_alternate_α:  mov              dword ptr [rbp + -400], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_129_21]
                        mov              qword ptr [rbp + -384], rax;         jmp   n83_match_lit_α
.Lmatch_alternate_α_129_21:
                        lea              rax, [rip + .Lmatch_alternate_α_129_19]
                        mov              qword ptr [rbp + -384], rax;         jmp   n82_match_lit_α
.Lmatch_alternate_γ_81_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_129_40]
                        mov              qword ptr [rbp + -392], rax;         jmp   .Lmatch_alternate_γ_81_as
.Lmatch_alternate_γ_81_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_129_41]
                        mov              qword ptr [rbp + -392], rax;         jmp   .Lmatch_alternate_γ_81_as
.Lmatch_alternate_α_129_40:
                                                                              jmp   n83_match_lit_β
.Lmatch_alternate_α_129_41:
                                                                              jmp   n82_match_lit_β
.Lmatch_alternate_γ_81_as:
                                                                              jmp   .Lmatch_fence1_γ_59_as
n81_match_alternate_β:  mov              rax, qword ptr [rbp + -392];         jmp   rax
.Lmatch_alternate_γ_81_af:
.Lmatch_alternate_ω_81_af:
                        mov              r14d, dword ptr [rbp + -400]
                        mov              rax, qword ptr [rbp + -384];         jmp   rax
.Lmatch_alternate_α_129_19:
                                                                              jmp   .Lmatch_fence1_ω_59_af
                        .size            n81_match_alternate_bx, .-n81_match_alternate_bx
                        .type            n82_match_lit_bx, @function
n82_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_match_lit_α:                                                              jmp   .Lmatch_alternate_γ_81_s1
n82_match_lit_β:                                                              jmp   .Lmatch_alternate_ω_81_af
                        .size            n82_match_lit_bx, .-n82_match_lit_bx
                        .type            n83_match_lit_bx, @function
n83_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_81_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   .Lmatch_alternate_ω_81_af
                        add              r14d, 1;                             jmp   .Lmatch_alternate_γ_81_s0
n83_match_lit_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_81_af
                        .size            n83_match_lit_bx, .-n83_match_lit_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_β:
                                                                              jmp   n62_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + PAT$4_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$4:
                        .quad            1822412590426
                        .quad            17179869208
                        .quad            0
                        .quad            424
                        .quad            46
                        .quad            8804682956392
                        .quad            8804682956400
                        .quad            8813272891000
                        .quad            8813272891008
                        .quad            8804682956424
                        .quad            17600775978640
                        .quad            17600775978656
                        .quad            8808977923760
                        .quad            8804682956472
                        .quad            8804682956480
                        .quad            8813272891080
                        .quad            8813272891088
                        .quad            8804682956504
                        .quad            17600775978720
                        .quad            8804682956528
                        .quad            8813272891128
                        .quad            8813272891136
                        .quad            8804682956552
                        .quad            17600775978768
                        .quad            8808977923872
                        .quad            8804682956584
                        .quad            8804682956592
                        .quad            8813272891192
                        .quad            8813272891200
                        .quad            8804682956616
                        .quad            17600775978832
                        .quad            8804682956640
                        .quad            8813272891240
                        .quad            8813272891248
                        .quad            8804682956664
                        .quad            17600775978880
                        .quad            17600775978896
                        .quad            8808977924000
                        .quad            8804682956712
                        .quad            8804682956720
                        .quad            8813272891320
                        .quad            8813272891328
                        .quad            8804682956744
                        .quad            17600775978960
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_PAT$4:            .quad            FN__PAT$4
                        .long            352, 1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$5:
PAT$5_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 56
                        lea              rax, [rip + .Lgcmap_PAT$5]
                        mov              qword ptr [rbp + -48], rax
                        mov              dword ptr [rbp + -56], 160
                        mov              dword ptr [rbp + -52], 56
                        xorps            xmm0, xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n134_match_defer_bx, @function
n134_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_match_defer_α:     sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_139_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_139_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_139_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_139_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_139_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_139_18
.Lmatch_defer_α_139_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_139_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_139_54: lea              rdi, [rsp + 0]
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
1:                      test             rax, rax;                            je    .Lmatch_defer_α_139_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_139_16:
.Lmatch_defer_α_139_18: test             rax, rax;                            jz    .Lmatch_defer_α_139_0
.Lmatch_defer_α_139_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_139_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_139_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_139_4:                                                        jmp   n135_match_defer_α
.Lmatch_defer_α_139_5:  add              rsp, 16;                             jmp   PAT$5_ω
.Lmatch_defer_α_139_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_139_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_139_51: lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_139_2:  test             rax, rax;                            je    .Lmatch_defer_α_139_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_139_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_139_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_139_141
                        lea              rcx, [rip + .Lmatch_defer_α_139_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_139_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_139_42]
                        lea              rdx, [rip + .Lmatch_defer_α_139_43]; jmp   rax
.Lmatch_defer_α_139_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_139_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_139_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_139_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_139_46
.Lmatch_defer_α_139_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_139_47
.Lmatch_defer_α_139_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_139_46
.Lmatch_defer_α_139_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_139_47
.Lmatch_defer_α_139_141:
                        lea              rcx, [rip + .Lmatch_defer_α_139_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_139_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_139_142]
                        lea              rdx, [rip + .Lmatch_defer_α_139_143]
                                                                              jmp   rax
.Lmatch_defer_α_139_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_139_46
.Lmatch_defer_α_139_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_139_47
.Lmatch_defer_α_139_46: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_139_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_139_52: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_139_2
.Lmatch_defer_α_139_47: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_139_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_139_53: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_139_2
.Lmatch_defer_α_139_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_139_48
.Lmatch_defer_α_139_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_139_49: test             eax, eax;                            jns   .Lmatch_defer_α_139_240
                        add              rsp, 16;                             jmp   PAT$5_ω
.Lmatch_defer_α_139_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_139_6]
                        push             rcx
                        push             rax;                                 jmp   n135_match_defer_α
.Lmatch_defer_α_139_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$5_ω
n134_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_139_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_139_12
                                                                              jmp   rax
.Lmatch_defer_β_139_12:                                                       jmp   qword ptr [rsp]
                        .size            n134_match_defer_bx, .-n134_match_defer_bx
                        .type            n135_match_defer_bx, @function
n135_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_match_defer_α:     sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_140_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_140_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_140_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_140_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_140_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_140_18
.Lmatch_defer_α_140_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_140_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_140_54: lea              rdi, [rsp + 0]
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
1:                      test             rax, rax;                            je    .Lmatch_defer_α_140_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_140_16:
.Lmatch_defer_α_140_18: test             rax, rax;                            jz    .Lmatch_defer_α_140_0
.Lmatch_defer_α_140_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_140_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_140_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_140_4:                                                        jmp   n136_match_defer_α
.Lmatch_defer_α_140_5:  add              rsp, 16;                             jmp   n134_match_defer_β
.Lmatch_defer_α_140_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_140_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_140_51: lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_140_2:  test             rax, rax;                            je    .Lmatch_defer_α_140_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_140_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_140_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_140_141
                        lea              rcx, [rip + .Lmatch_defer_α_140_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_140_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_140_42]
                        lea              rdx, [rip + .Lmatch_defer_α_140_43]; jmp   rax
.Lmatch_defer_α_140_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_140_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_140_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_140_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_140_46
.Lmatch_defer_α_140_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_140_47
.Lmatch_defer_α_140_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_140_46
.Lmatch_defer_α_140_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_140_47
.Lmatch_defer_α_140_141:
                        lea              rcx, [rip + .Lmatch_defer_α_140_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_140_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_140_142]
                        lea              rdx, [rip + .Lmatch_defer_α_140_143]
                                                                              jmp   rax
.Lmatch_defer_α_140_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_140_46
.Lmatch_defer_α_140_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_140_47
.Lmatch_defer_α_140_46: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_140_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_140_52: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_140_2
.Lmatch_defer_α_140_47: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_140_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_140_53: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_140_2
.Lmatch_defer_α_140_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_140_48
.Lmatch_defer_α_140_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_140_49: test             eax, eax;                            jns   .Lmatch_defer_α_140_240
                        add              rsp, 16;                             jmp   n134_match_defer_β
.Lmatch_defer_α_140_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_140_6]
                        push             rcx
                        push             rax;                                 jmp   n136_match_defer_α
.Lmatch_defer_α_140_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n134_match_defer_β
n135_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_140_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_140_12
                                                                              jmp   rax
.Lmatch_defer_β_140_12:                                                       jmp   qword ptr [rsp]
                        .size            n135_match_defer_bx, .-n135_match_defer_bx
                        .type            n136_match_defer_bx, @function
n136_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_match_defer_α:     sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_141_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_141_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_141_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_141_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_141_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_141_18
.Lmatch_defer_α_141_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
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
.Lmatch_defer_α_141_4:                                                        jmp   n137_match_lit_α
.Lmatch_defer_α_141_5:  add              rsp, 16;                             jmp   n135_match_defer_β
.Lmatch_defer_α_141_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
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
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        and              rcx, 255
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
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_141_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_141_46
.Lmatch_defer_α_141_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_141_47
.Lmatch_defer_α_141_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_141_46
.Lmatch_defer_α_141_43: add              rsp, 16
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
                        add              rsp, 0
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
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_141_47
.Lmatch_defer_α_141_46: mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_141_2
.Lmatch_defer_α_141_47: mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_141_2
.Lmatch_defer_α_141_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_141_48
.Lmatch_defer_α_141_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_141_49: test             eax, eax;                            jns   .Lmatch_defer_α_141_240
                        add              rsp, 16;                             jmp   n135_match_defer_β
.Lmatch_defer_α_141_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_141_6]
                        push             rcx
                        push             rax;                                 jmp   n137_match_lit_α
.Lmatch_defer_α_141_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n135_match_defer_β
n136_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_141_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_141_12
                                                                              jmp   rax
.Lmatch_defer_β_141_12:                                                       jmp   qword ptr [rsp]
                        .size            n136_match_defer_bx, .-n136_match_defer_bx
                        .type            n137_match_lit_bx, @function
n137_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n136_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 58;                             jne   n136_match_defer_β
                        add              r14d, 1;                             jmp   n138_match_defer_α
n137_match_lit_β:       sub              r14d, 1;                             jmp   n136_match_defer_β
                        .size            n137_match_lit_bx, .-n137_match_lit_bx
                        .type            n138_match_defer_bx, @function
n138_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # jelement
                        mov              rdx, qword ptr [r9 + 152]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_144_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_144_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_match_defer.cpp:119
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
1:                      mov              rdx, qword ptr [r9 + 152];           jmp   .Lmatch_defer_α_144_10
.Lmatch_defer_α_144_9:  xor              eax, eax
.Lmatch_defer_α_144_10: test             rax, rax;                            jz    .Lmatch_defer_α_144_0
.Lmatch_defer_α_144_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_144_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_144_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_144_4:                                                        jmp   PAT$5_γ
.Lmatch_defer_α_144_5:  add              rsp, 16;                             jmp   n137_match_lit_β
.Lmatch_defer_α_144_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [r9 + 144]                      # jelement
                        xor              esi, esi
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open_cell@PLT
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
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        and              rcx, 255
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
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_144_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_144_46
.Lmatch_defer_α_144_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_144_47
.Lmatch_defer_α_144_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_144_46
.Lmatch_defer_α_144_43: add              rsp, 16
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
                        add              rsp, 0
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
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_144_47
.Lmatch_defer_α_144_46: mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_144_2
.Lmatch_defer_α_144_47: mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_144_2
.Lmatch_defer_α_144_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_144_48
.Lmatch_defer_α_144_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_144_49: test             eax, eax;                            jns   .Lmatch_defer_α_144_240
                        add              rsp, 16;                             jmp   n137_match_lit_β
.Lmatch_defer_α_144_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_144_6]
                        push             rcx
                        push             rax;                                 jmp   PAT$5_γ
.Lmatch_defer_α_144_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n137_match_lit_β
n138_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_144_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_144_12
                                                                              jmp   rax
.Lmatch_defer_β_144_12:                                                       jmp   qword ptr [rsp]
                        .size            n138_match_defer_bx, .-n138_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_β:
                                                                              jmp   n138_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + PAT$5_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$5:
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
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_PAT$5:            .quad            FN__PAT$5
                        .long            128, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$6:
PAT$6_α_body:
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
                        sub              rsp, 168
                        lea              rax, [rip + .Lgcmap_PAT$6]
                        mov              qword ptr [rbp + -160], rax
                        mov              dword ptr [rbp + -168], 160
                        mov              dword ptr [rbp + -164], 168
                        xorps            xmm0, xmm0
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
                        .type            n145_match_lit_bx, @function
n145_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    PAT$6_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 123;                            jne   PAT$6_ω
                        add              r14d, 1;                             jmp   n146_match_alternate_α
n145_match_lit_β:       sub              r14d, 1;                             jmp   PAT$6_ω
                        .size            n145_match_lit_bx, .-n145_match_lit_bx
                        .type            n146_match_alternate_bx, @function
n146_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_match_alternate_α: mov              dword ptr [rbp + -152], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_157_21]
                        mov              qword ptr [rbp + -136], rax;         jmp   n149_match_defer_α
.Lmatch_alternate_α_157_21:
                        lea              rax, [rip + .Lmatch_alternate_α_157_19]
                        mov              qword ptr [rbp + -136], rax;         jmp   n148_match_defer_α
.Lmatch_alternate_γ_146_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_157_40]
                        mov              qword ptr [rbp + -144], rax;         jmp   .Lmatch_alternate_γ_146_as
.Lmatch_alternate_γ_146_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_157_41]
                        mov              qword ptr [rbp + -144], rax;         jmp   .Lmatch_alternate_γ_146_as
.Lmatch_alternate_α_157_40:
                                                                              jmp   n150_match_arbno_β
.Lmatch_alternate_α_157_41:
                                                                              jmp   n148_match_defer_β
.Lmatch_alternate_γ_146_as:
                                                                              jmp   n147_match_lit_α
n146_match_alternate_β: mov              rax, qword ptr [rbp + -144];         jmp   rax
.Lmatch_alternate_γ_146_af:
.Lmatch_alternate_ω_146_af:
                        mov              r14d, dword ptr [rbp + -152]
                        mov              rax, qword ptr [rbp + -136];         jmp   rax
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
                        cmp              eax, 125;                            jne   n146_match_alternate_β
                        add              r14d, 1;                             jmp   PAT$6_γ
n147_match_lit_β:       sub              r14d, 1;                             jmp   n146_match_alternate_β
                        .size            n147_match_lit_bx, .-n147_match_lit_bx
                        .type            n148_match_defer_bx, @function
n148_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_160_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_160_17
                        cmp              qword ptr [rdi + 40], 4;             jl    .Lmatch_defer_α_160_17
                        mov              rax, qword ptr [rsi + 48]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_160_17
                        mov              rdx, qword ptr [rsi + 56]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_160_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_160_18
.Lmatch_defer_α_160_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
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
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        and              rcx, 255
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
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_160_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_160_46
.Lmatch_defer_α_160_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_160_47
.Lmatch_defer_α_160_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_160_46
.Lmatch_defer_α_160_43: add              rsp, 16
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
                        add              rsp, 0
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
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_160_47
.Lmatch_defer_α_160_46: mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_160_2
.Lmatch_defer_α_160_47: mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_160_2
.Lmatch_defer_α_160_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_160_48
.Lmatch_defer_α_160_3:  mov              r13, qword ptr [rsp + 8]
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
n149_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_161_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_161_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_161_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_161_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_161_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_161_18
.Lmatch_defer_α_161_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_161_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_161_54: lea              rdi, [rsp + 0]
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
1:                      test             rax, rax;                            je    .Lmatch_defer_α_161_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_161_16:
.Lmatch_defer_α_161_18: test             rax, rax;                            jz    .Lmatch_defer_α_161_0
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
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
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
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        and              rcx, 255
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
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_161_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_161_46
.Lmatch_defer_α_161_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_161_47
.Lmatch_defer_α_161_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_161_46
.Lmatch_defer_α_161_43: add              rsp, 16
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
                        add              rsp, 0
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
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_161_47
.Lmatch_defer_α_161_46: mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_161_2
.Lmatch_defer_α_161_47: mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_161_2
.Lmatch_defer_α_161_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_161_48
.Lmatch_defer_α_161_3:  mov              r13, qword ptr [rsp + 8]
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
                        mov              rax, qword ptr [rbp + -80]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -80], rsp;          jmp   .Lmatch_alternate_γ_146_s0
n150_match_arbno_β:     mov              rax, qword ptr [rbp + -80]
                        mov              r12, qword ptr [rax + 8];            jmp   n151_match_defer_α
.Lmatch_arbno_γ_150_as: mov              rcx, qword ptr [rbp + -80]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n153_match_defer_β
                        sub              rsp, 64
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              rax, qword ptr [rbp + -112]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rbp + -104]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rbp + -96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rbp + -88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [rbp + -80], rsp;          jmp   .Lmatch_alternate_γ_146_s0
.Lmatch_arbno_γ_150_af:
.Lmatch_arbno_ω_150_af: mov              rcx, qword ptr [rbp + -80]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -80], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_163_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [rcx + 48]
                        mov              qword ptr [rbp + -96], rax
                        mov              rax, qword ptr [rcx + 56]
                        mov              qword ptr [rbp + -88], rax
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
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_164_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_164_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_164_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_164_18
.Lmatch_defer_α_164_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                                                                              jmp   .Lmatch_arbno_ω_150_af
.Lmatch_defer_α_164_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
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
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        and              rcx, 255
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
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_164_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_164_46
.Lmatch_defer_α_164_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_164_47
.Lmatch_defer_α_164_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_164_46
.Lmatch_defer_α_164_43: add              rsp, 16
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
                        add              rsp, 0
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
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_164_47
.Lmatch_defer_α_164_46: mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_164_2
.Lmatch_defer_α_164_47: mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_164_2
.Lmatch_defer_α_164_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_164_48
.Lmatch_defer_α_164_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_164_49: cmp              r14d, -2;                            je    n150_match_arbno_β
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
n153_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_167_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_167_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_167_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_167_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_167_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_167_18
.Lmatch_defer_α_167_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_167_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_167_54: lea              rdi, [rsp + 0]
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
1:                      test             rax, rax;                            je    .Lmatch_defer_α_167_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_167_16:
.Lmatch_defer_α_167_18: test             rax, rax;                            jz    .Lmatch_defer_α_167_0
.Lmatch_defer_α_167_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_167_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_167_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_167_4:                                                        jmp   .Lmatch_arbno_γ_150_as
.Lmatch_defer_α_167_5:  cmp              r14d, -2;                            je    n150_match_arbno_β
                                                                              jmp   n152_match_lit_β
.Lmatch_defer_α_167_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
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
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        and              rcx, 255
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
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_167_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_167_46
.Lmatch_defer_α_167_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_167_47
.Lmatch_defer_α_167_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_167_46
.Lmatch_defer_α_167_43: add              rsp, 16
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
                        add              rsp, 0
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
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_167_47
.Lmatch_defer_α_167_46: mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_167_2
.Lmatch_defer_α_167_47: mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_167_2
.Lmatch_defer_α_167_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_167_48
.Lmatch_defer_α_167_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_167_49: cmp              r14d, -2;                            je    n150_match_arbno_β
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
PAT$6_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_β:
                                                                              jmp   n147_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + PAT$6_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$6:
                        .quad            722900962650
                        .quad            17179869208
                        .quad            0
                        .quad            168
                        .quad            17
                        .quad            8804682956648
                        .quad            8813272891248
                        .quad            8813272891256
                        .quad            8804682956672
                        .quad            8804682956680
                        .quad            17596481011600
                        .quad            17596481011616
                        .quad            17600775978928
                        .quad            17596481011648
                        .quad            17596481011664
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_PAT$6:            .quad            FN__PAT$6
                        .long            256, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$7:
PAT$7_α_body:
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
                        sub              rsp, 168
                        lea              rax, [rip + .Lgcmap_PAT$7]
                        mov              qword ptr [rbp + -160], rax
                        mov              dword ptr [rbp + -168], 160
                        mov              dword ptr [rbp + -164], 168
                        xorps            xmm0, xmm0
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
                        .type            n168_match_lit_bx, @function
n168_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    PAT$7_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 91;                             jne   PAT$7_ω
                        add              r14d, 1;                             jmp   n169_match_alternate_α
n168_match_lit_β:       sub              r14d, 1;                             jmp   PAT$7_ω
                        .size            n168_match_lit_bx, .-n168_match_lit_bx
                        .type            n169_match_alternate_bx, @function
n169_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_match_alternate_α: mov              dword ptr [rbp + -152], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_180_21]
                        mov              qword ptr [rbp + -136], rax;         jmp   n172_match_defer_α
.Lmatch_alternate_α_180_21:
                        lea              rax, [rip + .Lmatch_alternate_α_180_19]
                        mov              qword ptr [rbp + -136], rax;         jmp   n171_match_defer_α
.Lmatch_alternate_γ_169_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_180_40]
                        mov              qword ptr [rbp + -144], rax;         jmp   .Lmatch_alternate_γ_169_as
.Lmatch_alternate_γ_169_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_180_41]
                        mov              qword ptr [rbp + -144], rax;         jmp   .Lmatch_alternate_γ_169_as
.Lmatch_alternate_α_180_40:
                                                                              jmp   n173_match_arbno_β
.Lmatch_alternate_α_180_41:
                                                                              jmp   n171_match_defer_β
.Lmatch_alternate_γ_169_as:
                                                                              jmp   n170_match_lit_α
n169_match_alternate_β: mov              rax, qword ptr [rbp + -144];         jmp   rax
.Lmatch_alternate_γ_169_af:
.Lmatch_alternate_ω_169_af:
                        mov              r14d, dword ptr [rbp + -152]
                        mov              rax, qword ptr [rbp + -136];         jmp   rax
.Lmatch_alternate_α_180_19:
                                                                              jmp   n168_match_lit_β
                        .size            n169_match_alternate_bx, .-n169_match_alternate_bx
                        .type            n170_match_lit_bx, @function
n170_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n169_match_alternate_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 93;                             jne   n169_match_alternate_β
                        add              r14d, 1;                             jmp   PAT$7_γ
n170_match_lit_β:       sub              r14d, 1;                             jmp   n169_match_alternate_β
                        .size            n170_match_lit_bx, .-n170_match_lit_bx
                        .type            n171_match_defer_bx, @function
n171_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_183_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_183_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_183_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_183_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_183_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_183_18
.Lmatch_defer_α_183_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_183_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_183_54: lea              rdi, [rsp + 0]
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
1:                      test             rax, rax;                            je    .Lmatch_defer_α_183_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_183_16:
.Lmatch_defer_α_183_18: test             rax, rax;                            jz    .Lmatch_defer_α_183_0
.Lmatch_defer_α_183_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_183_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_183_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_183_4:                                                        jmp   .Lmatch_alternate_γ_169_s1
.Lmatch_defer_α_183_5:                                                        jmp   .Lmatch_alternate_ω_169_af
.Lmatch_defer_α_183_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_183_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_183_51: lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_183_2:  test             rax, rax;                            je    .Lmatch_defer_α_183_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_183_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_183_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_183_141
                        lea              rcx, [rip + .Lmatch_defer_α_183_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_183_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_183_42]
                        lea              rdx, [rip + .Lmatch_defer_α_183_43]; jmp   rax
.Lmatch_defer_α_183_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_183_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_183_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_183_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_183_46
.Lmatch_defer_α_183_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_183_47
.Lmatch_defer_α_183_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_183_46
.Lmatch_defer_α_183_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_183_47
.Lmatch_defer_α_183_141:
                        lea              rcx, [rip + .Lmatch_defer_α_183_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_183_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_183_142]
                        lea              rdx, [rip + .Lmatch_defer_α_183_143]
                                                                              jmp   rax
.Lmatch_defer_α_183_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_183_46
.Lmatch_defer_α_183_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_183_47
.Lmatch_defer_α_183_46: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_183_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_183_52: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_183_2
.Lmatch_defer_α_183_47: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_183_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_183_53: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_183_2
.Lmatch_defer_α_183_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_183_48
.Lmatch_defer_α_183_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_183_49: test             eax, eax;                            js    .Lmatch_alternate_ω_169_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_183_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_169_s1
.Lmatch_defer_α_183_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_169_af
n171_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_183_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_183_12
                                                                              jmp   rax
.Lmatch_defer_β_183_12:                                                       jmp   qword ptr [rsp]
                        .size            n171_match_defer_bx, .-n171_match_defer_bx
                        .type            n172_match_defer_bx, @function
n172_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_match_defer_α:     mov              rax, qword ptr [r9 + 144]            # jelement
                        mov              rdx, qword ptr [r9 + 152]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_184_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_184_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_match_defer.cpp:119
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
1:                      mov              rdx, qword ptr [r9 + 152];           jmp   .Lmatch_defer_α_184_10
.Lmatch_defer_α_184_9:  xor              eax, eax
.Lmatch_defer_α_184_10: test             rax, rax;                            jz    .Lmatch_defer_α_184_0
.Lmatch_defer_α_184_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_184_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_184_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_184_4:                                                        jmp   n173_match_arbno_α
.Lmatch_defer_α_184_5:                                                        jmp   .Lmatch_alternate_ω_169_af
.Lmatch_defer_α_184_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [r9 + 144]                      # jelement
                        xor              esi, esi
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open_cell@PLT
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
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        and              rcx, 255
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
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_184_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_184_46
.Lmatch_defer_α_184_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_184_47
.Lmatch_defer_α_184_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_184_46
.Lmatch_defer_α_184_43: add              rsp, 16
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
                        add              rsp, 0
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
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_184_47
.Lmatch_defer_α_184_46: mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_184_2
.Lmatch_defer_α_184_47: mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_184_2
.Lmatch_defer_α_184_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_184_48
.Lmatch_defer_α_184_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_184_49: test             eax, eax;                            js    .Lmatch_alternate_ω_169_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_184_6]
                        push             rcx
                        push             rax;                                 jmp   n173_match_arbno_α
.Lmatch_defer_α_184_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_169_af
n172_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_184_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_184_12
                                                                              jmp   rax
.Lmatch_defer_β_184_12:                                                       jmp   qword ptr [rsp]
                        .size            n172_match_defer_bx, .-n172_match_defer_bx
                        .type            n173_match_arbno_bx, @function
n173_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_match_arbno_α:     sub              rsp, 64
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -80]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -80], rsp;          jmp   .Lmatch_alternate_γ_169_s0
n173_match_arbno_β:     mov              rax, qword ptr [rbp + -80]
                        mov              r12, qword ptr [rax + 8];            jmp   n174_match_defer_α
.Lmatch_arbno_γ_173_as: mov              rcx, qword ptr [rbp + -80]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n176_match_defer_β
                        sub              rsp, 64
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              rax, qword ptr [rbp + -112]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rbp + -104]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rbp + -96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rbp + -88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [rbp + -80], rsp;          jmp   .Lmatch_alternate_γ_169_s0
.Lmatch_arbno_γ_173_af:
.Lmatch_arbno_ω_173_af: mov              rcx, qword ptr [rbp + -80]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -80], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_186_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [rcx + 48]
                        mov              qword ptr [rbp + -96], rax
                        mov              rax, qword ptr [rcx + 56]
                        mov              qword ptr [rbp + -88], rax
                        lea              rsp, [rcx + 64];                     jmp   n176_match_defer_β
.Lmatch_arbno_β_186_3:  lea              rsp, [rcx + 64];                     jmp   n172_match_defer_β
                        .size            n173_match_arbno_bx, .-n173_match_arbno_bx
                        .type            n174_match_defer_bx, @function
n174_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
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
.Lmatch_defer_α_187_4:                                                        jmp   n175_match_lit_α
.Lmatch_defer_α_187_5:  cmp              r14d, -2;                            je    n173_match_arbno_β
                                                                              jmp   .Lmatch_arbno_ω_173_af
.Lmatch_defer_α_187_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
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
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        and              rcx, 255
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
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_187_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_187_46
.Lmatch_defer_α_187_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_187_47
.Lmatch_defer_α_187_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_187_46
.Lmatch_defer_α_187_43: add              rsp, 16
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
                        add              rsp, 0
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
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_187_47
.Lmatch_defer_α_187_46: mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_187_2
.Lmatch_defer_α_187_47: mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_187_2
.Lmatch_defer_α_187_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_187_48
.Lmatch_defer_α_187_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_187_49: cmp              r14d, -2;                            je    n173_match_arbno_β
                        test             eax, eax;                            js    .Lmatch_arbno_ω_173_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_187_6]
                        push             rcx
                        push             rax;                                 jmp   n175_match_lit_α
.Lmatch_defer_α_187_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_arbno_ω_173_af
n174_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_187_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_187_12
                                                                              jmp   rax
.Lmatch_defer_β_187_12:                                                       jmp   qword ptr [rsp]
                        .size            n174_match_defer_bx, .-n174_match_defer_bx
                        .type            n175_match_lit_bx, @function
n175_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n174_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n174_match_defer_β
                        add              r14d, 1;                             jmp   n176_match_defer_α
n175_match_lit_β:       sub              r14d, 1;                             jmp   n174_match_defer_β
                        .size            n175_match_lit_bx, .-n175_match_lit_bx
                        .type            n176_match_defer_bx, @function
n176_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_match_defer_α:     mov              rax, qword ptr [r9 + 144]            # jelement
                        mov              rdx, qword ptr [r9 + 152]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_190_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_190_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_match_defer.cpp:119
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
1:                      mov              rdx, qword ptr [r9 + 152];           jmp   .Lmatch_defer_α_190_10
.Lmatch_defer_α_190_9:  xor              eax, eax
.Lmatch_defer_α_190_10: test             rax, rax;                            jz    .Lmatch_defer_α_190_0
.Lmatch_defer_α_190_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_190_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_190_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_190_4:                                                        jmp   .Lmatch_arbno_γ_173_as
.Lmatch_defer_α_190_5:  cmp              r14d, -2;                            je    n173_match_arbno_β
                                                                              jmp   n175_match_lit_β
.Lmatch_defer_α_190_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [r9 + 144]                      # jelement
                        xor              esi, esi
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open_cell@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_190_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_190_51: lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_190_2:  test             rax, rax;                            je    .Lmatch_defer_α_190_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_190_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_190_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_190_141
                        lea              rcx, [rip + .Lmatch_defer_α_190_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_190_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_190_42]
                        lea              rdx, [rip + .Lmatch_defer_α_190_43]; jmp   rax
.Lmatch_defer_α_190_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_190_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_190_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_190_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_190_46
.Lmatch_defer_α_190_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_190_47
.Lmatch_defer_α_190_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_190_46
.Lmatch_defer_α_190_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_190_47
.Lmatch_defer_α_190_141:
                        lea              rcx, [rip + .Lmatch_defer_α_190_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_190_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_190_142]
                        lea              rdx, [rip + .Lmatch_defer_α_190_143]
                                                                              jmp   rax
.Lmatch_defer_α_190_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_190_46
.Lmatch_defer_α_190_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_190_47
.Lmatch_defer_α_190_46: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_190_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_190_52: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_190_2
.Lmatch_defer_α_190_47: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_190_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_190_53: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_190_2
.Lmatch_defer_α_190_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_190_48
.Lmatch_defer_α_190_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_190_49: cmp              r14d, -2;                            je    n173_match_arbno_β
                        test             eax, eax;                            js    n175_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_190_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_arbno_γ_173_as
.Lmatch_defer_α_190_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n175_match_lit_β
n176_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_190_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_190_12
                                                                              jmp   rax
.Lmatch_defer_β_190_12:                                                       jmp   qword ptr [rsp]
                        .size            n176_match_defer_bx, .-n176_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_β:
                                                                              jmp   n170_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + PAT$7_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$7:
                        .quad            722900962650
                        .quad            17179869208
                        .quad            0
                        .quad            168
                        .quad            17
                        .quad            8804682956648
                        .quad            8813272891248
                        .quad            8813272891256
                        .quad            8804682956672
                        .quad            8804682956680
                        .quad            17596481011600
                        .quad            17596481011616
                        .quad            17600775978928
                        .quad            17596481011648
                        .quad            17596481011664
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_PAT$7:            .quad            FN__PAT$7
                        .long            256, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$8:
PAT$8_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 104
                        lea              rax, [rip + .Lgcmap_PAT$8]
                        mov              qword ptr [rbp + -96], rax
                        mov              dword ptr [rbp + -104], 160
                        mov              dword ptr [rbp + -100], 104
                        xorps            xmm0, xmm0
                        movups           xmmword ptr [rbp + -88], xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n191_match_alternate_bx, @function
n191_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_match_alternate_α: mov              dword ptr [rbp + -80], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_203_21]
                        mov              qword ptr [rbp + -64], rax;          jmp   n201_match_defer_α
.Lmatch_alternate_α_203_21:
                        lea              rax, [rip + .Lmatch_alternate_α_203_22]
                        mov              qword ptr [rbp + -64], rax;          jmp   n200_match_defer_α
.Lmatch_alternate_α_203_22:
                        lea              rax, [rip + .Lmatch_alternate_α_203_23]
                        mov              qword ptr [rbp + -64], rax;          jmp   n197_match_defer_α
.Lmatch_alternate_α_203_23:
                        lea              rax, [rip + .Lmatch_alternate_α_203_24]
                        mov              qword ptr [rbp + -64], rax;          jmp   n195_match_defer_α
.Lmatch_alternate_α_203_24:
                        lea              rax, [rip + .Lmatch_alternate_α_203_25]
                        mov              qword ptr [rbp + -64], rax;          jmp   n194_match_lit_α
.Lmatch_alternate_α_203_25:
                        lea              rax, [rip + .Lmatch_alternate_α_203_26]
                        mov              qword ptr [rbp + -64], rax;          jmp   n193_match_lit_α
.Lmatch_alternate_α_203_26:
                        lea              rax, [rip + .Lmatch_alternate_α_203_19]
                        mov              qword ptr [rbp + -64], rax;          jmp   n192_match_lit_α
.Lmatch_alternate_γ_191_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_203_40]
                        mov              qword ptr [rbp + -72], rax;          jmp   .Lmatch_alternate_γ_191_as
.Lmatch_alternate_γ_191_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_203_41]
                        mov              qword ptr [rbp + -72], rax;          jmp   .Lmatch_alternate_γ_191_as
.Lmatch_alternate_γ_191_s2:
                        lea              rax, [rip + .Lmatch_alternate_α_203_42]
                        mov              qword ptr [rbp + -72], rax;          jmp   .Lmatch_alternate_γ_191_as
.Lmatch_alternate_γ_191_s3:
                        lea              rax, [rip + .Lmatch_alternate_α_203_43]
                        mov              qword ptr [rbp + -72], rax;          jmp   .Lmatch_alternate_γ_191_as
.Lmatch_alternate_γ_191_s4:
                        lea              rax, [rip + .Lmatch_alternate_α_203_44]
                        mov              qword ptr [rbp + -72], rax;          jmp   .Lmatch_alternate_γ_191_as
.Lmatch_alternate_γ_191_s5:
                        lea              rax, [rip + .Lmatch_alternate_α_203_45]
                        mov              qword ptr [rbp + -72], rax;          jmp   .Lmatch_alternate_γ_191_as
.Lmatch_alternate_γ_191_s6:
                        lea              rax, [rip + .Lmatch_alternate_α_203_46]
                        mov              qword ptr [rbp + -72], rax;          jmp   .Lmatch_alternate_γ_191_as
.Lmatch_alternate_α_203_40:
                                                                              jmp   n201_match_defer_β
.Lmatch_alternate_α_203_41:
                                                                              jmp   n200_match_defer_β
.Lmatch_alternate_α_203_42:
                                                                              jmp   n198_match_fence0_β
.Lmatch_alternate_α_203_43:
                                                                              jmp   n196_match_fence0_β
.Lmatch_alternate_α_203_44:
                                                                              jmp   n194_match_lit_β
.Lmatch_alternate_α_203_45:
                                                                              jmp   n193_match_lit_β
.Lmatch_alternate_α_203_46:
                                                                              jmp   n192_match_lit_β
.Lmatch_alternate_γ_191_as:
                                                                              jmp   PAT$8_γ
n191_match_alternate_β: mov              rax, qword ptr [rbp + -72];          jmp   rax
.Lmatch_alternate_γ_191_af:
.Lmatch_alternate_ω_191_af:
                        mov              r14d, dword ptr [rbp + -80]
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
.Lmatch_alternate_α_203_19:
                                                                              jmp   PAT$8_ω
                        .size            n191_match_alternate_bx, .-n191_match_alternate_bx
                        .type            n192_match_lit_bx, @function
n192_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_match_lit_α:       mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_191_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819047278;                     jne   .Lmatch_alternate_ω_191_af
                        add              r14d, 4;                             jmp   .Lmatch_alternate_γ_191_s6
n192_match_lit_β:       sub              r14d, 4;                             jmp   .Lmatch_alternate_ω_191_af
                        .size            n192_match_lit_bx, .-n192_match_lit_bx
                        .type            n193_match_lit_bx, @function
n193_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_match_lit_α:       mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_191_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1936482662;                     jne   .Lmatch_alternate_ω_191_af
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101;                            jne   .Lmatch_alternate_ω_191_af
                        add              r14d, 5;                             jmp   .Lmatch_alternate_γ_191_s5
n193_match_lit_β:       sub              r14d, 5;                             jmp   .Lmatch_alternate_ω_191_af
                        .size            n193_match_lit_bx, .-n193_match_lit_bx
                        .type            n194_match_lit_bx, @function
n194_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_match_lit_α:       mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_191_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1702195828;                     jne   .Lmatch_alternate_ω_191_af
                        add              r14d, 4;                             jmp   .Lmatch_alternate_γ_191_s4
n194_match_lit_β:       sub              r14d, 4;                             jmp   .Lmatch_alternate_ω_191_af
                        .size            n194_match_lit_bx, .-n194_match_lit_bx
                        .type            n195_match_defer_bx, @function
n195_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_210_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_210_17
                        cmp              qword ptr [rdi + 40], 4;             jl    .Lmatch_defer_α_210_17
                        mov              rax, qword ptr [rsi + 48]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_210_17
                        mov              rdx, qword ptr [rsi + 56]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_210_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_210_18
.Lmatch_defer_α_210_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_210_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_210_54: lea              rdi, [rsp + 0]
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
1:                      test             rax, rax;                            je    .Lmatch_defer_α_210_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_210_16:
.Lmatch_defer_α_210_18: test             rax, rax;                            jz    .Lmatch_defer_α_210_0
.Lmatch_defer_α_210_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_210_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_210_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_210_4:                                                        jmp   n196_match_fence0_α
.Lmatch_defer_α_210_5:  cmp              r14d, -2;                            je    n199_match_abort_β
                                                                              jmp   .Lmatch_alternate_ω_191_af
.Lmatch_defer_α_210_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_210_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_210_51: lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_210_2:  test             rax, rax;                            je    .Lmatch_defer_α_210_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_210_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_210_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_210_141
                        lea              rcx, [rip + .Lmatch_defer_α_210_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_210_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_210_42]
                        lea              rdx, [rip + .Lmatch_defer_α_210_43]; jmp   rax
.Lmatch_defer_α_210_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_210_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_210_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_210_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_210_46
.Lmatch_defer_α_210_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_210_47
.Lmatch_defer_α_210_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_210_46
.Lmatch_defer_α_210_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_210_47
.Lmatch_defer_α_210_141:
                        lea              rcx, [rip + .Lmatch_defer_α_210_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_210_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_210_142]
                        lea              rdx, [rip + .Lmatch_defer_α_210_143]
                                                                              jmp   rax
.Lmatch_defer_α_210_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_210_46
.Lmatch_defer_α_210_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_210_47
.Lmatch_defer_α_210_46: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_210_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_210_52: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_210_2
.Lmatch_defer_α_210_47: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_210_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_210_53: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_210_2
.Lmatch_defer_α_210_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_210_48
.Lmatch_defer_α_210_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_210_49: cmp              r14d, -2;                            je    n199_match_abort_β
                        test             eax, eax;                            js    .Lmatch_alternate_ω_191_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_210_6]
                        push             rcx
                        push             rax;                                 jmp   n196_match_fence0_α
.Lmatch_defer_α_210_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_191_af
n195_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_210_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_210_12
                                                                              jmp   rax
.Lmatch_defer_β_210_12:                                                       jmp   qword ptr [rsp]
                        .size            n195_match_defer_bx, .-n195_match_defer_bx
                        .type            n196_match_fence0_bx, @function
n196_match_fence0_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_match_fence0_α:                                                          jmp   .Lmatch_alternate_γ_191_s3
n196_match_fence0_β:                                                          jmp   n199_match_abort_β
                        .size            n196_match_fence0_bx, .-n196_match_fence0_bx
                        .type            n197_match_defer_bx, @function
n197_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_213_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_213_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_213_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_213_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_213_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_213_18
.Lmatch_defer_α_213_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_213_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_213_54: lea              rdi, [rsp + 0]
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
1:                      test             rax, rax;                            je    .Lmatch_defer_α_213_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_213_16:
.Lmatch_defer_α_213_18: test             rax, rax;                            jz    .Lmatch_defer_α_213_0
.Lmatch_defer_α_213_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_213_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_213_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_213_4:                                                        jmp   n198_match_fence0_α
.Lmatch_defer_α_213_5:  cmp              r14d, -2;                            je    n199_match_abort_β
                                                                              jmp   .Lmatch_alternate_ω_191_af
.Lmatch_defer_α_213_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_213_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_213_51: lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_213_2:  test             rax, rax;                            je    .Lmatch_defer_α_213_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_213_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_213_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_213_141
                        lea              rcx, [rip + .Lmatch_defer_α_213_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_213_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_213_42]
                        lea              rdx, [rip + .Lmatch_defer_α_213_43]; jmp   rax
.Lmatch_defer_α_213_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_213_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_213_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_213_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_213_46
.Lmatch_defer_α_213_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_213_47
.Lmatch_defer_α_213_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_213_46
.Lmatch_defer_α_213_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_213_47
.Lmatch_defer_α_213_141:
                        lea              rcx, [rip + .Lmatch_defer_α_213_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_213_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_213_142]
                        lea              rdx, [rip + .Lmatch_defer_α_213_143]
                                                                              jmp   rax
.Lmatch_defer_α_213_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_213_46
.Lmatch_defer_α_213_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_213_47
.Lmatch_defer_α_213_46: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_213_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_213_52: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_213_2
.Lmatch_defer_α_213_47: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_213_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_213_53: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_213_2
.Lmatch_defer_α_213_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_213_48
.Lmatch_defer_α_213_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_213_49: cmp              r14d, -2;                            je    n199_match_abort_β
                        test             eax, eax;                            js    .Lmatch_alternate_ω_191_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_213_6]
                        push             rcx
                        push             rax;                                 jmp   n198_match_fence0_α
.Lmatch_defer_α_213_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_191_af
n197_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_213_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_213_12
                                                                              jmp   rax
.Lmatch_defer_β_213_12:                                                       jmp   qword ptr [rsp]
                        .size            n197_match_defer_bx, .-n197_match_defer_bx
                        .type            n198_match_fence0_bx, @function
n198_match_fence0_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_match_fence0_α:                                                          jmp   .Lmatch_alternate_γ_191_s2
n198_match_fence0_β:                                                          jmp   n199_match_abort_β
                        .size            n198_match_fence0_bx, .-n198_match_fence0_bx
                        .type            n199_match_abort_bx, @function
n199_match_abort_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_match_abort_α:     mov              r14d, -2;                            jmp   PAT$8_ω
n199_match_abort_β:     mov              r14d, -2;                            jmp   PAT$8_ω
                        .size            n199_match_abort_bx, .-n199_match_abort_bx
                        .type            n200_match_defer_bx, @function
n200_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_217_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_217_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_217_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_217_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_217_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_217_18
.Lmatch_defer_α_217_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_217_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_217_54: lea              rdi, [rsp + 0]
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
1:                      test             rax, rax;                            je    .Lmatch_defer_α_217_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_217_16:
.Lmatch_defer_α_217_18: test             rax, rax;                            jz    .Lmatch_defer_α_217_0
.Lmatch_defer_α_217_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_217_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_217_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_217_4:                                                        jmp   .Lmatch_alternate_γ_191_s1
.Lmatch_defer_α_217_5:  cmp              r14d, -2;                            je    n199_match_abort_β
                                                                              jmp   .Lmatch_alternate_ω_191_af
.Lmatch_defer_α_217_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_217_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_217_51: lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_217_2:  test             rax, rax;                            je    .Lmatch_defer_α_217_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_217_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_217_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_217_141
                        lea              rcx, [rip + .Lmatch_defer_α_217_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_217_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_217_42]
                        lea              rdx, [rip + .Lmatch_defer_α_217_43]; jmp   rax
.Lmatch_defer_α_217_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_217_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_217_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_217_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_217_46
.Lmatch_defer_α_217_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_217_47
.Lmatch_defer_α_217_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_217_46
.Lmatch_defer_α_217_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_217_47
.Lmatch_defer_α_217_141:
                        lea              rcx, [rip + .Lmatch_defer_α_217_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_217_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_217_142]
                        lea              rdx, [rip + .Lmatch_defer_α_217_143]
                                                                              jmp   rax
.Lmatch_defer_α_217_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_217_46
.Lmatch_defer_α_217_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_217_47
.Lmatch_defer_α_217_46: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_217_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_217_52: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_217_2
.Lmatch_defer_α_217_47: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_217_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_217_53: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_217_2
.Lmatch_defer_α_217_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_217_48
.Lmatch_defer_α_217_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_217_49: cmp              r14d, -2;                            je    n199_match_abort_β
                        test             eax, eax;                            js    .Lmatch_alternate_ω_191_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_217_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_191_s1
.Lmatch_defer_α_217_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_191_af
n200_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_217_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_217_12
                                                                              jmp   rax
.Lmatch_defer_β_217_12:                                                       jmp   qword ptr [rsp]
                        .size            n200_match_defer_bx, .-n200_match_defer_bx
                        .type            n201_match_defer_bx, @function
n201_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_match_defer_α:     mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_218_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_218_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_218_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_218_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_218_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_218_18
.Lmatch_defer_α_218_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_218_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_218_54: lea              rdi, [rsp + 0]
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
1:                      test             rax, rax;                            je    .Lmatch_defer_α_218_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_218_16:
.Lmatch_defer_α_218_18: test             rax, rax;                            jz    .Lmatch_defer_α_218_0
.Lmatch_defer_α_218_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_218_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_218_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_218_4:                                                        jmp   .Lmatch_alternate_γ_191_s0
.Lmatch_defer_α_218_5:  cmp              r14d, -2;                            je    n199_match_abort_β
                                                                              jmp   .Lmatch_alternate_ω_191_af
.Lmatch_defer_α_218_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_218_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_218_51: lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_218_2:  test             rax, rax;                            je    .Lmatch_defer_α_218_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_218_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_218_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_218_141
                        lea              rcx, [rip + .Lmatch_defer_α_218_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_218_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_218_42]
                        lea              rdx, [rip + .Lmatch_defer_α_218_43]; jmp   rax
.Lmatch_defer_α_218_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_218_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_218_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_218_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_218_46
.Lmatch_defer_α_218_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_218_47
.Lmatch_defer_α_218_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_218_46
.Lmatch_defer_α_218_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_218_47
.Lmatch_defer_α_218_141:
                        lea              rcx, [rip + .Lmatch_defer_α_218_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_218_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_218_142]
                        lea              rdx, [rip + .Lmatch_defer_α_218_143]
                                                                              jmp   rax
.Lmatch_defer_α_218_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_218_46
.Lmatch_defer_α_218_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_218_47
.Lmatch_defer_α_218_46: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_218_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_218_52: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_218_2
.Lmatch_defer_α_218_47: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_218_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_218_53: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_218_2
.Lmatch_defer_α_218_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_218_48
.Lmatch_defer_α_218_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_218_49: cmp              r14d, -2;                            je    n199_match_abort_β
                        test             eax, eax;                            js    .Lmatch_alternate_ω_191_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_218_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_191_s0
.Lmatch_defer_α_218_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_191_af
n201_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_218_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_218_12
                                                                              jmp   rax
.Lmatch_defer_β_218_12:                                                       jmp   qword ptr [rsp]
                        .size            n201_match_defer_bx, .-n201_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$8_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$8_β:
                                                                              jmp   n191_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$8_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + PAT$8_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$8_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$8:
                        .quad            448023055706
                        .quad            17179869208
                        .quad            0
                        .quad            104
                        .quad            13
                        .quad            8804682956712
                        .quad            8804682956720
                        .quad            8813272891320
                        .quad            8813272891328
                        .quad            8804682956744
                        .quad            17596481011664
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_PAT$8:            .quad            FN__PAT$8
                        .long            192, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$9:
PAT$9_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 56
                        lea              rax, [rip + .Lgcmap_PAT$9]
                        mov              qword ptr [rbp + -48], rax
                        mov              dword ptr [rbp + -56], 160
                        mov              dword ptr [rbp + -52], 56
                        xorps            xmm0, xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n219_match_defer_bx, @function
n219_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_match_defer_α:     sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_222_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_222_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_222_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_222_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_222_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_222_18
.Lmatch_defer_α_222_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_222_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_222_54: lea              rdi, [rsp + 0]
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
1:                      test             rax, rax;                            je    .Lmatch_defer_α_222_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_222_16:
.Lmatch_defer_α_222_18: test             rax, rax;                            jz    .Lmatch_defer_α_222_0
.Lmatch_defer_α_222_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_222_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_222_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_222_4:                                                        jmp   n220_match_defer_α
.Lmatch_defer_α_222_5:  add              rsp, 16;                             jmp   PAT$9_ω
.Lmatch_defer_α_222_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_222_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_222_51: lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_222_2:  test             rax, rax;                            je    .Lmatch_defer_α_222_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_222_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_222_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_222_141
                        lea              rcx, [rip + .Lmatch_defer_α_222_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_222_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_222_42]
                        lea              rdx, [rip + .Lmatch_defer_α_222_43]; jmp   rax
.Lmatch_defer_α_222_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_222_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_222_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_222_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_222_46
.Lmatch_defer_α_222_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_222_47
.Lmatch_defer_α_222_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_222_46
.Lmatch_defer_α_222_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_222_47
.Lmatch_defer_α_222_141:
                        lea              rcx, [rip + .Lmatch_defer_α_222_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_222_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_222_142]
                        lea              rdx, [rip + .Lmatch_defer_α_222_143]
                                                                              jmp   rax
.Lmatch_defer_α_222_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_222_46
.Lmatch_defer_α_222_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_222_47
.Lmatch_defer_α_222_46: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_222_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_222_52: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_222_2
.Lmatch_defer_α_222_47: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_222_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_222_53: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_222_2
.Lmatch_defer_α_222_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_222_48
.Lmatch_defer_α_222_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_222_49: test             eax, eax;                            jns   .Lmatch_defer_α_222_240
                        add              rsp, 16;                             jmp   PAT$9_ω
.Lmatch_defer_α_222_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_222_6]
                        push             rcx
                        push             rax;                                 jmp   n220_match_defer_α
.Lmatch_defer_α_222_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$9_ω
n219_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_222_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_222_12
                                                                              jmp   rax
.Lmatch_defer_β_222_12:                                                       jmp   qword ptr [rsp]
                        .size            n219_match_defer_bx, .-n219_match_defer_bx
                        .type            n220_match_defer_bx, @function
n220_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # jvalue
                        mov              rdx, qword ptr [r9 + 136]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_223_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_223_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_match_defer.cpp:119
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
1:                      mov              rdx, qword ptr [r9 + 136];           jmp   .Lmatch_defer_α_223_10
.Lmatch_defer_α_223_9:  xor              eax, eax
.Lmatch_defer_α_223_10: test             rax, rax;                            jz    .Lmatch_defer_α_223_0
.Lmatch_defer_α_223_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_223_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_223_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_223_4:                                                        jmp   n221_match_defer_α
.Lmatch_defer_α_223_5:  add              rsp, 16;                             jmp   n219_match_defer_β
.Lmatch_defer_α_223_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [r9 + 128]                      # jvalue
                        xor              esi, esi
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open_cell@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_223_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_223_51: lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_223_2:  test             rax, rax;                            je    .Lmatch_defer_α_223_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_223_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_223_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_223_141
                        lea              rcx, [rip + .Lmatch_defer_α_223_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_223_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_223_42]
                        lea              rdx, [rip + .Lmatch_defer_α_223_43]; jmp   rax
.Lmatch_defer_α_223_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_223_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_223_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_223_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_223_46
.Lmatch_defer_α_223_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_223_47
.Lmatch_defer_α_223_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_223_46
.Lmatch_defer_α_223_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_223_47
.Lmatch_defer_α_223_141:
                        lea              rcx, [rip + .Lmatch_defer_α_223_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_223_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_223_142]
                        lea              rdx, [rip + .Lmatch_defer_α_223_143]
                                                                              jmp   rax
.Lmatch_defer_α_223_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_223_46
.Lmatch_defer_α_223_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_223_47
.Lmatch_defer_α_223_46: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_223_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_223_52: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_223_2
.Lmatch_defer_α_223_47: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_223_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_223_53: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_223_2
.Lmatch_defer_α_223_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_223_48
.Lmatch_defer_α_223_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_223_49: test             eax, eax;                            jns   .Lmatch_defer_α_223_240
                        add              rsp, 16;                             jmp   n219_match_defer_β
.Lmatch_defer_α_223_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_223_6]
                        push             rcx
                        push             rax;                                 jmp   n221_match_defer_α
.Lmatch_defer_α_223_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n219_match_defer_β
n220_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_223_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_223_12
                                                                              jmp   rax
.Lmatch_defer_β_223_12:                                                       jmp   qword ptr [rsp]
                        .size            n220_match_defer_bx, .-n220_match_defer_bx
                        .type            n221_match_defer_bx, @function
n221_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_match_defer_α:     sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_224_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_224_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_224_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_224_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_224_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_224_18
.Lmatch_defer_α_224_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_224_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_224_54: lea              rdi, [rsp + 0]
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
1:                      test             rax, rax;                            je    .Lmatch_defer_α_224_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_224_16:
.Lmatch_defer_α_224_18: test             rax, rax;                            jz    .Lmatch_defer_α_224_0
.Lmatch_defer_α_224_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_224_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_224_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_224_4:                                                        jmp   PAT$9_γ
.Lmatch_defer_α_224_5:  add              rsp, 16;                             jmp   n220_match_defer_β
.Lmatch_defer_α_224_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_224_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_224_51: lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_224_2:  test             rax, rax;                            je    .Lmatch_defer_α_224_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_224_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_224_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_224_141
                        lea              rcx, [rip + .Lmatch_defer_α_224_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_224_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_224_42]
                        lea              rdx, [rip + .Lmatch_defer_α_224_43]; jmp   rax
.Lmatch_defer_α_224_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_224_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_224_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_224_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_224_46
.Lmatch_defer_α_224_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_224_47
.Lmatch_defer_α_224_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_224_46
.Lmatch_defer_α_224_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_224_47
.Lmatch_defer_α_224_141:
                        lea              rcx, [rip + .Lmatch_defer_α_224_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_224_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_224_142]
                        lea              rdx, [rip + .Lmatch_defer_α_224_143]
                                                                              jmp   rax
.Lmatch_defer_α_224_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_224_46
.Lmatch_defer_α_224_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_224_47
.Lmatch_defer_α_224_46: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_224_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_224_52: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_224_2
.Lmatch_defer_α_224_47: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_224_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_224_53: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_224_2
.Lmatch_defer_α_224_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_224_48
.Lmatch_defer_α_224_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_224_49: test             eax, eax;                            jns   .Lmatch_defer_α_224_240
                        add              rsp, 16;                             jmp   n220_match_defer_β
.Lmatch_defer_α_224_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_224_6]
                        push             rcx
                        push             rax;                                 jmp   PAT$9_γ
.Lmatch_defer_α_224_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n220_match_defer_β
n221_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_224_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_224_12
                                                                              jmp   rax
.Lmatch_defer_β_224_12:                                                       jmp   qword ptr [rsp]
                        .size            n221_match_defer_bx, .-n221_match_defer_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$9_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$9_β:
                                                                              jmp   n221_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$9_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + PAT$9_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$9_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$9:
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
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_PAT$9:            .quad            FN__PAT$9
                        .long            96, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$10:
PAT$10_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 56
                        lea              rax, [rip + .Lgcmap_PAT$10]
                        mov              qword ptr [rbp + -48], rax
                        mov              dword ptr [rbp + -56], 160
                        mov              dword ptr [rbp + -52], 56
                        xorps            xmm0, xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n225_match_pos_bx, @function
n225_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_match_pos_α:       mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$10_ω
                                                                              jmp   n226_match_defer_α
n225_match_pos_β:                                                             jmp   PAT$10_ω
                        .size            n225_match_pos_bx, .-n225_match_pos_bx
                        .type            n226_match_defer_bx, @function
n226_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_match_defer_α:     sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_229_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_229_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_229_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_229_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_229_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_229_18
.Lmatch_defer_α_229_17: mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_229_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_229_54: lea              rdi, [rsp + 0]
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
1:                      test             rax, rax;                            je    .Lmatch_defer_α_229_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_229_16:
.Lmatch_defer_α_229_18: test             rax, rax;                            jz    .Lmatch_defer_α_229_0
.Lmatch_defer_α_229_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_229_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_229_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_229_4:                                                        jmp   n227_match_rpos_α
.Lmatch_defer_α_229_5:  add              rsp, 16;                             jmp   PAT$10_ω
.Lmatch_defer_α_229_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        xor              edx, edx
                        xor              ecx, ecx
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_open_entry@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_229_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_229_51: lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_229_2:  test             rax, rax;                            je    .Lmatch_defer_α_229_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_229_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_229_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_229_141
                        lea              rcx, [rip + .Lmatch_defer_α_229_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_229_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_229_42]
                        lea              rdx, [rip + .Lmatch_defer_α_229_43]; jmp   rax
.Lmatch_defer_α_229_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_229_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_229_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_229_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_229_46
.Lmatch_defer_α_229_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_229_47
.Lmatch_defer_α_229_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_229_46
.Lmatch_defer_α_229_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_229_47
.Lmatch_defer_α_229_141:
                        lea              rcx, [rip + .Lmatch_defer_α_229_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_229_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_229_142]
                        lea              rdx, [rip + .Lmatch_defer_α_229_143]
                                                                              jmp   rax
.Lmatch_defer_α_229_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_229_46
.Lmatch_defer_α_229_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_229_47
.Lmatch_defer_α_229_46: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_229_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_229_52: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_229_2
.Lmatch_defer_α_229_47: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_229_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_229_53: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_229_2
.Lmatch_defer_α_229_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_229_48
.Lmatch_defer_α_229_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_229_49: test             eax, eax;                            jns   .Lmatch_defer_α_229_240
                        add              rsp, 16;                             jmp   PAT$10_ω
.Lmatch_defer_α_229_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_229_6]
                        push             rcx
                        push             rax;                                 jmp   n227_match_rpos_α
.Lmatch_defer_α_229_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$10_ω
n226_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_229_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_229_12
                                                                              jmp   rax
.Lmatch_defer_β_229_12:                                                       jmp   qword ptr [rsp]
                        .size            n226_match_defer_bx, .-n226_match_defer_bx
                        .type            n227_match_rpos_bx, @function
n227_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_match_rpos_α:      mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n226_match_defer_β
                                                                              jmp   PAT$10_γ
n227_match_rpos_β:                                                            jmp   n226_match_defer_β
                        .size            n227_match_rpos_bx, .-n227_match_rpos_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$10_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$10_β:
                                                                              jmp   n227_match_rpos_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$10_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + PAT$10_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$10_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$10:
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
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_PAT$10:           .quad            FN__PAT$10
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
                        lea              rdi, [rip + __label_names]
                        mov              esi, 2
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
                        mov              qword ptr [rsp + 1592], rax
                        mov              dword ptr [rsp + 1584], 160
                        mov              dword ptr [rsp + 1588], 1600
                        mov              eax, 0
main_α_body:
                        sub              rsp, 0
                        .type            n231_call_bx, @function
n231_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_call_α:            sub              rsp, 16
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
1:                      cmp              al, 104;                             jne   .Lcall_α_341_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n232_call_α
.Lcall_α_341_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n232_call_α
n231_call_β:            add              rsp, 16
                        add              rsp, -16;                            jmp   n232_call_α
                        .size            n231_call_bx, .-n231_call_bx
                        .type            n232_call_bx, @function
n232_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_call_α:            sub              rsp, 16
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
1:                      cmp              al, 104;                             jne   .Lcall_α_342_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n233_statement_begin_α
.Lcall_α_342_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n233_statement_begin_α
n232_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n233_statement_begin_α
                        .size            n232_call_bx, .-n232_call_bx
                        .type            n233_statement_begin_bx, @function
n233_statement_begin_bx:
#=======================================================================================================================
#                 &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n233_statement_begin_α:                                                       jmp   n234_lit_integer_α
n233_statement_begin_β:                                                       jmp   n237_statement_begin_α
                        .size            n233_statement_begin_bx, .-n233_statement_begin_bx
                        .type            n234_lit_integer_bx, @function
n234_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_345_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n235_kw_assign_snobol4_α
.Llit_integer_α_345_0:  .quad            0
                        .size            n234_lit_integer_bx, .-n234_lit_integer_bx
                        .type            n235_kw_assign_snobol4_bx, @function
n235_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_346_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_346_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n233_statement_begin_β
.Lkw_assign_snobol4_α_346_240:
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
1:                                                                            jmp   n236_statement_end_α
.Lkw_assign_snobol4_α_346_0:
                        .quad            1
                        .size            n235_kw_assign_snobol4_bx, .-n235_kw_assign_snobol4_bx
                        .type            n236_statement_end_bx, @function
n236_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_statement_end_α:   add              rsp, 32;                             jmp   n237_statement_begin_α
                        .size            n236_statement_end_bx, .-n236_statement_end_bx
                        .type            n237_statement_begin_bx, @function
n237_statement_begin_bx:
#=======================================================================================================================
#                 $' '           =  FENCE(SPAN(' ' CHAR(9) CHAR(10) CHAR(13)) | '')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n237_statement_begin_α:                                                       jmp   n238_lit_string_α
n237_statement_begin_β:                                                       jmp   n242_statement_begin_α
                        .size            n237_statement_begin_bx, .-n237_statement_begin_bx
                        .type            n238_lit_string_bx, @function
n238_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_351_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n239_call_α
.Llit_string_α_351_0:   .quad            .Lthk_PAT$0
                        .size            n238_lit_string_bx, .-n238_lit_string_bx
                        .type            n239_call_bx, @function
n239_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_call_α:            sub              rsp, 16
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
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_352_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n237_statement_begin_β
.Lcall_α_352_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_assign_α
n239_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n237_statement_begin_β
                        .size            n239_call_bx, .-n239_call_bx
                        .type            n240_assign_bx, @function
n240_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              #  
                        mov              qword ptr [r9 + 8], rdx;             jmp   n241_statement_end_α
                        .size            n240_assign_bx, .-n240_assign_bx
                        .type            n241_statement_end_bx, @function
n241_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_statement_end_α:   add              rsp, 32;                             jmp   n242_statement_begin_α
                        .size            n241_statement_end_bx, .-n241_statement_end_bx
                        .type            n242_statement_begin_bx, @function
n242_statement_begin_bx:
#=======================================================================================================================
#                 jescape        =  '\'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n242_statement_begin_α:                                                       jmp   n243_lit_string_α
n242_statement_begin_β:                                                       jmp   n247_statement_begin_α
                        .size            n242_statement_begin_bx, .-n242_statement_begin_bx
                        .type            n243_lit_string_bx, @function
n243_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_358_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n244_call_α
.Llit_string_α_358_0:   .quad            .Lthk_PAT$1
                        .size            n243_lit_string_bx, .-n243_lit_string_bx
                        .type            n244_call_bx, @function
n244_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_call_α:            sub              rsp, 16
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
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_359_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n242_statement_begin_β
.Lcall_α_359_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n245_assign_α
n244_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n242_statement_begin_β
                        .size            n244_call_bx, .-n244_call_bx
                        .type            n245_assign_bx, @function
n245_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # jescape
                        mov              qword ptr [r9 + 24], rdx;            jmp   n246_statement_end_α
                        .size            n245_assign_bx, .-n245_assign_bx
                        .type            n246_statement_end_bx, @function
n246_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_end_α:   add              rsp, 32;                             jmp   n247_statement_begin_α
                        .size            n246_statement_end_bx, .-n246_statement_end_bx
                        .type            n247_statement_begin_bx, @function
n247_statement_begin_bx:
#=======================================================================================================================
#                 jchunk         =  BREAK('"\' CHAR(10) CHAR(13))
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n247_statement_begin_α:                                                       jmp   n248_lit_string_α
n247_statement_begin_β:                                                       jmp   n252_statement_begin_α
                        .size            n247_statement_begin_bx, .-n247_statement_begin_bx
                        .type            n248_lit_string_bx, @function
n248_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_365_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n249_call_α
.Llit_string_α_365_0:   .quad            .Lthk_PAT$2
                        .size            n248_lit_string_bx, .-n248_lit_string_bx
                        .type            n249_call_bx, @function
n249_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_call_α:            sub              rsp, 16
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
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_366_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n247_statement_begin_β
.Lcall_α_366_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n250_assign_α
n249_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n247_statement_begin_β
                        .size            n249_call_bx, .-n249_call_bx
                        .type            n250_assign_bx, @function
n250_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # jchunk
                        mov              qword ptr [r9 + 40], rdx;            jmp   n251_statement_end_α
                        .size            n250_assign_bx, .-n250_assign_bx
                        .type            n251_statement_end_bx, @function
n251_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_statement_end_α:   add              rsp, 32;                             jmp   n252_statement_begin_α
                        .size            n251_statement_end_bx, .-n251_statement_end_bx
                        .type            n252_statement_begin_bx, @function
n252_statement_begin_bx:
#=======================================================================================================================
#                 jstring        =  '"' jchunk ARBNO(jescape jchunk) '"' FENCE
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n252_statement_begin_α:                                                       jmp   n253_lit_string_α
n252_statement_begin_β:                                                       jmp   n260_statement_begin_α
                        .size            n252_statement_begin_bx, .-n252_statement_begin_bx
                        .type            n253_lit_string_bx, @function
n253_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_372_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n254_var_α
.Llit_string_α_372_0:   .quad            .Lthk_PAT$3
                        .size            n253_lit_string_bx, .-n253_lit_string_bx
                        .type            n254_var_bx, @function
n254_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # jchunk
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n255_var_α
n254_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n252_statement_begin_β
                        .size            n254_var_bx, .-n254_var_bx
                        .type            n255_var_bx, @function
n255_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # jescape
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n256_var_α
n255_var_β:             add              rsp, 16;                             jmp   n254_var_β
                        .size            n255_var_bx, .-n255_var_bx
                        .type            n256_var_bx, @function
n256_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # jchunk
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_call_α
n256_var_β:             add              rsp, 16;                             jmp   n255_var_β
                        .size            n256_var_bx, .-n256_var_bx
                        .type            n257_call_bx, @function
n257_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_call_α:            sub              rsp, 16
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
1:                      add              rsp, 64
                        cmp              al, 104;                             jne   .Lcall_α_376_240
                        add              rsp, 16;                             jmp   n256_var_β
.Lcall_α_376_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n258_assign_α
n257_call_β:            add              rsp, 16;                             jmp   n256_var_β
                        .size            n257_call_bx, .-n257_call_bx
                        .type            n258_assign_bx, @function
n258_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # jstring
                        mov              qword ptr [r9 + 56], rdx;            jmp   n259_statement_end_α
                        .size            n258_assign_bx, .-n258_assign_bx
                        .type            n259_statement_end_bx, @function
n259_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_end_α:   add              rsp, 80;                             jmp   n260_statement_begin_α
                        .size            n259_statement_end_bx, .-n259_statement_end_bx
                        .type            n260_statement_begin_bx, @function
n260_statement_begin_bx:
#=======================================================================================================================
#                 jnumber        =  FENCE('-' | '')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n260_statement_begin_α:                                                       jmp   n261_lit_string_α
n260_statement_begin_β:                                                       jmp   n265_statement_begin_α
                        .size            n260_statement_begin_bx, .-n260_statement_begin_bx
                        .type            n261_lit_string_bx, @function
n261_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_382_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n262_call_α
.Llit_string_α_382_0:   .quad            .Lthk_PAT$4
                        .size            n261_lit_string_bx, .-n261_lit_string_bx
                        .type            n262_call_bx, @function
n262_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_call_α:            sub              rsp, 16
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
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_383_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n260_statement_begin_β
.Lcall_α_383_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n263_assign_α
n262_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n260_statement_begin_β
                        .size            n262_call_bx, .-n262_call_bx
                        .type            n263_assign_bx, @function
n263_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # jnumber
                        mov              qword ptr [r9 + 72], rdx;            jmp   n264_statement_end_α
                        .size            n263_assign_bx, .-n263_assign_bx
                        .type            n264_statement_end_bx, @function
n264_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_statement_end_α:   add              rsp, 32;                             jmp   n265_statement_begin_α
                        .size            n264_statement_end_bx, .-n264_statement_end_bx
                        .type            n265_statement_begin_bx, @function
n265_statement_begin_bx:
#=======================================================================================================================
#                 jmember        =  $' ' jstring $' ' ':' *jelement
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
n265_statement_begin_α:                                                       jmp   n266_lit_string_α
n265_statement_begin_β:                                                       jmp   n273_statement_begin_α
                        .size            n265_statement_begin_bx, .-n265_statement_begin_bx
                        .type            n266_lit_string_bx, @function
n266_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_389_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n267_var_α
.Llit_string_α_389_0:   .quad            .Lthk_PAT$5
                        .size            n266_lit_string_bx, .-n266_lit_string_bx
                        .type            n267_var_bx, @function
n267_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              #  
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n268_var_α
n267_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n265_statement_begin_β
                        .size            n267_var_bx, .-n267_var_bx
                        .type            n268_var_bx, @function
n268_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # jstring
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n269_var_α
n268_var_β:             add              rsp, 16;                             jmp   n267_var_β
                        .size            n268_var_bx, .-n268_var_bx
                        .type            n269_var_bx, @function
n269_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              #  
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n270_call_α
n269_var_β:             add              rsp, 16;                             jmp   n268_var_β
                        .size            n269_var_bx, .-n269_var_bx
                        .type            n270_call_bx, @function
n270_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_call_α:            sub              rsp, 16
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
1:                      add              rsp, 64
                        cmp              al, 104;                             jne   .Lcall_α_393_240
                        add              rsp, 16;                             jmp   n269_var_β
.Lcall_α_393_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n271_assign_α
n270_call_β:            add              rsp, 16;                             jmp   n269_var_β
                        .size            n270_call_bx, .-n270_call_bx
                        .type            n271_assign_bx, @function
n271_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # jmember
                        mov              qword ptr [r9 + 88], rdx;            jmp   n272_statement_end_α
                        .size            n271_assign_bx, .-n271_assign_bx
                        .type            n272_statement_end_bx, @function
n272_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_statement_end_α:   add              rsp, 80;                             jmp   n273_statement_begin_α
                        .size            n272_statement_end_bx, .-n272_statement_end_bx
                        .type            n273_statement_begin_bx, @function
n273_statement_begin_bx:
#=======================================================================================================================
#                 jobject        =  '{' ( jmember ARBNO($' ' ',' jmember) | $' ' ) '}'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n273_statement_begin_α:                                                       jmp   n274_lit_string_α
n273_statement_begin_β:                                                       jmp   n282_statement_begin_α
                        .size            n273_statement_begin_bx, .-n273_statement_begin_bx
                        .type            n274_lit_string_bx, @function
n274_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_399_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n275_var_α
.Llit_string_α_399_0:   .quad            .Lthk_PAT$6
                        .size            n274_lit_string_bx, .-n274_lit_string_bx
                        .type            n275_var_bx, @function
n275_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # jmember
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_var_α
n275_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n273_statement_begin_β
                        .size            n275_var_bx, .-n275_var_bx
                        .type            n276_var_bx, @function
n276_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              #  
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_var_α
n276_var_β:             add              rsp, 16;                             jmp   n275_var_β
                        .size            n276_var_bx, .-n276_var_bx
                        .type            n277_var_bx, @function
n277_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # jmember
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n278_var_α
n277_var_β:             add              rsp, 16;                             jmp   n276_var_β
                        .size            n277_var_bx, .-n277_var_bx
                        .type            n278_var_bx, @function
n278_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              #  
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n279_call_α
n278_var_β:             add              rsp, 16;                             jmp   n277_var_β
                        .size            n278_var_bx, .-n278_var_bx
                        .type            n279_call_bx, @function
n279_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_call_α:            sub              rsp, 16
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
1:                      add              rsp, 80
                        cmp              al, 104;                             jne   .Lcall_α_404_240
                        add              rsp, 16;                             jmp   n278_var_β
.Lcall_α_404_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n280_assign_α
n279_call_β:            add              rsp, 16;                             jmp   n278_var_β
                        .size            n279_call_bx, .-n279_call_bx
                        .type            n280_assign_bx, @function
n280_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # jobject
                        mov              qword ptr [r9 + 104], rdx;           jmp   n281_statement_end_α
                        .size            n280_assign_bx, .-n280_assign_bx
                        .type            n281_statement_end_bx, @function
n281_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_statement_end_α:   add              rsp, 96;                             jmp   n282_statement_begin_α
                        .size            n281_statement_end_bx, .-n281_statement_end_bx
                        .type            n282_statement_begin_bx, @function
n282_statement_begin_bx:
#=======================================================================================================================
#                 jarray         =  '[' ( *jelement ARBNO($' ' ',' *jelement) | $' ' ) ']'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n282_statement_begin_α:                                                       jmp   n283_lit_string_α
n282_statement_begin_β:                                                       jmp   n289_statement_begin_α
                        .size            n282_statement_begin_bx, .-n282_statement_begin_bx
                        .type            n283_lit_string_bx, @function
n283_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_410_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n284_var_α
.Llit_string_α_410_0:   .quad            .Lthk_PAT$7
                        .size            n283_lit_string_bx, .-n283_lit_string_bx
                        .type            n284_var_bx, @function
n284_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              #  
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n285_var_α
n284_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n282_statement_begin_β
                        .size            n284_var_bx, .-n284_var_bx
                        .type            n285_var_bx, @function
n285_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              #  
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n286_call_α
n285_var_β:             add              rsp, 16;                             jmp   n284_var_β
                        .size            n285_var_bx, .-n285_var_bx
                        .type            n286_call_bx, @function
n286_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_call_α:            sub              rsp, 16
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
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_413_240
                        add              rsp, 16;                             jmp   n285_var_β
.Lcall_α_413_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n287_assign_α
n286_call_β:            add              rsp, 16;                             jmp   n285_var_β
                        .size            n286_call_bx, .-n286_call_bx
                        .type            n287_assign_bx, @function
n287_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # jarray
                        mov              qword ptr [r9 + 120], rdx;           jmp   n288_statement_end_α
                        .size            n287_assign_bx, .-n287_assign_bx
                        .type            n288_statement_end_bx, @function
n288_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_statement_end_α:   add              rsp, 64;                             jmp   n289_statement_begin_α
                        .size            n288_statement_end_bx, .-n288_statement_end_bx
                        .type            n289_statement_begin_bx, @function
n289_statement_begin_bx:
#=======================================================================================================================
#                 jvalue         =  ( jstring
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n289_statement_begin_α:                                                       jmp   n290_lit_string_α
n289_statement_begin_β:                                                       jmp   n298_statement_begin_α
                        .size            n289_statement_begin_bx, .-n289_statement_begin_bx
                        .type            n290_lit_string_bx, @function
n290_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_419_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n291_var_α
.Llit_string_α_419_0:   .quad            .Lthk_PAT$8
                        .size            n290_lit_string_bx, .-n290_lit_string_bx
                        .type            n291_var_bx, @function
n291_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # jstring
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n292_var_α
n291_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n289_statement_begin_β
                        .size            n291_var_bx, .-n291_var_bx
                        .type            n292_var_bx, @function
n292_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # jnumber
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_var_α
n292_var_β:             add              rsp, 16;                             jmp   n291_var_β
                        .size            n292_var_bx, .-n292_var_bx
                        .type            n293_var_bx, @function
n293_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # jobject
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n294_var_α
n293_var_β:             add              rsp, 16;                             jmp   n292_var_β
                        .size            n293_var_bx, .-n293_var_bx
                        .type            n294_var_bx, @function
n294_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # jarray
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_call_α
n294_var_β:             add              rsp, 16;                             jmp   n293_var_β
                        .size            n294_var_bx, .-n294_var_bx
                        .type            n295_call_bx, @function
n295_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_call_α:            sub              rsp, 16
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
1:                      add              rsp, 80
                        cmp              al, 104;                             jne   .Lcall_α_424_240
                        add              rsp, 16;                             jmp   n294_var_β
.Lcall_α_424_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_assign_α
n295_call_β:            add              rsp, 16;                             jmp   n294_var_β
                        .size            n295_call_bx, .-n295_call_bx
                        .type            n296_assign_bx, @function
n296_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # jvalue
                        mov              qword ptr [r9 + 136], rdx;           jmp   n297_statement_end_α
                        .size            n296_assign_bx, .-n296_assign_bx
                        .type            n297_statement_end_bx, @function
n297_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_statement_end_α:   add              rsp, 96;                             jmp   n298_statement_begin_α
                        .size            n297_statement_end_bx, .-n297_statement_end_bx
                        .type            n298_statement_begin_bx, @function
n298_statement_begin_bx:
#=======================================================================================================================
#                 jelement       =  $' ' *jvalue $' '
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n298_statement_begin_α:                                                       jmp   n299_lit_string_α
n298_statement_begin_β:                                                       jmp   n305_statement_begin_α
                        .size            n298_statement_begin_bx, .-n298_statement_begin_bx
                        .type            n299_lit_string_bx, @function
n299_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_430_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n300_var_α
.Llit_string_α_430_0:   .quad            .Lthk_PAT$9
                        .size            n299_lit_string_bx, .-n299_lit_string_bx
                        .type            n300_var_bx, @function
n300_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              #  
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n301_var_α
n300_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n298_statement_begin_β
                        .size            n300_var_bx, .-n300_var_bx
                        .type            n301_var_bx, @function
n301_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              #  
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n302_call_α
n301_var_β:             add              rsp, 16;                             jmp   n300_var_β
                        .size            n301_var_bx, .-n301_var_bx
                        .type            n302_call_bx, @function
n302_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_call_α:            sub              rsp, 16
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
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_433_240
                        add              rsp, 16;                             jmp   n301_var_β
.Lcall_α_433_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n303_assign_α
n302_call_β:            add              rsp, 16;                             jmp   n301_var_β
                        .size            n302_call_bx, .-n302_call_bx
                        .type            n303_assign_bx, @function
n303_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # jelement
                        mov              qword ptr [r9 + 152], rdx;           jmp   n304_statement_end_α
                        .size            n303_assign_bx, .-n303_assign_bx
                        .type            n304_statement_end_bx, @function
n304_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_statement_end_α:   add              rsp, 64;                             jmp   n305_statement_begin_α
                        .size            n304_statement_end_bx, .-n304_statement_end_bx
                        .type            n305_statement_begin_bx, @function
n305_statement_begin_bx:
#=======================================================================================================================
#                 json           =  POS(0) jelement RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n305_statement_begin_α:                                                       jmp   n306_lit_string_α
n305_statement_begin_β:                                                       jmp   n311_statement_begin_α
                        .size            n305_statement_begin_bx, .-n305_statement_begin_bx
                        .type            n306_lit_string_bx, @function
n306_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_439_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n307_var_α
.Llit_string_α_439_0:   .quad            .Lthk_PAT$10
                        .size            n306_lit_string_bx, .-n306_lit_string_bx
                        .type            n307_var_bx, @function
n307_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # jelement
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n308_call_α
n307_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n305_statement_begin_β
                        .size            n307_var_bx, .-n307_var_bx
                        .type            n308_call_bx, @function
n308_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_call_α:            sub              rsp, 16
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
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_441_240
                        add              rsp, 16;                             jmp   n307_var_β
.Lcall_α_441_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n309_assign_α
n308_call_β:            add              rsp, 16;                             jmp   n307_var_β
                        .size            n308_call_bx, .-n308_call_bx
                        .type            n309_assign_bx, @function
n309_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # json
                        mov              qword ptr [r9 + 168], rdx;           jmp   n310_statement_end_α
                        .size            n309_assign_bx, .-n309_assign_bx
                        .type            n310_statement_end_bx, @function
n310_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_statement_end_α:   add              rsp, 48;                             jmp   n311_statement_begin_α
                        .size            n310_statement_end_bx, .-n310_statement_end_bx
                        .type            n311_statement_begin_bx, @function
n311_statement_begin_bx:
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n311_statement_begin_α:                                                       jmp   n312_lit_name_α
n311_statement_begin_β:                                                       jmp   n317_statement_begin_α
                        .size            n311_statement_begin_bx, .-n311_statement_begin_bx
                        .type            n312_lit_name_bx, @function
n312_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_name_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_447_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n313_lit_integer_α
.Llit_name_α_447_0:     .quad            .Llit_name_α_447_0_s
.Llit_name_α_447_0_s:   .string          "INPUT"
                        .size            n312_lit_name_bx, .-n312_lit_name_bx
                        .type            n313_lit_integer_bx, @function
n313_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_448_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n314_lit_string_α
n313_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n311_statement_begin_β
.Llit_integer_α_448_0:  .quad            9
                        .size            n313_lit_integer_bx, .-n313_lit_integer_bx
                        .type            n314_lit_string_bx, @function
n314_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_449_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n315_call_α
n314_lit_string_β:      add              rsp, 16;                             jmp   n313_lit_integer_β
.Llit_string_α_449_0:   .quad            .Llit_string_α_449_0_s
.Llit_string_α_449_0_s: .string          "[-f0 -r4194304]"
                        .size            n314_lit_string_bx, .-n314_lit_string_bx
                        .type            n315_call_bx, @function
n315_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_call_α:            sub              rsp, 16
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
.Lcall_α_bynamefnzd171: .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd171]
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
                        cmp              al, 104;                             jne   .Lcall_α_450_240
                        add              rsp, 16;                             jmp   n314_lit_string_β
.Lcall_α_450_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call.cpp:371
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
1:                                                                            jmp   n316_statement_end_α
n315_call_β:            add              rsp, 16;                             jmp   n314_lit_string_β
                        .size            n315_call_bx, .-n315_call_bx
                        .type            n316_statement_end_bx, @function
n316_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_statement_end_α:   add              rsp, 64;                             jmp   n317_statement_begin_α
                        .size            n316_statement_end_bx, .-n316_statement_end_bx
                        .type            n317_statement_begin_bx, @function
n317_statement_begin_bx:
#=======================================================================================================================
#                 src             =   INPUT                       :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 38 0
n317_statement_begin_α:                                                       jmp   n318_var_α
n317_statement_begin_β:                                                       jmp   n336_statement_begin_α
                        .size            n317_statement_begin_bx, .-n317_statement_begin_bx
                        .type            n318_var_bx, @function
n318_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lvar_α_455_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_455_240
                        add              rsp, 16;                             jmp   n317_statement_begin_β
.Lvar_α_455_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_var_global.cpp:67
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
1:                                                                            jmp   n319_assign_α
.Lvar_α_455_0:          .quad            .Lvar_α_455_0_s
.Lvar_α_455_0_s:        .string          "INPUT"
                        .size            n318_var_bx, .-n318_var_bx
                        .type            n319_assign_bx, @function
n319_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # src
                        mov              qword ptr [r9 + 184], rdx;           jmp   n320_statement_end_α
                        .size            n319_assign_bx, .-n319_assign_bx
                        .type            n320_statement_end_bx, @function
n320_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_statement_end_α:   add              rsp, 16;                             jmp   n321_statement_begin_α
                        .size            n320_statement_end_bx, .-n320_statement_end_bx
                        .type            n321_statement_begin_bx, @function
n321_statement_begin_bx:
#=======================================================================================================================
#                 src             json                            :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 39 0
n321_statement_begin_α:                                                       jmp   n322_var_α
n321_statement_begin_β:                                                       jmp   n336_statement_begin_α
                        .size            n321_statement_begin_bx, .-n321_statement_begin_bx
                        .type            n322_var_bx, @function
n322_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # src
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n323_var_α
                        .size            n322_var_bx, .-n322_var_bx
                        .type            n323_var_bx, @function
n323_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # json
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n324_assign_α
n323_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n336_statement_begin_α
                        .size            n323_var_bx, .-n323_var_bx
                        .type            n324_assign_bx, @function
n324_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # PATV$0
                        mov              qword ptr [r9 + 200], rdx;           jmp   n325_match_begin_α
n324_assign_β:                                                                jmp   n323_var_β
                        .size            n324_assign_bx, .-n324_assign_bx
                        .type            n325_match_begin_bx, @function
n325_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
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
.Lmatch_begin_α_465_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_465_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n326_match_defer_α
n325_match_begin_β:
.Lmatch_begin_α_465_13: lea              rsp, [rbp + -88]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_465_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_465_1
                                                                              jmp   .Lmatch_begin_α_465_0
.Lmatch_begin_β_465_1:
.Lmatch_begin_γ_325_af:
.Lmatch_begin_ω_325_af: mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        pop              rbp;                                 jmp   n324_assign_β
                        .size            n325_match_begin_bx, .-n325_match_begin_bx
                        .type            n326_match_defer_bx, @function
n326_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_match_defer_α:     mov              rax, qword ptr [r9 + 192]            # PATV$0
                        mov              rdx, qword ptr [r9 + 200]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_466_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_466_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_match_defer.cpp:119
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
1:                      mov              rdx, qword ptr [r9 + 200];           jmp   .Lmatch_defer_α_466_10
.Lmatch_defer_α_466_9:  xor              eax, eax
.Lmatch_defer_α_466_10: test             rax, rax;                            jz    .Lmatch_defer_α_466_0
.Lmatch_defer_α_466_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_466_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_466_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_466_4:                                                        jmp   n327_match_end_α
.Lmatch_defer_α_466_5:  cmp              r14d, -2;                            je    .Lmatch_begin_ω_325_af
                                                                              jmp   n325_match_begin_β
.Lmatch_defer_α_466_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [r9 + 192]                      # PATV$0
                        xor              esi, esi
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open_cell@PLT
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
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        and              rcx, 255
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
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_466_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_466_46
.Lmatch_defer_α_466_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_466_47
.Lmatch_defer_α_466_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_466_46
.Lmatch_defer_α_466_43: add              rsp, 16
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
                        add              rsp, 0
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
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_466_47
.Lmatch_defer_α_466_46: mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_466_2
.Lmatch_defer_α_466_47: mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_466_2
.Lmatch_defer_α_466_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_466_48
.Lmatch_defer_α_466_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_466_49: cmp              r14d, -2;                            je    .Lmatch_begin_ω_325_af
                        test             eax, eax;                            js    n325_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_466_6]
                        push             rcx
                        push             rax;                                 jmp   n327_match_end_α
.Lmatch_defer_α_466_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n325_match_begin_β
n326_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_466_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_466_12
                                                                              jmp   rax
.Lmatch_defer_β_466_12:                                                       jmp   qword ptr [rsp]
                        .size            n326_match_defer_bx, .-n326_match_defer_bx
                        .type            n327_match_end_bx, @function
n327_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_match_end_α:       mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        and              rcx, 255
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
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_end_α_468_23:   add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_468_8
.Lmatch_end_α_468_24:   add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_468_9
.Lmatch_end_α_468_21:   add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_468_8
.Lmatch_end_α_468_22:   add              rsp, 16
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
.Lmatch_end_α_468_121:  add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_468_8
.Lmatch_end_α_468_122:  add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_468_9
.Lmatch_end_α_468_8:    mov              qword ptr [rip + rtccb+40], r8
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
1:                                                                            jmp   .Lmatch_end_α_468_1
.Lmatch_end_α_468_9:    mov              qword ptr [rip + rtccb+40], r8
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
1:                                                                            jmp   .Lmatch_end_α_468_1
.Lmatch_end_α_468_2:    mov              qword ptr [rsp + 0], rax
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
                        test             rax, rax;                            je    .Lmatch_end_α_468_13
                                                                              jmp   .Lmatch_begin_ω_325_af
.Lmatch_end_α_468_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n328_statement_end_α
                        .size            n327_match_end_bx, .-n327_match_end_bx
                        .type            n328_statement_end_bx, @function
n328_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_statement_end_α:   add              rsp, 32;                             jmp   n329_statement_begin_α
                        .size            n328_statement_end_bx, .-n328_statement_end_bx
                        .type            n329_statement_begin_bx, @function
n329_statement_begin_bx:
#=======================================================================================================================
#                 OUTPUT          =  'matched bytes=' SIZE(src)   :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
n329_statement_begin_α:                                                       jmp   n330_lit_string_α
n329_statement_begin_β:                                                       jmp   main_γ
                        .size            n329_statement_begin_bx, .-n329_statement_begin_bx
                        .type            n330_lit_string_bx, @function
n330_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_473_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n331_var_α
.Llit_string_α_473_0:   .quad            .Llit_string_α_473_0_s
.Llit_string_α_473_0_s: .string          "matched bytes="
                        .size            n330_lit_string_bx, .-n330_lit_string_bx
                        .type            n331_var_bx, @function
n331_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # src
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n332_call_α
n331_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n329_statement_begin_β
                        .size            n331_var_bx, .-n331_var_bx
                        .type            n332_call_bx, @function
n332_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd476:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd476]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_475_240
                        add              rsp, 16;                             jmp   n331_var_β
.Lcall_α_475_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:208
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
1:                                                                            jmp   n333_binop_α
n332_call_β:            add              rsp, 16;                             jmp   n331_var_β
                        .size            n332_call_bx, .-n332_call_bx
                        .type            n333_binop_bx, @function
n333_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_binop_α:           sub              rsp, 16
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
1:                                                                            jmp   n334_assign_α
n333_binop_β:           add              rsp, 32;                             jmp   n331_var_β
                        .size            n333_binop_bx, .-n333_binop_bx
                        .type            n334_assign_bx, @function
n334_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_478_0]
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
1:                                                                            jmp   n335_statement_end_α
.Lassign_α_478_0:       .quad            .Lassign_α_478_0_s
.Lassign_α_478_0_s:     .string          "OUTPUT"
                        .size            n334_assign_bx, .-n334_assign_bx
                        .type            n335_statement_end_bx, @function
n335_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_statement_end_α:   add              rsp, 64;                             jmp   main_γ
                        .size            n335_statement_end_bx, .-n335_statement_end_bx
                        .type            n336_statement_begin_bx, @function
n336_statement_begin_bx:
#=======================================================================================================================
# error           OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n336_statement_begin_α:                                                       jmp   n337_lit_string_α
n336_statement_begin_β:                                                       jmp   main_γ
                        .size            n336_statement_begin_bx, .-n336_statement_begin_bx
                        .type            n337_lit_string_bx, @function
n337_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_483_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n338_assign_α
.Llit_string_α_483_0:   .quad            .Llit_string_α_483_0_s
.Llit_string_α_483_0_s: .string          "Pattern match failed"
                        .size            n337_lit_string_bx, .-n337_lit_string_bx
                        .type            n338_assign_bx, @function
n338_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_484_0]
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
1:                                                                            jmp   n339_statement_end_α
.Lassign_α_484_0:       .quad            .Lassign_α_484_0_s
.Lassign_α_484_0_s:     .string          "OUTPUT"
                        .size            n338_assign_bx, .-n338_assign_bx
                        .type            n339_statement_end_bx, @function
n339_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_statement_end_α:   add              rsp, 16;                             jmp   main_γ
                        .size            n339_statement_end_bx, .-n339_statement_end_bx
                        .type            n340_goto_bx, @function
n340_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_goto_α:                                                                  jmp   n336_statement_begin_α
n340_goto_β:                                                                  jmp   main_ω
                        .size            n340_goto_bx, .-n340_goto_bx
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
                        .quad            6873294130522
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            1584
                        .quad            5
                        .quad            1460151441686528
                        .quad            8800387990832
                        .quad            17600775980344
                        .quad            79169132168520
                        .quad            175921860445584
.Lgcmap_main_s:         .string          "main"
module_init:
                        sub              rsp, 8
                        add              rsp, 8
                        ret
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            12
                        .quad            .Lgcmap_PAT$0
                        .quad            .Lgcmap_PAT$1
                        .quad            .Lgcmap_PAT$2
                        .quad            .Lgcmap_PAT$3
                        .quad            .Lgcmap_PAT$4
                        .quad            .Lgcmap_PAT$5
                        .quad            .Lgcmap_PAT$6
                        .quad            .Lgcmap_PAT$7
                        .quad            .Lgcmap_PAT$8
                        .quad            .Lgcmap_PAT$9
                        .quad            .Lgcmap_PAT$10
                        .quad            .Lgcmap_main
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
                        .section         .note.GNU-stack,"",@progbits
