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
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rcx
                        mov              qword ptr [rsp + 336], rdx
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 320], r8
                        mov              dword ptr [rsp + 312], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + proc_PAT$4_ω]
                        mov              qword ptr [rbp + 288], rax
#-----------------------------------------------------------------------------------------------------------------------
n39_match_assign_save_α:
                        sub              rsp, 272
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
                        lea              rdi, [rbp + 48]                                # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n40_match_defer_α
n39_match_assign_save_β:
                        lea              rdi, [rbp + 48]                                # slot
                        call             rt_cap_pop@PLT
                        add              rsp, 272
                                                                                        jmp   proc_PAT$4_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n40_match_defer_α:
                        mov              rax, qword ptr [1879052432]                    # PAT$4$V0
                        mov              rdx, qword ptr [1879052440]
                        cmp              eax, 8
                                                                                        jne   .Lx55_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx55_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx55_10
.Lx55_9:
                        xor              eax, eax
.Lx55_10:
                        test             rax, rax
                                                                                        jz    .Lx55_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx55_4]
                        lea              rdx, [rip + .Lx55_5]
                                                                                        jmp   rax
.Lx55_4:
                                                                                        jmp   n41_match_assign_cond_α
.Lx55_5:
                                                                                        jmp   n39_match_assign_save_β
.Lx55_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx55_2:
                        test             rax, rax
                                                                                        je    .Lx55_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx55_7]
                        lea              rdx, [rip + .Lx55_8]
                                                                                        jmp   rax
.Lx55_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx55_2
.Lx55_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx55_2
.Lx55_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n39_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx55_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n41_match_assign_cond_α
.Lx55_6:
                        add              rsp, 16
                                                                                        jmp   n39_match_assign_save_β
n40_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n41_match_assign_cond_α:
                        lea              rdi, [rbp + 48]                                # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n42_match_defer_α
n41_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n40_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n42_match_defer_α:
                        mov              rax, qword ptr [1879052448]                    # PAT$4$V1
                        mov              rdx, qword ptr [1879052456]
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
                        test             rax, rax
                                                                                        jz    .Lx58_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx58_4]
                        lea              rdx, [rip + .Lx58_5]
                                                                                        jmp   rax
.Lx58_4:
                                                                                        jmp   n43_match_alternate_α
.Lx58_5:
                                                                                        jmp   n41_match_assign_cond_β
.Lx58_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
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
                                                                                        js    n41_match_assign_cond_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx58_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n43_match_alternate_α
.Lx58_6:
                        add              rsp, 16
                                                                                        jmp   n41_match_assign_cond_β
n42_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n43_match_alternate_α:
                        mov              dword ptr [rbp + 96], r14d
                        lea              rax, [rip + .Lx60_21]
                        mov              qword ptr [rbp + 112], rax
                                                                                        jmp   n46_match_assign_save_α
.Lx60_21:
                        lea              rax, [rip + .Lx60_19]
                        mov              qword ptr [rbp + 112], rax
                                                                                        jmp   n44_match_defer_α
n43_match_alternate_s0:
                        lea              rax, [rip + .Lx60_40]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n43_match_alternate_as
n43_match_alternate_s1:
                        lea              rax, [rip + .Lx60_41]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n43_match_alternate_as
.Lx60_40:
                                                                                        jmp   n45_goto_β
.Lx60_41:
                                                                                        jmp   n44_match_defer_β
n43_match_alternate_as:
                                                                                        jmp   proc_PAT$4_γ
n43_match_alternate_β:
                        mov              rax, qword ptr [rbp + 104]
                                                                                        jmp   rax
n43_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 96]
                        mov              rax, qword ptr [rbp + 112]
                                                                                        jmp   rax
.Lx60_19:
                                                                                        jmp   n42_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n44_match_defer_α:
                        mov              rax, qword ptr [1879052512]                    # PAT$4$V5
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx61_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx61_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx61_10
.Lx61_9:
                        xor              eax, eax
.Lx61_10:
                        test             rax, rax
                                                                                        jz    .Lx61_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx61_4]
                        lea              rdx, [rip + .Lx61_5]
                                                                                        jmp   rax
.Lx61_4:
                                                                                        jmp   n43_match_alternate_s1
.Lx61_5:
                                                                                        jmp   n43_match_alternate_af
.Lx61_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx61_2:
                        test             rax, rax
                                                                                        je    .Lx61_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx61_7]
                        lea              rdx, [rip + .Lx61_8]
                                                                                        jmp   rax
.Lx61_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx61_2
.Lx61_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx61_2
.Lx61_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n43_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx61_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n43_match_alternate_s1
.Lx61_6:
                        add              rsp, 16
                                                                                        jmp   n43_match_alternate_af
n44_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n45_goto_α:
                                                                                        jmp   n43_match_alternate_af
n45_goto_β:
                                                                                        jmp   n43_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n46_match_assign_save_α:
                        lea              rdi, [rbp + 160]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n47_match_defer_α
n46_match_assign_save_β:
                        lea              rdi, [rbp + 160]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n43_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n47_match_defer_α:
                        mov              rax, qword ptr [1879052464]                    # PAT$4$V2
                        mov              rdx, qword ptr [1879052472]
                        cmp              eax, 8
                                                                                        jne   .Lx65_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx65_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx65_10
.Lx65_9:
                        xor              eax, eax
.Lx65_10:
                        test             rax, rax
                                                                                        jz    .Lx65_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx65_4]
                        lea              rdx, [rip + .Lx65_5]
                                                                                        jmp   rax
.Lx65_4:
                                                                                        jmp   n48_match_assign_cond_α
.Lx65_5:
                                                                                        jmp   n46_match_assign_save_β
.Lx65_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx65_2:
                        test             rax, rax
                                                                                        je    .Lx65_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx65_7]
                        lea              rdx, [rip + .Lx65_8]
                                                                                        jmp   rax
.Lx65_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx65_2
.Lx65_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx65_2
.Lx65_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n46_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx65_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n48_match_assign_cond_α
.Lx65_6:
                        add              rsp, 16
                                                                                        jmp   n46_match_assign_save_β
n47_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n48_match_assign_cond_α:
                        lea              rdi, [rbp + 160]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S5]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n49_match_defer_α
n48_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n47_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n49_match_defer_α:
                        mov              rax, qword ptr [1879052480]                    # PAT$4$V3
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 8
                                                                                        jne   .Lx68_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx68_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx68_10
.Lx68_9:
                        xor              eax, eax
.Lx68_10:
                        test             rax, rax
                                                                                        jz    .Lx68_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx68_4]
                        lea              rdx, [rip + .Lx68_5]
                                                                                        jmp   rax
.Lx68_4:
                                                                                        jmp   n50_match_assign_save_α
.Lx68_5:
                                                                                        jmp   n48_match_assign_cond_β
.Lx68_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx68_2:
                        test             rax, rax
                                                                                        je    .Lx68_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx68_7]
                        lea              rdx, [rip + .Lx68_8]
                                                                                        jmp   rax
.Lx68_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx68_2
.Lx68_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx68_2
.Lx68_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n48_match_assign_cond_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx68_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n50_match_assign_save_α
.Lx68_6:
                        add              rsp, 16
                                                                                        jmp   n48_match_assign_cond_β
n49_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n50_match_assign_save_α:
                        lea              rdi, [rbp + 240]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n51_match_defer_α
n50_match_assign_save_β:
                        lea              rdi, [rbp + 240]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n49_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n51_match_defer_α:
                        mov              rax, qword ptr [1879052496]                    # PAT$4$V4
                        mov              rdx, qword ptr [1879052504]
                        cmp              eax, 8
                                                                                        jne   .Lx71_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx71_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx71_10
.Lx71_9:
                        xor              eax, eax
.Lx71_10:
                        test             rax, rax
                                                                                        jz    .Lx71_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx71_4]
                        lea              rdx, [rip + .Lx71_5]
                                                                                        jmp   rax
.Lx71_4:
                                                                                        jmp   n52_match_assign_cond_α
.Lx71_5:
                                                                                        jmp   n50_match_assign_save_β
.Lx71_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx71_2:
                        test             rax, rax
                                                                                        je    .Lx71_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx71_7]
                        lea              rdx, [rip + .Lx71_8]
                                                                                        jmp   rax
.Lx71_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx71_2
.Lx71_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx71_2
.Lx71_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n50_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx71_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n52_match_assign_cond_α
.Lx71_6:
                        add              rsp, 16
                                                                                        jmp   n50_match_assign_save_β
n51_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n52_match_assign_cond_α:
                        lea              rdi, [rbp + 240]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S8]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n43_match_alternate_s0
n52_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n51_match_defer_β
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 320], 1
                                                                                        jne   .Lx74_0
                        mov              ecx, dword ptr [rbp + 312]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx74_0:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 320], 1
                                                                                        jne   .Lx75_0
                        mov              eax, dword ptr [rbp + 312]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx75_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx75_0
                        mov              dword ptr [rbp + 312], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
.Lx75_0:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rbp + 288]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              rbp, qword ptr [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, qword ptr [rbp + 336]
                        lea              rsp, [rbp + 352]
                        mov              rbp, qword ptr [rbp + 344]
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
                        mov              esi, 304
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
.Lgvan9:                .string          "PAT$4$V0"
.Lgvan10:               .string          "PAT$4$V1"
.Lgvan11:               .string          "PAT$4$V2"
.Lgvan12:               .string          "PAT$4$V3"
.Lgvan13:               .string          "PAT$4$V4"
.Lgvan14:               .string          "PAT$4$V5"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 15
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 15
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
n76_statement_begin_α:
                                                                                        jmp   n77_lit_string_α
n76_statement_begin_β:
                                                                                        jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n78_call_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd151:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd151]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx150_240
                                                                                        jmp   n80_statement_end_α
.Lx150_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n79_assign_α
n78_call_β:
                                                                                        jmp   n80_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # atom
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n80_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n81_statement_begin_α
#=======================================================================================================================
#         ws    = SPAN(' ') | LEN(0)
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:
                                                                                        jmp   n82_lit_string_α
n81_statement_begin_β:
                                                                                        jmp   n86_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n83_call_α
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd159:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd159]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx158_240
                                                                                        jmp   n85_statement_end_α
.Lx158_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n84_assign_α
n83_call_β:
                                                                                        jmp   n85_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # ws
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n85_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n86_statement_begin_α
#=======================================================================================================================
#         op    = FENCE('AND' | 'OR' | 'XOR')
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_begin_α:
                                                                                        jmp   n87_lit_string_α
n86_statement_begin_β:
                                                                                        jmp   n91_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n88_call_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n88_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd167:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd167]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx166_240
                                                                                        jmp   n90_statement_end_α
.Lx166_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n89_assign_α
n88_call_β:
                                                                                        jmp   n90_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # op
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n90_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n91_statement_begin_α
#=======================================================================================================================
#         eps   = LEN(0)
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_begin_α:
                                                                                        jmp   n92_lit_string_α
n91_statement_begin_β:
                                                                                        jmp   n96_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n93_call_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd175:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd175]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx174_240
                                                                                        jmp   n95_statement_end_α
.Lx174_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n94_assign_α
n93_call_β:
                                                                                        jmp   n95_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # eps
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n95_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n96_statement_begin_α
#=======================================================================================================================
#         expr  = atom . A ws (op . OP ws atom . B | eps)
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:
                                                                                        jmp   n97_var_α
n96_statement_begin_β:
                                                                                        jmp   n113_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # eps
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n98_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052512], rax                    # PAT$4$V5
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n99_var_α
n98_assign_β:
                        add              rsp, 16
                                                                                        jmp   n113_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # atom
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n100_assign_α
n99_var_β:
                        add              rsp, 16
                                                                                        jmp   n98_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n100_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052496], rax                    # PAT$4$V4
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n101_var_α
n100_assign_β:
                                                                                        jmp   n99_var_β
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n102_assign_α
n101_var_β:
                        add              rsp, 16
                                                                                        jmp   n100_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052480], rax                    # PAT$4$V3
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n103_var_α
n102_assign_β:
                                                                                        jmp   n101_var_β
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # op
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n104_assign_α
n103_var_β:
                        add              rsp, 16
                                                                                        jmp   n102_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # PAT$4$V2
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n105_var_α
n104_assign_β:
                                                                                        jmp   n103_var_β
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n106_assign_α
n105_var_β:
                        add              rsp, 16
                                                                                        jmp   n104_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n106_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # PAT$4$V1
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n107_var_α
n106_assign_β:
                                                                                        jmp   n105_var_β
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # atom
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n108_assign_α
n107_var_β:
                        add              rsp, 16
                                                                                        jmp   n106_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # PAT$4$V0
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n109_lit_string_α
n108_assign_β:
                                                                                        jmp   n107_var_β
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n110_call_α
n109_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n108_assign_β
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n110_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd195:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd195]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx194_240
                        add              rsp, 16
                                                                                        jmp   n109_lit_string_β
.Lx194_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n111_assign_α
n110_call_β:
                        add              rsp, 16
                                                                                        jmp   n109_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # expr
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n112_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_end_α:
                        add              rsp, 128
                                                                                        jmp   n113_statement_begin_α
#=======================================================================================================================
#         s = 'true AND false'
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_begin_α:
                                                                                        jmp   n114_lit_string_α
n113_statement_begin_β:
                                                                                        jmp   n117_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n115_assign_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "true AND false"
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # s
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n116_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n117_statement_begin_α
#=======================================================================================================================
#         s POS(0) expr RPOS(0)                                 :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α:
                                                                                        jmp   n118_var_α
n117_statement_begin_β:
                                                                                        jmp   n141_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # s
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # expr
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n120_assign_α
n119_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n141_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx209_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n121_match_begin_α
n120_assign_β:
                                                                                        jmp   n119_var_β
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n121_match_begin_α:
                        sub              rsp, 544
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
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              rdi, qword ptr [rsp + 560]                     # var
                        mov              rsi, qword ptr [rsp + 568]
                        mov              qword ptr [rbp + 512], r13                     # outer_Σ
                        mov              qword ptr [rbp + 520], r14                     # outer_δ
                        mov              qword ptr [rbp + 528], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 536], rax                     # cap_gen
                        mov              qword ptr [rbp + 504], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 480], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 464], 0                       # start_δ
.Lx211_0:
                        mov              r14d, dword ptr [rbp + 464]
                                                                                        jmp   n122_lit_integer_α
n121_match_begin_β:
                        add              dword ptr [rbp + 464], 1
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, r15d
                                                                                        jg    .Lx211_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx211_1
                                                                                        jmp   .Lx211_0
.Lx211_1:
n121_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 480]
                        mov              r13, qword ptr [rbp + 512]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 520]                     # outer_δ
                        mov              r15, qword ptr [rbp + 528]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 536]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 504]                     # old_rbp
                        add              rsp, 544
                                                                                        jmp   n120_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n123_match_pos_α
.Lx212_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n123_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n121_match_begin_β
                                                                                        jmp   n124_match_defer_α
n123_match_pos_β:
                                                                                        jmp   n121_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n124_match_defer_α:
                        lea              rdi, [rip + .S9]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx214_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx214_4]
                        lea              rdx, [rip + .Lx214_5]
                                                                                        jmp   rax
.Lx214_4:
                                                                                        jmp   n125_lit_integer_α
.Lx214_5:
                                                                                        jmp   n121_match_begin_β
.Lx214_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx214_2:
                        test             rax, rax
                                                                                        je    .Lx214_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx214_7]
                        lea              rdx, [rip + .Lx214_8]
                                                                                        jmp   rax
.Lx214_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx214_2
.Lx214_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx214_2
.Lx214_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n121_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx214_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n125_lit_integer_α
.Lx214_6:
                        add              rsp, 16
                                                                                        jmp   n121_match_begin_β
n124_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n126_match_rpos_α
.Lx215_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n126_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n124_match_defer_β
                                                                                        jmp   n127_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n127_match_end_α:
                        mov              r10, r12
.Lx218_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx218_9
                        mov              rsp, qword ptr [rbp + 480]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx218_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx218_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx218_1:
                        test             rax, rax
                                                                                        je    .Lx218_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx218_3]
                        lea              rdx, [rip + .Lx218_4]
                                                                                        jmp   rax
.Lx218_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx218_1
.Lx218_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx218_1
.Lx218_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 512]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 520]                     # outer_δ
                        mov              r15, qword ptr [rbp + 528]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 536]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 504]                     # old_rbp
                                                                                        jmp   n128_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:
                        add              rsp, 608
                                                                                        jmp   n129_statement_begin_α
#=======================================================================================================================
# YES     OUTPUT = A ' ' OP ' ' B                               :(END)
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_begin_α:
                                                                                        jmp   n130_var_α
n129_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # A
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n132_binop_α
n131_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n132_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n133_var_α
n132_binop_β:
                        add              rsp, 16
                                                                                        jmp   n131_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # OP
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n134_binop_α
n133_var_β:
                        add              rsp, 16
                                                                                        jmp   n132_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n134_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n135_lit_string_α
n134_binop_β:
                        add              rsp, 16
                                                                                        jmp   n133_var_β
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n136_binop_α
n135_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n134_binop_β
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n136_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n137_var_α
n136_binop_β:
                        add              rsp, 16
                                                                                        jmp   n135_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # B
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n138_binop_α
n137_var_β:
                        add              rsp, 16
                                                                                        jmp   n136_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n138_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n139_assign_α
n138_binop_β:
                        add              rsp, 16
                                                                                        jmp   n137_var_β
#-----------------------------------------------------------------------------------------------------------------------
n139_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx232_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n140_statement_end_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_end_α:
                        add              rsp, 144
                                                                                        jmp   main_γ
#=======================================================================================================================
# NO      OUTPUT = 'parse fail'
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_begin_α:
                                                                                        jmp   n142_lit_string_α
n141_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n143_assign_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "parse fail"
#-----------------------------------------------------------------------------------------------------------------------
n143_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx238_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n144_statement_end_α
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n145_goto_α:
                                                                                        jmp   n129_statement_begin_α
n145_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n146_goto_α:
                                                                                        jmp   n141_statement_begin_α
n146_goto_β:
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
.S0:                    .string          "PAT$4$V0"
.S1:                    .string          "A"
.S2:                    .string          "PAT$4$V1"
.S3:                    .string          "PAT$4$V5"
.S4:                    .string          "PAT$4$V2"
.S5:                    .string          "OP"
.S6:                    .string          "PAT$4$V3"
.S7:                    .string          "PAT$4$V4"
.S8:                    .string          "B"
.S9:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
