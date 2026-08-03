                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n0_match_alternate_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx4_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n2_match_span_α
.Lx4_21:
                        lea              rax, [rip + .Lx4_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n1_match_len_α
n0_match_alternate_s0:
                        lea              rax, [rip + .Lx4_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n0_match_alternate_as
n0_match_alternate_s1:
                        lea              rax, [rip + .Lx4_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n0_match_alternate_as
.Lx4_40:
                                                                                        jmp   n2_match_span_β
.Lx4_41:
                                                                                        jmp   n1_match_len_β
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
n1_match_len_α:
                        mov              eax, r14d
                        add              eax, 0
                        cmp              eax, r15d
                                                                                        jg    n0_match_alternate_af
                        add              r14d, 0
                                                                                        jmp   n0_match_alternate_s1
n1_match_len_β:
                        sub              r14d, 0
                                                                                        jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n2_match_span_α:
                        movsxd           rcx, r14d
.Lx7_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx7_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx7_10
                                                                                        jmp   .Lx7_1
.Lx7_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx7_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx7_11
                                                                                        jmp   .Lx7_1
.Lx7_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx7_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx7_12
                                                                                        jmp   .Lx7_1
.Lx7_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx7_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx7_13
                                                                                        jmp   .Lx7_1
.Lx7_13:
                        add              ecx, 1
                                                                                        jmp   .Lx7_0
.Lx7_1:
                        cmp              ecx, r14d
                                                                                        jle   n0_match_alternate_af
                        mov              dword ptr [rbp + 52], r14d
                        mov              r14d, ecx
                                                                                        jmp   n0_match_alternate_s0
n2_match_span_β:
                        mov              r14d, dword ptr [rbp + 52]
                                                                                        jmp   n0_match_alternate_af
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx8_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx8_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx9_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx9_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx9_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx9_0:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, qword ptr [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136]
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
                        lea              rax, [rip + n10_match_span_β]
                        mov              qword ptr [rbp + 16], rax
#-----------------------------------------------------------------------------------------------------------------------
n10_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx12_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx12_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx12_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx12_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx12_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx12_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx12_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx12_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx12_1
                        add              ecx, 1
                                                                                        jmp   .Lx12_0
.Lx12_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx12_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx12_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanhit
n10_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   .Lx13_0
                        mov              ecx, dword ptr [rbp + 40]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx13_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   .Lx14_0
                        mov              eax, dword ptr [rbp + 40]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx14_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx14_0
                        mov              dword ptr [rbp + 40], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
.Lx14_0:
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
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rcx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 152], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 128], r8
                        mov              dword ptr [rsp + 120], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + n15_match_sequence_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n15_match_sequence_α:
                                                                                        jmp   n20_match_lit_α
n15_match_sequence_as:
                                                                                        jmp   proc_PAT$2_γ
n15_match_sequence_β:
                                                                                        jmp   n16_match_lit_β
n15_match_sequence_af:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n19_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   n19_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$2_γ
n16_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n19_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n18_match_break_α
n17_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n20_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx28_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx28_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n20_match_lit_β
.Lx28_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx28_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx28_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n20_match_lit_β
.Lx28_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx28_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx28_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n20_match_lit_β
.Lx28_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx28_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx28_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n20_match_lit_β
.Lx28_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx28_1
                        add              ecx, 1
                                                                                        jmp   .Lx28_0
.Lx28_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n19_match_assign_cond_α
n18_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n20_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n16_match_lit_α
n19_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n18_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$2_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   proc_PAT$2_ω
                        add              r14d, 1
                                                                                        jmp   n17_match_assign_save_α
n20_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$2_ω
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx33_0
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx33_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx34_0
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx34_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx34_0
                        mov              dword ptr [rbp + 120], eax
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
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, qword ptr [rbp + 144]
                        lea              rsp, [rbp + 160]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        sub              rsp, 176
                        mov              qword ptr [rsp + 152], rcx
                        mov              qword ptr [rsp + 160], rdx
                        mov              qword ptr [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 144], r8
                        mov              dword ptr [rsp + 136], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + proc_PAT$3_ω]
                        mov              qword ptr [rbp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n35_match_assign_save_α:
                        sub              rsp, 96
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
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n36_match_alternate_α
n35_match_assign_save_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   proc_PAT$3_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n36_match_alternate_α:
                        mov              dword ptr [rbp + 64], r14d
                        lea              rax, [rip + .Lx43_21]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n39_match_lit_α
.Lx43_21:
                        lea              rax, [rip + .Lx43_19]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n38_match_lit_α
n36_match_alternate_s0:
                        lea              rax, [rip + .Lx43_40]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n36_match_alternate_as
n36_match_alternate_s1:
                        lea              rax, [rip + .Lx43_41]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n36_match_alternate_as
.Lx43_40:
                                                                                        jmp   n39_match_lit_β
.Lx43_41:
                                                                                        jmp   n38_match_lit_β
n36_match_alternate_as:
                                                                                        jmp   n37_match_assign_cond_α
n36_match_alternate_β:
                        mov              rax, qword ptr [rbp + 72]
                                                                                        jmp   rax
n36_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rax, qword ptr [rbp + 80]
                                                                                        jmp   rax
.Lx43_19:
                                                                                        jmp   n35_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n37_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S1]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        add              rsp, 96
                                                                                        jmp   proc_PAT$3_scanhit
n37_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n36_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n38_match_lit_α:
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d
                                                                                        jg    n36_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1936482662
                                                                                        jne   n36_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101
                                                                                        jne   n36_match_alternate_af
                        add              r14d, 5
                                                                                        jmp   n36_match_alternate_s1
n38_match_lit_β:
                        sub              r14d, 5
                                                                                        jmp   n36_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n39_match_lit_α:
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d
                                                                                        jg    n36_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1702195828
                                                                                        jne   n36_match_alternate_af
                        add              r14d, 4
                                                                                        jmp   n36_match_alternate_s0
n39_match_lit_β:
                        sub              r14d, 4
                                                                                        jmp   n36_match_alternate_af
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   .Lx50_0
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx50_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   .Lx51_0
                        mov              eax, dword ptr [rbp + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx51_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx51_0
                        mov              dword ptr [rbp + 136], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx51_0:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                                        jmp   qword ptr [rbp + 112]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              rbp, qword ptr [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, qword ptr [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, qword ptr [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + n54_match_assign_cond_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n52_match_assign_save_α:
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        lea              rdi, [rbp + 48]                                # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n53_match_patref_α
n52_match_assign_save_β:
                        lea              rdi, [rbp + 48]                                # slot
                        call             rt_cap_pop@PLT
                        add              rsp, 64
                                                                                        jmp   proc_PAT$4_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n53_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx57_11
                        mov              rax, qword ptr [1879052304]                    # digits
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx57_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx57_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx57_10
.Lx57_9:
                        xor              eax, eax
.Lx57_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx57_11:
                        test             rax, rax
                                                                                        jz    .Lx57_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx57_4]
                        lea              rdx, [rip + .Lx57_5]
                                                                                        jmp   rax
.Lx57_4:
                                                                                        jmp   n54_match_assign_cond_α
.Lx57_5:
                                                                                        jmp   n52_match_assign_save_β
.Lx57_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx57_2:
                        test             rax, rax
                                                                                        je    .Lx57_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx57_7]
                        lea              rdx, [rip + .Lx57_8]
                                                                                        jmp   rax
.Lx57_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx57_2
.Lx57_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx57_2
.Lx57_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n52_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx57_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n54_match_assign_cond_α
.Lx57_6:
                        add              rsp, 16
                                                                                        jmp   n52_match_assign_save_β
n53_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n54_match_assign_cond_α:
                        lea              rdi, [rbp + 48]                                # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S3]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        add              rsp, 64
                                                                                        jmp   proc_PAT$4_scanhit
n54_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n53_match_patref_β
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx60_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx60_0:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx61_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx61_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx61_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
.Lx61_0:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, qword ptr [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rcx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 152], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 128], r8
                        mov              dword ptr [rsp + 120], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
                        lea              rax, [rip + proc_PAT$5_ω]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n62_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx67_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n65_match_patref_α
.Lx67_21:
                        lea              rax, [rip + .Lx67_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n64_match_patref_α
.Lx67_22:
                        lea              rax, [rip + .Lx67_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n63_match_patref_α
n62_match_alternate_s0:
                        lea              rax, [rip + .Lx67_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n62_match_alternate_as
n62_match_alternate_s1:
                        lea              rax, [rip + .Lx67_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n62_match_alternate_as
n62_match_alternate_s2:
                        lea              rax, [rip + .Lx67_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n62_match_alternate_as
.Lx67_40:
                                                                                        jmp   n65_match_patref_β
.Lx67_41:
                                                                                        jmp   n64_match_patref_β
.Lx67_42:
                                                                                        jmp   n63_match_patref_β
n62_match_alternate_as:
                                                                                        jmp   proc_PAT$5_γ
n62_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n62_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx67_19:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n63_match_patref_α:
                        mov              qword ptr [rbp + 80], rsp
                        mov              rax, qword ptr [1879052384]                    # bool
                        mov              rdx, qword ptr [1879052392]
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
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n62_match_alternate_s2
.Lx68_5:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n62_match_alternate_af
.Lx68_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
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
                                                                                        js    n62_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx68_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n62_match_alternate_s2
.Lx68_6:
                        add              rsp, 16
                                                                                        jmp   n62_match_alternate_af
n63_match_patref_β:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n62_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n64_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx69_11
                        mov              rax, qword ptr [1879052352]                    # num
                        mov              rdx, qword ptr [1879052360]
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
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx69_11:
                        test             rax, rax
                                                                                        jz    .Lx69_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx69_4]
                        lea              rdx, [rip + .Lx69_5]
                                                                                        jmp   rax
.Lx69_4:
                                                                                        jmp   n62_match_alternate_s1
.Lx69_5:
                                                                                        jmp   n62_match_alternate_af
.Lx69_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]                               # varname
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
                                                                                        js    n62_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx69_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n62_match_alternate_s1
.Lx69_6:
                        add              rsp, 16
                                                                                        jmp   n62_match_alternate_af
n64_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n65_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx70_11
                        mov              rax, qword ptr [1879052320]                    # str
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx70_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx70_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx70_10
.Lx70_9:
                        xor              eax, eax
.Lx70_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx70_11:
                        test             rax, rax
                                                                                        jz    .Lx70_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx70_4]
                        lea              rdx, [rip + .Lx70_5]
                                                                                        jmp   rax
.Lx70_4:
                                                                                        jmp   n62_match_alternate_s0
.Lx70_5:
                                                                                        jmp   n62_match_alternate_af
.Lx70_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx70_2:
                        test             rax, rax
                                                                                        je    .Lx70_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx70_7]
                        lea              rdx, [rip + .Lx70_8]
                                                                                        jmp   rax
.Lx70_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx70_2
.Lx70_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx70_2
.Lx70_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n62_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx70_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n62_match_alternate_s0
.Lx70_6:
                        add              rsp, 16
                                                                                        jmp   n62_match_alternate_af
n65_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx71_0
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx71_0:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx72_0
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx72_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx72_0
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
.Lx72_0:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_β:
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$5_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                        mov              rax, qword ptr [rbp + 144]
                        lea              rsp, [rbp + 160]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$6_α
proc_PAT$6_α:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 176], r8
                        mov              dword ptr [rsp + 168], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
                        lea              rax, [rip + proc_PAT$6_ω]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n73_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n82_match_lit_α
n73_match_sequence_as:
                                                                                        jmp   proc_PAT$6_γ
n73_match_sequence_β:
                                                                                        jmp   n74_match_patref_β
n73_match_sequence_af:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
n74_match_patref_α:
                        mov              qword ptr [rbp + 128], rsp
                        mov              rax, qword ptr [1879052416]                    # value
                        mov              rdx, qword ptr [1879052424]
                        cmp              eax, 8
                                                                                        jne   .Lx85_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx85_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx85_10
.Lx85_9:
                        xor              eax, eax
.Lx85_10:
                        test             rax, rax
                                                                                        jz    .Lx85_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx85_4]
                        lea              rdx, [rip + .Lx85_5]
                                                                                        jmp   rax
.Lx85_4:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   proc_PAT$6_γ
.Lx85_5:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n75_match_patref_β
.Lx85_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx85_2:
                        test             rax, rax
                                                                                        je    .Lx85_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx85_7]
                        lea              rdx, [rip + .Lx85_8]
                                                                                        jmp   rax
.Lx85_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx85_2
.Lx85_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx85_2
.Lx85_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n75_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx85_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   proc_PAT$6_γ
.Lx85_6:
                        add              rsp, 16
                                                                                        jmp   n75_match_patref_β
n74_match_patref_β:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n75_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n75_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx86_11
                        mov              rax, qword ptr [1879052288]                    # ws
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx86_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx86_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx86_10
.Lx86_9:
                        xor              eax, eax
.Lx86_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx86_11:
                        test             rax, rax
                                                                                        jz    .Lx86_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx86_4]
                        lea              rdx, [rip + .Lx86_5]
                                                                                        jmp   rax
.Lx86_4:
                                                                                        jmp   n74_match_patref_α
.Lx86_5:
                                                                                        jmp   n76_match_lit_β
.Lx86_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx86_2:
                        test             rax, rax
                                                                                        je    .Lx86_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx86_7]
                        lea              rdx, [rip + .Lx86_8]
                                                                                        jmp   rax
.Lx86_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx86_2
.Lx86_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx86_2
.Lx86_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n76_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx86_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n74_match_patref_α
.Lx86_6:
                        add              rsp, 16
                                                                                        jmp   n76_match_lit_β
n75_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n76_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n77_match_patref_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 58
                                                                                        jne   n77_match_patref_β
                        add              r14d, 1
                                                                                        jmp   n75_match_patref_α
n76_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n77_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n77_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx89_11
                        mov              rax, qword ptr [1879052288]                    # ws
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx89_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx89_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx89_10
.Lx89_9:
                        xor              eax, eax
.Lx89_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx89_11:
                        test             rax, rax
                                                                                        jz    .Lx89_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx89_4]
                        lea              rdx, [rip + .Lx89_5]
                                                                                        jmp   rax
.Lx89_4:
                                                                                        jmp   n76_match_lit_α
.Lx89_5:
                                                                                        jmp   n78_match_lit_β
.Lx89_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx89_2:
                        test             rax, rax
                                                                                        je    .Lx89_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx89_7]
                        lea              rdx, [rip + .Lx89_8]
                                                                                        jmp   rax
.Lx89_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx89_2
.Lx89_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx89_2
.Lx89_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n78_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx89_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n76_match_lit_α
.Lx89_6:
                        add              rsp, 16
                                                                                        jmp   n78_match_lit_β
n77_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n78_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n81_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   n81_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   n77_match_patref_α
n78_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n81_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n79_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n80_match_break_α
n79_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n82_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n80_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx95_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx95_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n82_match_lit_β
.Lx95_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx95_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx95_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n82_match_lit_β
.Lx95_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx95_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx95_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n82_match_lit_β
.Lx95_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx95_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx95_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n82_match_lit_β
.Lx95_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx95_1
                        add              ecx, 1
                                                                                        jmp   .Lx95_0
.Lx95_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n81_match_assign_cond_α
n80_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n82_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n81_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S9]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n78_match_lit_α
n81_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n80_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n82_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$6_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   proc_PAT$6_ω
                        add              r14d, 1
                                                                                        jmp   n79_match_assign_save_α
n82_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$6_ω
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx100_0
                        mov              ecx, dword ptr [rbp + 168]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx100_0:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx101_0
                        mov              eax, dword ptr [rbp + 168]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx101_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx101_0
                        mov              dword ptr [rbp + 168], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_attempt
.Lx101_0:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$6_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              rbp, qword ptr [rbp + 200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
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
                        mov              esi, 96
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
                        mov              esi, 112
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
                        mov              esi, 128
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
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "PAT$5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_PAT$5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "PAT$6"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_PAT$6_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "ws"
.Lgvan1:                .string          "digits"
.Lgvan2:                .string          "str"
.Lgvan3:                .string          "S"
.Lgvan4:                .string          "num"
.Lgvan5:                .string          "N"
.Lgvan6:                .string          "bool"
.Lgvan7:                .string          "B"
.Lgvan8:                .string          "value"
.Lgvan9:                .string          "pair"
.Lgvan10:               .string          "K"
.Lgvan11:               .string          "s"
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
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 12
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 12
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
#         ws     = SPAN(' ') | LEN(0)
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n103_call_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n103_call_α:
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
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n106_lit_string_α
.Lx166_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n104_assign_α
n103_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # ws
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n105_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_α:
                        add              rsp, 32
                                                                                        jmp   n106_lit_string_α
#=======================================================================================================================
#         digits = SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n107_call_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n107_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd173:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd173]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx172_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n110_lit_string_α
.Lx172_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n108_assign_α
n107_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n110_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # digits
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n109_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_α:
                        add              rsp, 32
                                                                                        jmp   n110_lit_string_α
#=======================================================================================================================
#         str    = '"' BREAK('"') . S '"'
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n111_call_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n111_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd179:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd179]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx178_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n114_lit_string_α
.Lx178_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n112_assign_α
n111_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n114_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # str
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n113_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_α:
                        add              rsp, 32
                                                                                        jmp   n114_lit_string_α
#=======================================================================================================================
#         num    = digits . N
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n115_call_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n115_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd185:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd185]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx184_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n118_lit_string_α
.Lx184_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n116_assign_α
n115_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n118_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # num
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n117_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_α:
                        add              rsp, 32
                                                                                        jmp   n118_lit_string_α
#=======================================================================================================================
#         bool   = FENCE('true' | 'false') . B
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n119_call_α
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n119_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd191:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd191]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx190_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n122_lit_string_α
.Lx190_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n120_assign_α
n119_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n122_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # bool
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n121_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_α:
                        add              rsp, 32
                                                                                        jmp   n122_lit_string_α
#=======================================================================================================================
#         value  = FENCE(str | num | bool)
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n123_call_α
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n123_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd197:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd197]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx196_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n126_lit_string_α
.Lx196_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n124_assign_α
n123_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n126_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # value
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n125_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_α:
                        add              rsp, 32
                                                                                        jmp   n126_lit_string_α
#=======================================================================================================================
#         pair   = '"' BREAK('"') . K '"' ws ':' ws value
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n127_call_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n127_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd203:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd203]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx202_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n130_lit_string_α
.Lx202_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n128_assign_α
n127_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n130_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # pair
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n129_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_α:
                        add              rsp, 32
                                                                                        jmp   n130_lit_string_α
#=======================================================================================================================
#         s = '"age":42'
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n131_assign_α
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "\"age\":42"
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # s
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n132_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_α:
                        add              rsp, 16
                                                                                        jmp   n133_var_α
#=======================================================================================================================
#         s POS(0) pair RPOS(0)                                 :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:
                        sub              rsp, 656
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
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # s
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n134_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n134_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 536], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 544], r13                     # outer_Σ
                        mov              qword ptr [rbp + 552], r14                     # outer_δ
                        mov              qword ptr [rbp + 560], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 568], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 512], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 504], rax                     # patstk_mark
                        mov              dword ptr [rbp + 496], 0                       # start_δ
.Lx213_0:
                        mov              r14d, dword ptr [rbp + 496]
                                                                                        jmp   n135_match_sequence_α
n134_match_begin_β:
                        add              dword ptr [rbp + 496], 1
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, r15d
                                                                                        jg    .Lx213_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx213_1
                                                                                        jmp   .Lx213_0
.Lx213_1:
                        mov              rax, qword ptr [rbp + 504]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 512]
                        mov              r10, qword ptr [1879048192]
.Lx213_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx213_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 544]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 552]                     # outer_δ
                        mov              r15, qword ptr [rbp + 560]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 568]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 536]                     # old_rbp
                        add              rsp, 656
                                                                                        jmp   n160_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n135_match_sequence_α:
                        mov              dword ptr [rbp + 576], r14d
                                                                                        jmp   n158_lit_integer_α
n135_match_sequence_as:
                                                                                        jmp   n136_match_end_α
n135_match_sequence_β:
                                                                                        jmp   n156_match_rpos_β
n135_match_sequence_af:
                                                                                        jmp   n134_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n136_match_end_α:
                        mov              rax, qword ptr [rbp + 504]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 512]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx217_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx217_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx217_1:
                        test             rax, rax
                                                                                        je    .Lx217_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx217_3]
                        lea              rdx, [rip + .Lx217_4]
                                                                                        jmp   rax
.Lx217_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx217_1
.Lx217_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx217_1
.Lx217_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx217_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx217_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 544]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 552]                     # outer_δ
                        mov              r15, qword ptr [rbp + 560]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 568]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n137_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_α:
                        mov              rbp, qword ptr [rbp + 536]                     # old_rbp
                        add              rsp, 656
                                                                                        jmp   n138_lit_string_α
#=======================================================================================================================
# YES     OUTPUT = 'k=' K ' s=' S ' n=' N ' b=' B               :(END)
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n139_var_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "k="
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # K
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n140_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n140_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n141_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n142_binop_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          " s="
#-----------------------------------------------------------------------------------------------------------------------
n142_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n143_var_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # S
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n144_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n144_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n145_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n146_binop_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          " n="
#-----------------------------------------------------------------------------------------------------------------------
n146_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # N
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n148_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n148_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n149_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n150_binop_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          " b="
#-----------------------------------------------------------------------------------------------------------------------
n150_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n151_var_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # B
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n152_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n152_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n153_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n153_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx235_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n154_statement_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_α:
                        add              rsp, 240
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:
                        mov              qword ptr [rsp + 624], 3                       # result
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 632], rax
                                                                                        jmp   n156_match_rpos_α
n155_lit_integer_β:
                                                                                        jmp   n157_match_patref_β
.Lx238_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n156_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n157_match_patref_β
                                                                                        jmp   n136_match_end_α
n156_match_rpos_β:
                                                                                        jmp   n157_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n157_match_patref_α:
                        mov              qword ptr [rbp + 608], rsp
                        mov              rax, qword ptr [1879052432]                    # pair
                        mov              rdx, qword ptr [1879052440]
                        cmp              eax, 8
                                                                                        jne   .Lx240_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx240_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx240_10
.Lx240_9:
                        xor              eax, eax
.Lx240_10:
                        test             rax, rax
                                                                                        jz    .Lx240_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx240_4]
                        lea              rdx, [rip + .Lx240_5]
                                                                                        jmp   rax
.Lx240_4:
                        mov              rsp, qword ptr [rbp + 608]
                                                                                        jmp   n155_lit_integer_α
.Lx240_5:
                        mov              rsp, qword ptr [rbp + 608]
                                                                                        jmp   n134_match_begin_β
.Lx240_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx240_2:
                        test             rax, rax
                                                                                        je    .Lx240_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx240_7]
                        lea              rdx, [rip + .Lx240_8]
                                                                                        jmp   rax
.Lx240_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx240_2
.Lx240_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx240_2
.Lx240_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n134_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx240_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n155_lit_integer_α
.Lx240_6:
                        add              rsp, 16
                                                                                        jmp   n134_match_begin_β
n157_match_patref_β:
                        mov              rsp, qword ptr [rbp + 608]
                                                                                        jmp   n134_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:
                        mov              qword ptr [rsp + 592], 3                       # result
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n159_match_pos_α
n158_lit_integer_β:
                                                                                        jmp   n134_match_begin_β
.Lx241_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n159_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n134_match_begin_β
                                                                                        jmp   n157_match_patref_α
n159_match_pos_β:
                                                                                        jmp   n134_match_begin_β
#=======================================================================================================================
# NO      OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n161_assign_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx244_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n162_statement_α
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n163_goto_α:
                                                                                        jmp   n138_lit_string_α
n163_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n164_goto_α:
                                                                                        jmp   n160_lit_string_α
n164_goto_β:
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
.S0:                    .string          "S"
.S1:                    .string          "B"
.S2:                    .string          "digits"
.S3:                    .string          "N"
.S4:                    .string          "bool"
.S5:                    .string          "num"
.S6:                    .string          "str"
.S7:                    .string          "value"
.S8:                    .string          "ws"
.S9:                    .string          "K"
.S10:                   .string          "pair"
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
