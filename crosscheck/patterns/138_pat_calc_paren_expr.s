                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        sub              rsp, 96
                        mov              qword ptr [rsp + 72], rcx
                        mov              qword ptr [rsp + 80], rdx
                        mov              qword ptr [rsp + 88], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 64], r8
                        mov              dword ptr [rsp + 56], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n0_match_any_β]
                        mov              qword ptr [rbp + 32], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   proc_PAT$0_scanfail
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    proc_PAT$0_scanfail
                        add              r14d, 1
                                                                                        jmp   proc_PAT$0_scanhit
n0_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$0_scanfail
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   .Lx3_0
                        mov              ecx, dword ptr [rbp + 56]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx3_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   .Lx4_0
                        mov              eax, dword ptr [rbp + 56]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx4_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx4_0
                        mov              dword ptr [rbp + 56], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx4_0:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 32]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, qword ptr [rbp + 80]
                        lea              rsp, [rbp + 96]
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        sub              rsp, 80
                        mov              qword ptr [rsp + 56], rcx
                        mov              qword ptr [rsp + 64], rdx
                        mov              qword ptr [rsp + 72], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 48], r8
                        mov              dword ptr [rsp + 40], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n5_match_span_β]
                        mov              qword ptr [rbp + 16], rax
#-----------------------------------------------------------------------------------------------------------------------
n5_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx7_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx7_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx7_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx7_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx7_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx7_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx7_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx7_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx7_1
                        add              ecx, 1
                                                                                        jmp   .Lx7_0
.Lx7_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx7_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx7_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanhit
n5_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   .Lx8_0
                        mov              ecx, dword ptr [rbp + 40]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx8_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   .Lx9_0
                        mov              eax, dword ptr [rbp + 40]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx9_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx9_0
                        mov              dword ptr [rbp + 40], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
.Lx9_0:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 16]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              rbp, qword ptr [rbp + 72]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, qword ptr [rbp + 64]
                        lea              rsp, [rbp + 80]
                        mov              rbp, qword ptr [rbp + 72]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 104], rcx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 96], r8
                        mov              dword ptr [rsp + 88], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + proc_PAT$2_ω]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n10_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx16_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n14_match_lit_α
.Lx16_21:
                        lea              rax, [rip + .Lx16_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n13_match_lit_α
.Lx16_22:
                        lea              rax, [rip + .Lx16_23]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n12_match_lit_α
.Lx16_23:
                        lea              rax, [rip + .Lx16_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n11_match_lit_α
n10_match_alternate_s0:
                        lea              rax, [rip + .Lx16_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n10_match_alternate_as
n10_match_alternate_s1:
                        lea              rax, [rip + .Lx16_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n10_match_alternate_as
n10_match_alternate_s2:
                        lea              rax, [rip + .Lx16_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n10_match_alternate_as
n10_match_alternate_s3:
                        lea              rax, [rip + .Lx16_43]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n10_match_alternate_as
.Lx16_40:
                                                                                        jmp   n14_match_lit_β
.Lx16_41:
                                                                                        jmp   n13_match_lit_β
.Lx16_42:
                                                                                        jmp   n12_match_lit_β
.Lx16_43:
                                                                                        jmp   n11_match_lit_β
n10_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n10_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n10_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx16_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n10_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   n10_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n10_match_alternate_s3
n11_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n10_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n10_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   n10_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n10_match_alternate_s2
n12_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n10_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n13_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n10_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n10_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n10_match_alternate_s1
n13_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n10_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n14_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n10_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n10_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n10_match_alternate_s0
n14_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n10_match_alternate_af
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx25_0
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx25_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx26_0
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx26_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx26_0
                        mov              dword ptr [rbp + 88], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx26_0:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 64]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              rbp, qword ptr [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, qword ptr [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + n27_match_alternate_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n27_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx31_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n29_match_span_α
.Lx31_21:
                        lea              rax, [rip + .Lx31_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n28_match_len_α
n27_match_alternate_s0:
                        lea              rax, [rip + .Lx31_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n27_match_alternate_as
n27_match_alternate_s1:
                        lea              rax, [rip + .Lx31_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n27_match_alternate_as
.Lx31_40:
                                                                                        jmp   n29_match_span_β
.Lx31_41:
                                                                                        jmp   n28_match_len_β
n27_match_alternate_as:
                                                                                        jmp   proc_PAT$3_γ
n27_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n27_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx31_19:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_match_len_α:
                        mov              eax, r14d
                        add              eax, 0
                        cmp              eax, r15d
                                                                                        jg    n27_match_alternate_af
                        add              r14d, 0
                                                                                        jmp   n27_match_alternate_s1
n28_match_len_β:
                        sub              r14d, 0
                                                                                        jmp   n27_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n29_match_span_α:
                        movsxd           rcx, r14d
.Lx34_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx34_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx34_10
                                                                                        jmp   .Lx34_1
.Lx34_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx34_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx34_11
                                                                                        jmp   .Lx34_1
.Lx34_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx34_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx34_12
                                                                                        jmp   .Lx34_1
.Lx34_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx34_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx34_13
                                                                                        jmp   .Lx34_1
.Lx34_13:
                        add              ecx, 1
                                                                                        jmp   .Lx34_0
.Lx34_1:
                        cmp              ecx, r14d
                                                                                        jle   n27_match_alternate_af
                        mov              dword ptr [rbp + 52], r14d
                        mov              r14d, ecx
                                                                                        jmp   n27_match_alternate_s0
n29_match_span_β:
                        mov              r14d, dword ptr [rbp + 52]
                                                                                        jmp   n27_match_alternate_af
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx35_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx35_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx36_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx36_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx36_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx36_0:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, qword ptr [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 176], r8
                        mov              dword ptr [rsp + 168], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + n37_match_alternate_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n37_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx46_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n44_match_patref_α
.Lx46_21:
                        lea              rax, [rip + .Lx46_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n38_match_sequence_α
n37_match_alternate_s0:
                        lea              rax, [rip + .Lx46_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n37_match_alternate_as
n37_match_alternate_s1:
                        lea              rax, [rip + .Lx46_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n37_match_alternate_as
.Lx46_40:
                                                                                        jmp   n44_match_patref_β
.Lx46_41:
                                                                                        jmp   n38_match_sequence_β
n37_match_alternate_as:
                                                                                        jmp   proc_PAT$4_γ
n37_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n37_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx46_19:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_match_sequence_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   n43_match_lit_α
n38_match_sequence_as:
                                                                                        jmp   n37_match_alternate_s1
n38_match_sequence_β:
                                                                                        jmp   n39_match_lit_β
n38_match_sequence_af:
                                                                                        jmp   n37_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n39_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n40_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n40_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n37_match_alternate_s1
n39_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n40_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n40_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx51_11
                        mov              rax, qword ptr [1879052352]                    # expr
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 8
                                                                                        jne   .Lx51_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx51_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx51_10
.Lx51_9:
                        xor              eax, eax
.Lx51_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx51_11:
                        test             rax, rax
                                                                                        jz    .Lx51_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx51_4]
                        lea              rdx, [rip + .Lx51_5]
                                                                                        jmp   rax
.Lx51_4:
                                                                                        jmp   n39_match_lit_α
.Lx51_5:
                                                                                        jmp   n41_match_patref_β
.Lx51_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx51_2:
                        test             rax, rax
                                                                                        je    .Lx51_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx51_7]
                        lea              rdx, [rip + .Lx51_8]
                                                                                        jmp   rax
.Lx51_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx51_2
.Lx51_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx51_2
.Lx51_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n41_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx51_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n39_match_lit_α
.Lx51_6:
                        add              rsp, 16
                                                                                        jmp   n41_match_patref_β
n40_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n41_match_patref_α:
                        mov              qword ptr [rbp + 112], rsp
                        mov              rax, qword ptr [1879052320]                    # op
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx52_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx52_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx52_10
.Lx52_9:
                        xor              eax, eax
.Lx52_10:
                        test             rax, rax
                                                                                        jz    .Lx52_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx52_4]
                        lea              rdx, [rip + .Lx52_5]
                                                                                        jmp   rax
.Lx52_4:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n40_match_defer_α
.Lx52_5:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n42_match_defer_β
.Lx52_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx52_2:
                        test             rax, rax
                                                                                        je    .Lx52_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx52_7]
                        lea              rdx, [rip + .Lx52_8]
                                                                                        jmp   rax
.Lx52_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx52_2
.Lx52_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx52_2
.Lx52_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n42_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx52_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n40_match_defer_α
.Lx52_6:
                        add              rsp, 16
                                                                                        jmp   n42_match_defer_β
n41_match_patref_β:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n42_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n42_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx53_11
                        mov              rax, qword ptr [1879052352]                    # expr
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 8
                                                                                        jne   .Lx53_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx53_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx53_10
.Lx53_9:
                        xor              eax, eax
.Lx53_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx53_11:
                        test             rax, rax
                                                                                        jz    .Lx53_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx53_4]
                        lea              rdx, [rip + .Lx53_5]
                                                                                        jmp   rax
.Lx53_4:
                                                                                        jmp   n41_match_patref_α
.Lx53_5:
                                                                                        jmp   n43_match_lit_β
.Lx53_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx53_2:
                        test             rax, rax
                                                                                        je    .Lx53_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx53_7]
                        lea              rdx, [rip + .Lx53_8]
                                                                                        jmp   rax
.Lx53_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx53_2
.Lx53_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx53_2
.Lx53_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n43_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx53_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n41_match_patref_α
.Lx53_6:
                        add              rsp, 16
                                                                                        jmp   n43_match_lit_β
n42_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n43_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n37_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n37_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n42_match_defer_α
n43_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n37_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n44_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx56_11
                        mov              rax, qword ptr [1879052304]                    # num
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx56_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx56_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx56_10
.Lx56_9:
                        xor              eax, eax
.Lx56_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx56_11:
                        test             rax, rax
                                                                                        jz    .Lx56_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx56_4]
                        lea              rdx, [rip + .Lx56_5]
                                                                                        jmp   rax
.Lx56_4:
                                                                                        jmp   n37_match_alternate_s0
.Lx56_5:
                                                                                        jmp   n37_match_alternate_af
.Lx56_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx56_2:
                        test             rax, rax
                                                                                        je    .Lx56_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx56_7]
                        lea              rdx, [rip + .Lx56_8]
                                                                                        jmp   rax
.Lx56_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx56_2
.Lx56_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx56_2
.Lx56_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n37_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx56_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n37_match_alternate_s0
.Lx56_6:
                        add              rsp, 16
                                                                                        jmp   n37_match_alternate_af
n44_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx57_0
                        mov              ecx, dword ptr [rbp + 168]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx57_0:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx58_0
                        mov              eax, dword ptr [rbp + 168]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx58_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx58_0
                        mov              dword ptr [rbp + 168], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
.Lx58_0:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              rbp, qword ptr [rbp + 200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, qword ptr [rbp + 192]
                        lea              rsp, [rbp + 208]
                        mov              rbp, qword ptr [rbp + 200]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 48
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "PAT$1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_PAT$1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 32
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "PAT$2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_PAT$2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 80
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "PAT$3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_PAT$3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "PAT$4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_PAT$4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "digit"
.Lgvan1:                .string          "num"
.Lgvan2:                .string          "op"
.Lgvan3:                .string          "ws"
.Lgvan4:                .string          "expr"
.Lgvan5:                .string          "s"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 6
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 6
                        call             gva_register@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         digit = ANY('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n60_call_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n60_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd104:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd104]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx103_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n63_lit_string_α
.Lx103_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n61_assign_α
n60_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n63_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # digit
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n62_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_α:
                        add              rsp, 32
                                                                                        jmp   n63_lit_string_α
#=======================================================================================================================
#         num   = SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n64_call_α
.Lx108_0:
                        .quad            .Lx108_0_s
.Lx108_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n64_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd110:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd110]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx109_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n67_lit_string_α
.Lx109_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n65_assign_α
n64_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n67_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # num
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n66_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_α:
                        add              rsp, 32
                                                                                        jmp   n67_lit_string_α
#=======================================================================================================================
#         op    = FENCE('+' | '-' | '*' | '/')
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n68_call_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd116:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd116]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx115_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n71_lit_string_α
.Lx115_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n69_assign_α
n68_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n71_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # op
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n70_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_α:
                        add              rsp, 32
                                                                                        jmp   n71_lit_string_α
#=======================================================================================================================
#         ws    = SPAN(' ') | LEN(0)
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n72_call_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n72_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd122:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd122]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx121_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n75_lit_string_α
.Lx121_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n73_assign_α
n72_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # ws
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n74_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_α:
                        add              rsp, 32
                                                                                        jmp   n75_lit_string_α
#=======================================================================================================================
#         expr  = num | '(' *expr op *expr ')'
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n76_call_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd128:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd128]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx127_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n79_lit_string_α
.Lx127_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n77_assign_α
n76_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n79_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n77_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # expr
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n78_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_α:
                        add              rsp, 32
                                                                                        jmp   n79_lit_string_α
#=======================================================================================================================
#         s     = '((1+2)*3)'
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n80_assign_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "((1+2)*3)"
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # s
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n81_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_α:
                        add              rsp, 16
                                                                                        jmp   n82_var_α
#=======================================================================================================================
#         s POS(0) *expr RPOS(0)                                :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # s
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n83_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n83_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 408], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 416], r13                     # outer_Σ
                        mov              qword ptr [rbp + 424], r14                     # outer_δ
                        mov              qword ptr [rbp + 432], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 440], rax                     # cap_gen
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]                    # cas_top
                        mov              qword ptr [r10 + 0], 0
                        mov              qword ptr [r10 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r10 + 16], rax                      # cas_patstk
                        add              r10, 24
                        mov              qword ptr [1879048192], r10                    # cas_top
                        mov              qword ptr [rbp + 384], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 376], rax                     # patstk_mark
                        mov              dword ptr [rbp + 368], 0                       # start_δ
.Lx138_0:
                        mov              r14d, dword ptr [rbp + 368]
                                                                                        jmp   n84_match_sequence_α
n83_match_begin_β:
                        add              dword ptr [rbp + 368], 1
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, r15d
                                                                                        jg    .Lx138_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx138_1
                                                                                        jmp   .Lx138_0
.Lx138_1:
                        mov              rax, qword ptr [rbp + 376]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 384]
                        mov              r10, qword ptr [1879048192]
.Lx138_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx138_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 416]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 424]                     # outer_δ
                        mov              r15, qword ptr [rbp + 432]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 440]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 408]                     # old_rbp
                        add              rsp, 528
                                                                                        jmp   n97_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n84_match_sequence_α:
                        mov              dword ptr [rbp + 448], r14d
                                                                                        jmp   n95_lit_integer_α
n84_match_sequence_as:
                                                                                        jmp   n85_match_end_α
n84_match_sequence_β:
                                                                                        jmp   n93_match_rpos_β
n84_match_sequence_af:
                                                                                        jmp   n83_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n85_match_end_α:
                        mov              rax, qword ptr [rbp + 376]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 384]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx142_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx142_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx142_1:
                        test             rax, rax
                                                                                        je    .Lx142_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx142_3]
                        lea              rdx, [rip + .Lx142_4]
                                                                                        jmp   rax
.Lx142_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx142_1
.Lx142_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx142_1
.Lx142_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx142_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx142_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 416]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 424]                     # outer_δ
                        mov              r15, qword ptr [rbp + 432]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 440]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n86_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_α:
                        mov              rbp, qword ptr [rbp + 408]                     # old_rbp
                        add              rsp, 528
                                                                                        jmp   n87_lit_string_α
#=======================================================================================================================
# YES     OUTPUT = 'parsed ' s                                  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n88_var_α
.Lx145_0:
                        .quad            .Lx145_0_s
.Lx145_0_s:
                        .string          "parsed "
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # s
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n89_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n89_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n90_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx148_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n91_statement_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_α:
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:
                        mov              qword ptr [rsp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n93_match_rpos_α
n92_lit_integer_β:
                                                                                        jmp   n94_match_defer_β
.Lx151_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n93_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n94_match_defer_β
                                                                                        jmp   n85_match_end_α
n93_match_rpos_β:
                                                                                        jmp   n94_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n94_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx153_11
                        mov              rax, qword ptr [1879052352]                    # expr
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 8
                                                                                        jne   .Lx153_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx153_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx153_10
.Lx153_9:
                        xor              eax, eax
.Lx153_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx153_11:
                        test             rax, rax
                                                                                        jz    .Lx153_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx153_4]
                        lea              rdx, [rip + .Lx153_5]
                                                                                        jmp   rax
.Lx153_4:
                                                                                        jmp   n92_lit_integer_α
.Lx153_5:
                                                                                        jmp   n83_match_begin_β
.Lx153_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx153_2:
                        test             rax, rax
                                                                                        je    .Lx153_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx153_7]
                        lea              rdx, [rip + .Lx153_8]
                                                                                        jmp   rax
.Lx153_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx153_2
.Lx153_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx153_2
.Lx153_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n83_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx153_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n92_lit_integer_α
.Lx153_6:
                        add              rsp, 16
                                                                                        jmp   n83_match_begin_β
n94_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:
                        mov              qword ptr [rsp + 464], 3                       # result
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n96_match_pos_α
n95_lit_integer_β:
                                                                                        jmp   n83_match_begin_β
.Lx154_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n96_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n83_match_begin_β
                                                                                        jmp   n94_match_defer_α
n96_match_pos_β:
                                                                                        jmp   n83_match_begin_β
#=======================================================================================================================
# NO      OUTPUT = 'parse fail'
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n98_assign_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "parse fail"
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx157_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n99_statement_α
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n100_goto_α:
                                                                                        jmp   n87_lit_string_α
n100_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n101_goto_α:
                                                                                        jmp   n97_lit_string_α
n101_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .rodata
.S0:                    .string          "expr"
.S1:                    .string          "op"
.S2:                    .string          "num"
                        .text
                        .section         .rodata
.C0:
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
