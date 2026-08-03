                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 104], rcx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 96], r8
                        mov              dword ptr [rsp + 88], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + proc_PAT$0_ω]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx4_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n2_match_lit_α
.Lx4_21:
                        lea              rax, [rip + .Lx4_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n1_match_lit_α
n0_match_alternate_s0:
                        lea              rax, [rip + .Lx4_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n0_match_alternate_as
n0_match_alternate_s1:
                        lea              rax, [rip + .Lx4_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n0_match_alternate_as
.Lx4_40:
                                                                                        jmp   n2_match_lit_β
.Lx4_41:
                                                                                        jmp   n1_match_lit_β
n0_match_alternate_as:
                                                                                        jmp   proc_PAT$0_γ
n0_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n0_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx4_19:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_lit_α:
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d
                                                                                        jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1936482662
                                                                                        jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101
                                                                                        jne   n0_match_alternate_af
                        add              r14d, 5
                                                                                        jmp   n0_match_alternate_s1
n1_match_lit_β:
                        sub              r14d, 5
                                                                                        jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n2_match_lit_α:
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d
                                                                                        jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1702195828
                                                                                        jne   n0_match_alternate_af
                        add              r14d, 4
                                                                                        jmp   n0_match_alternate_s0
n2_match_lit_β:
                        sub              r14d, 4
                                                                                        jmp   n0_match_alternate_af
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx9_0
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx9_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx10_0
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx10_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx10_0
                        mov              dword ptr [rbp + 88], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx10_0:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 64]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              rbp, qword ptr [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, qword ptr [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n11_match_alternate_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n11_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx15_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n13_match_span_α
.Lx15_21:
                        lea              rax, [rip + .Lx15_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n12_match_len_α
n11_match_alternate_s0:
                        lea              rax, [rip + .Lx15_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n11_match_alternate_as
n11_match_alternate_s1:
                        lea              rax, [rip + .Lx15_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n11_match_alternate_as
.Lx15_40:
                                                                                        jmp   n13_match_span_β
.Lx15_41:
                                                                                        jmp   n12_match_len_β
n11_match_alternate_as:
                                                                                        jmp   proc_PAT$1_γ
n11_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n11_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx15_19:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_match_len_α:
                        mov              eax, r14d
                        add              eax, 0
                        cmp              eax, r15d
                                                                                        jg    n11_match_alternate_af
                        add              r14d, 0
                                                                                        jmp   n11_match_alternate_s1
n12_match_len_β:
                        sub              r14d, 0
                                                                                        jmp   n11_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n13_match_span_α:
                        movsxd           rcx, r14d
.Lx18_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx18_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx18_10
                                                                                        jmp   .Lx18_1
.Lx18_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx18_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx18_11
                                                                                        jmp   .Lx18_1
.Lx18_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx18_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx18_12
                                                                                        jmp   .Lx18_1
.Lx18_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx18_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx18_13
                                                                                        jmp   .Lx18_1
.Lx18_13:
                        add              ecx, 1
                                                                                        jmp   .Lx18_0
.Lx18_1:
                        cmp              ecx, r14d
                                                                                        jle   n11_match_alternate_af
                        mov              dword ptr [rbp + 52], r14d
                        mov              r14d, ecx
                                                                                        jmp   n11_match_alternate_s0
n13_match_span_β:
                        mov              r14d, dword ptr [rbp + 52]
                                                                                        jmp   n11_match_alternate_af
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx19_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx19_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx20_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx20_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx20_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
.Lx20_0:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, qword ptr [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136]
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
n21_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx26_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n24_match_lit_α
.Lx26_21:
                        lea              rax, [rip + .Lx26_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n23_match_lit_α
.Lx26_22:
                        lea              rax, [rip + .Lx26_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n22_match_lit_α
n21_match_alternate_s0:
                        lea              rax, [rip + .Lx26_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n21_match_alternate_as
n21_match_alternate_s1:
                        lea              rax, [rip + .Lx26_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n21_match_alternate_as
n21_match_alternate_s2:
                        lea              rax, [rip + .Lx26_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n21_match_alternate_as
.Lx26_40:
                                                                                        jmp   n24_match_lit_β
.Lx26_41:
                                                                                        jmp   n23_match_lit_β
.Lx26_42:
                                                                                        jmp   n22_match_lit_β
n21_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n21_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n21_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx26_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_match_lit_α:
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d
                                                                                        jg    n21_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 88
                                                                                        jne   n21_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 79
                                                                                        jne   n21_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 82
                                                                                        jne   n21_match_alternate_af
                        add              r14d, 3
                                                                                        jmp   n21_match_alternate_s2
n22_match_lit_β:
                        sub              r14d, 3
                                                                                        jmp   n21_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n23_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n21_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 79
                                                                                        jne   n21_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 82
                                                                                        jne   n21_match_alternate_af
                        add              r14d, 2
                                                                                        jmp   n21_match_alternate_s1
n23_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n21_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n24_match_lit_α:
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d
                                                                                        jg    n21_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n21_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 78
                                                                                        jne   n21_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 68
                                                                                        jne   n21_match_alternate_af
                        add              r14d, 3
                                                                                        jmp   n21_match_alternate_s0
n24_match_lit_β:
                        sub              r14d, 3
                                                                                        jmp   n21_match_alternate_af
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx33_0
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx33_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx34_0
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx34_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx34_0
                        mov              dword ptr [rbp + 88], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx34_0:
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
                        sub              rsp, 96
                        mov              qword ptr [rsp + 72], rcx
                        mov              qword ptr [rsp + 80], rdx
                        mov              qword ptr [rsp + 88], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 64], r8
                        mov              dword ptr [rsp + 56], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + n35_match_len_β]
                        mov              qword ptr [rbp + 32], rax
#-----------------------------------------------------------------------------------------------------------------------
n35_match_len_α:
                        mov              eax, r14d
                        add              eax, 0
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$3_scanfail
                        add              r14d, 0
                                                                                        jmp   proc_PAT$3_scanhit
n35_match_len_β:
                        sub              r14d, 0
                                                                                        jmp   proc_PAT$3_scanfail
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   .Lx37_0
                        mov              ecx, dword ptr [rbp + 56]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx37_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   .Lx38_0
                        mov              eax, dword ptr [rbp + 56]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx38_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx38_0
                        mov              dword ptr [rbp + 56], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx38_0:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                                        jmp   qword ptr [rbp + 32]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, qword ptr [rbp + 80]
                        lea              rsp, [rbp + 96]
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
                        sub              rsp, 384
                        mov              qword ptr [rsp + 360], rcx
                        mov              qword ptr [rsp + 368], rdx
                        mov              qword ptr [rsp + 376], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 352], r8
                        mov              dword ptr [rsp + 344], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + n39_match_sequence_β]
                        mov              qword ptr [rbp + 320], rax
#-----------------------------------------------------------------------------------------------------------------------
n39_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n51_match_assign_save_α
n39_match_sequence_as:
                                                                                        jmp   proc_PAT$4_γ
n39_match_sequence_β:
                                                                                        jmp   n40_match_alternate_β
n39_match_sequence_af:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n40_match_alternate_α:
                        mov              dword ptr [rbp + 112], r14d
                        lea              rax, [rip + .Lx57_21]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   n42_match_sequence_α
.Lx57_21:
                        lea              rax, [rip + .Lx57_19]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   n41_match_patref_α
n40_match_alternate_s0:
                        lea              rax, [rip + .Lx57_40]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n40_match_alternate_as
n40_match_alternate_s1:
                        lea              rax, [rip + .Lx57_41]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n40_match_alternate_as
.Lx57_40:
                                                                                        jmp   n42_match_sequence_β
.Lx57_41:
                                                                                        jmp   n41_match_patref_β
n40_match_alternate_as:
                                                                                        jmp   proc_PAT$4_γ
n40_match_alternate_β:
                        mov              rax, qword ptr [rbp + 120]
                                                                                        jmp   rax
n40_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 112]
                        mov              rax, qword ptr [rbp + 128]
                                                                                        jmp   rax
.Lx57_19:
                                                                                        jmp   n50_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n41_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx58_11
                        mov              rax, qword ptr [1879052336]                    # eps
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 8
                                                                                        jne   .Lx58_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx58_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx58_10
.Lx58_9:
                        xor              eax, eax
.Lx58_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx58_11:
                        test             rax, rax
                                                                                        jz    .Lx58_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx58_4]
                        lea              rdx, [rip + .Lx58_5]
                                                                                        jmp   rax
.Lx58_4:
                                                                                        jmp   n40_match_alternate_s1
.Lx58_5:
                                                                                        jmp   n40_match_alternate_af
.Lx58_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx58_2:
                        test             rax, rax
                                                                                        je    .Lx58_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx58_7]
                        lea              rdx, [rip + .Lx58_8]
                                                                                        jmp   rax
.Lx58_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx58_2
.Lx58_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx58_2
.Lx58_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n40_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx58_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n40_match_alternate_s1
.Lx58_6:
                        add              rsp, 16
                                                                                        jmp   n40_match_alternate_af
n41_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n42_match_sequence_α:
                        mov              dword ptr [rbp + 144], r14d
                                                                                        jmp   n47_match_assign_save_α
n42_match_sequence_as:
                                                                                        jmp   n40_match_alternate_s0
n42_match_sequence_β:
                                                                                        jmp   n45_match_assign_cond_β
n42_match_sequence_af:
                                                                                        jmp   n40_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n43_match_assign_save_α:
                        lea              rdi, [rbp + 272]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n44_match_patref_α
n43_match_assign_save_β:
                        lea              rdi, [rbp + 272]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n46_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n44_match_patref_α:
                        mov              qword ptr [rbp + 288], rsp
                        mov              rax, qword ptr [1879052288]                    # atom
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx63_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx63_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx63_10
.Lx63_9:
                        xor              eax, eax
.Lx63_10:
                        test             rax, rax
                                                                                        jz    .Lx63_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx63_4]
                        lea              rdx, [rip + .Lx63_5]
                                                                                        jmp   rax
.Lx63_4:
                        mov              rsp, qword ptr [rbp + 288]
                                                                                        jmp   n45_match_assign_cond_α
.Lx63_5:
                        mov              rsp, qword ptr [rbp + 288]
                                                                                        jmp   n43_match_assign_save_β
.Lx63_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx63_2:
                        test             rax, rax
                                                                                        je    .Lx63_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx63_7]
                        lea              rdx, [rip + .Lx63_8]
                                                                                        jmp   rax
.Lx63_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx63_2
.Lx63_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx63_2
.Lx63_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n43_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx63_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n45_match_assign_cond_α
.Lx63_6:
                        add              rsp, 16
                                                                                        jmp   n43_match_assign_save_β
n44_match_patref_β:
                        mov              rsp, qword ptr [rbp + 288]
                                                                                        jmp   n43_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n45_match_assign_cond_α:
                        lea              rdi, [rbp + 272]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S2]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n40_match_alternate_s0
n45_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n44_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n46_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx66_11
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx66_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx66_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx66_10
.Lx66_9:
                        xor              eax, eax
.Lx66_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx66_11:
                        test             rax, rax
                                                                                        jz    .Lx66_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx66_4]
                        lea              rdx, [rip + .Lx66_5]
                                                                                        jmp   rax
.Lx66_4:
                                                                                        jmp   n43_match_assign_save_α
.Lx66_5:
                                                                                        jmp   n49_match_assign_cond_β
.Lx66_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx66_2:
                        test             rax, rax
                                                                                        je    .Lx66_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx66_7]
                        lea              rdx, [rip + .Lx66_8]
                                                                                        jmp   rax
.Lx66_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx66_2
.Lx66_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx66_2
.Lx66_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n49_match_assign_cond_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx66_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n43_match_assign_save_α
.Lx66_6:
                        add              rsp, 16
                                                                                        jmp   n49_match_assign_cond_β
n46_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n47_match_assign_save_α:
                        lea              rdi, [rbp + 192]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n48_match_patref_α
n47_match_assign_save_β:
                        lea              rdi, [rbp + 192]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n40_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n48_match_patref_α:
                        mov              qword ptr [rbp + 208], rsp
                        mov              rax, qword ptr [1879052320]                    # op
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx69_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx69_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx69_10
.Lx69_9:
                        xor              eax, eax
.Lx69_10:
                        test             rax, rax
                                                                                        jz    .Lx69_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx69_4]
                        lea              rdx, [rip + .Lx69_5]
                                                                                        jmp   rax
.Lx69_4:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n49_match_assign_cond_α
.Lx69_5:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n47_match_assign_save_β
.Lx69_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx69_2:
                        test             rax, rax
                                                                                        je    .Lx69_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx69_7]
                        lea              rdx, [rip + .Lx69_8]
                                                                                        jmp   rax
.Lx69_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx69_2
.Lx69_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx69_2
.Lx69_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n47_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx69_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n49_match_assign_cond_α
.Lx69_6:
                        add              rsp, 16
                                                                                        jmp   n47_match_assign_save_β
n48_match_patref_β:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n47_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n49_match_assign_cond_α:
                        lea              rdi, [rbp + 192]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S5]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n46_match_patref_α
n49_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n48_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n50_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx72_11
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx72_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx72_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx72_10
.Lx72_9:
                        xor              eax, eax
.Lx72_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx72_11:
                        test             rax, rax
                                                                                        jz    .Lx72_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx72_4]
                        lea              rdx, [rip + .Lx72_5]
                                                                                        jmp   rax
.Lx72_4:
                                                                                        jmp   n40_match_alternate_α
.Lx72_5:
                                                                                        jmp   n53_match_assign_cond_β
.Lx72_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx72_2:
                        test             rax, rax
                                                                                        je    .Lx72_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx72_7]
                        lea              rdx, [rip + .Lx72_8]
                                                                                        jmp   rax
.Lx72_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx72_2
.Lx72_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx72_2
.Lx72_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n53_match_assign_cond_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx72_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n40_match_alternate_α
.Lx72_6:
                        add              rsp, 16
                                                                                        jmp   n53_match_assign_cond_β
n50_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n51_match_assign_save_α:
                        lea              rdi, [rbp + 64]                                # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n52_match_patref_α
n51_match_assign_save_β:
                        lea              rdi, [rbp + 64]                                # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n52_match_patref_α:
                        mov              qword ptr [rbp + 80], rsp
                        mov              rax, qword ptr [1879052288]                    # atom
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx75_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx75_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx75_10
.Lx75_9:
                        xor              eax, eax
.Lx75_10:
                        test             rax, rax
                                                                                        jz    .Lx75_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx75_4]
                        lea              rdx, [rip + .Lx75_5]
                                                                                        jmp   rax
.Lx75_4:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n53_match_assign_cond_α
.Lx75_5:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n51_match_assign_save_β
.Lx75_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx75_2:
                        test             rax, rax
                                                                                        je    .Lx75_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx75_7]
                        lea              rdx, [rip + .Lx75_8]
                                                                                        jmp   rax
.Lx75_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx75_2
.Lx75_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx75_2
.Lx75_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n51_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx75_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n53_match_assign_cond_α
.Lx75_6:
                        add              rsp, 16
                                                                                        jmp   n51_match_assign_save_β
n52_match_patref_β:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n51_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n53_match_assign_cond_α:
                        lea              rdi, [rbp + 64]                                # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S6]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n50_match_patref_α
n53_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n52_match_patref_β
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 352], 1
                                                                                        jne   .Lx78_0
                        mov              ecx, dword ptr [rbp + 344]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx78_0:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 352], 1
                                                                                        jne   .Lx79_0
                        mov              eax, dword ptr [rbp + 344]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx79_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx79_0
                        mov              dword ptr [rbp + 344], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
.Lx79_0:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rbp + 320]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              rbp, qword ptr [rbp + 376]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, qword ptr [rbp + 368]
                        lea              rsp, [rbp + 384]
                        mov              rbp, qword ptr [rbp + 376]
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
                        mov              esi, 80
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
                        mov              esi, 96
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
                        mov              esi, 48
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
                        mov              esi, 336
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "atom"
.Lgvan1:                .string          "ws"
.Lgvan2:                .string          "op"
.Lgvan3:                .string          "eps"
.Lgvan4:                .string          "expr"
.Lgvan5:                .string          "A"
.Lgvan6:                .string          "OP"
.Lgvan7:                .string          "B"
.Lgvan8:                .string          "s"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 9
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 9
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         atom  = FENCE('true' | 'false')
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_begin_α:
                                                                                        jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n82_call_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n82_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd142:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd142]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx141_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n85_statement_begin_α
.Lx141_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n83_assign_α
n82_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n85_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # atom
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n84_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n85_statement_begin_α
#=======================================================================================================================
#         ws    = SPAN(' ') | LEN(0)
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_begin_α:
                                                                                        jmp   n86_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n87_call_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n87_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd150:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd150]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx149_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n90_statement_begin_α
.Lx149_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n88_assign_α
n87_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n90_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # ws
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n89_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n90_statement_begin_α
#=======================================================================================================================
#         op    = FENCE('AND' | 'OR' | 'XOR')
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_begin_α:
                                                                                        jmp   n91_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n92_call_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n92_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd158:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd158]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx157_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n95_statement_begin_α
.Lx157_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n93_assign_α
n92_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n95_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # op
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n94_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n95_statement_begin_α
#=======================================================================================================================
#         eps   = LEN(0)
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_begin_α:
                                                                                        jmp   n96_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n97_call_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd166:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd166]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx165_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n100_statement_begin_α
.Lx165_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n98_assign_α
n97_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n100_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # eps
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n99_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n100_statement_begin_α
#=======================================================================================================================
#         expr  = atom . A ws (op . OP ws atom . B | eps)
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_begin_α:
                                                                                        jmp   n101_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n102_call_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n102_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd174:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd174]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx173_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n105_statement_begin_α
.Lx173_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n103_assign_α
n102_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n105_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # expr
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n104_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n105_statement_begin_α
#=======================================================================================================================
#         s = 'true AND false'
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_begin_α:
                                                                                        jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n107_assign_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "true AND false"
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # s
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n108_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n109_statement_begin_α
#=======================================================================================================================
#         s POS(0) expr RPOS(0)                                 :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_begin_α:
                                                                                        jmp   n110_var_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:
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
                        mov              rax, qword ptr [1879052416]                    # s
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n111_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n111_match_begin_α:
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
.Lx188_0:
                        mov              r14d, dword ptr [rbp + 368]
                                                                                        jmp   n112_match_sequence_α
n111_match_begin_β:
                        add              dword ptr [rbp + 368], 1
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, r15d
                                                                                        jg    .Lx188_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx188_1
                                                                                        jmp   .Lx188_0
.Lx188_1:
                        mov              rax, qword ptr [rbp + 376]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 384]
                        mov              r10, qword ptr [1879048192]
.Lx188_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx188_2
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
                                                                                        jmp   n132_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n112_match_sequence_α:
                        mov              dword ptr [rbp + 448], r14d
                                                                                        jmp   n130_lit_integer_α
n112_match_sequence_as:
                                                                                        jmp   n113_match_end_α
n112_match_sequence_β:
                                                                                        jmp   n128_match_rpos_β
n112_match_sequence_af:
                                                                                        jmp   n111_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n113_match_end_α:
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
.Lx192_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx192_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx192_1:
                        test             rax, rax
                                                                                        je    .Lx192_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx192_3]
                        lea              rdx, [rip + .Lx192_4]
                                                                                        jmp   rax
.Lx192_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx192_1
.Lx192_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx192_1
.Lx192_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx192_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx192_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 416]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 424]                     # outer_δ
                        mov              r15, qword ptr [rbp + 432]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 440]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n114_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_end_α:
                        mov              rbp, qword ptr [rbp + 408]                     # old_rbp
                        add              rsp, 528
                                                                                        jmp   n115_statement_begin_α
#=======================================================================================================================
# YES     OUTPUT = A ' ' OP ' ' B                               :(END)
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_begin_α:
                                                                                        jmp   n116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # A
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n117_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n118_binop_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n118_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # OP
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n120_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n120_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n121_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n122_binop_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n122_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n123_var_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # B
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n124_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n124_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n125_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n125_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx206_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n126_statement_end_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_end_α:
                        add              rsp, 144
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:
                        mov              qword ptr [rsp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n128_match_rpos_α
n127_lit_integer_β:
                                                                                        jmp   n129_match_patref_β
.Lx209_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n128_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n129_match_patref_β
                                                                                        jmp   n113_match_end_α
n128_match_rpos_β:
                                                                                        jmp   n129_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n129_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx211_11
                        mov              rax, qword ptr [1879052352]                    # expr
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 8
                                                                                        jne   .Lx211_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx211_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx211_10
.Lx211_9:
                        xor              eax, eax
.Lx211_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx211_11:
                        test             rax, rax
                                                                                        jz    .Lx211_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx211_4]
                        lea              rdx, [rip + .Lx211_5]
                                                                                        jmp   rax
.Lx211_4:
                                                                                        jmp   n127_lit_integer_α
.Lx211_5:
                                                                                        jmp   n111_match_begin_β
.Lx211_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx211_2:
                        test             rax, rax
                                                                                        je    .Lx211_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx211_7]
                        lea              rdx, [rip + .Lx211_8]
                                                                                        jmp   rax
.Lx211_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx211_2
.Lx211_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx211_2
.Lx211_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n111_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx211_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n127_lit_integer_α
.Lx211_6:
                        add              rsp, 16
                                                                                        jmp   n111_match_begin_β
n129_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:
                        mov              qword ptr [rsp + 464], 3                       # result
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n131_match_pos_α
n130_lit_integer_β:
                                                                                        jmp   n111_match_begin_β
.Lx212_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n131_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n111_match_begin_β
                                                                                        jmp   n129_match_patref_α
n131_match_pos_β:
                                                                                        jmp   n111_match_begin_β
#=======================================================================================================================
# NO      OUTPUT = 'parse fail'
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_begin_α:
                                                                                        jmp   n133_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n134_assign_α
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "parse fail"
#-----------------------------------------------------------------------------------------------------------------------
n134_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx217_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n135_statement_end_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n136_goto_α:
                                                                                        jmp   n115_statement_begin_α
n136_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_goto_α:
                                                                                        jmp   n132_statement_begin_α
n137_goto_β:
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
.S0:                    .string          "eps"
.S1:                    .string          "atom"
.S2:                    .string          "B"
.S3:                    .string          "ws"
.S4:                    .string          "op"
.S5:                    .string          "OP"
.S6:                    .string          "A"
.S7:                    .string          "expr"
                        .text
                        .section         .note.GNU-stack,"",@progbits
