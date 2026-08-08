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
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + proc_PAT$2_ω]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n15_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$2_scanfail
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   proc_PAT$2_scanfail
                        add              r14d, 1
                                                                                        jmp   n16_match_assign_save_α
n15_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$2_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n16_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n17_match_break_α
n16_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n15_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx25_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx25_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n15_match_lit_β
.Lx25_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx25_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx25_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n15_match_lit_β
.Lx25_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx25_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx25_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n15_match_lit_β
.Lx25_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx25_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx25_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n15_match_lit_β
.Lx25_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx25_1
                        add              ecx, 1
                                                                                        jmp   .Lx25_0
.Lx25_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n18_match_assign_cond_α
n17_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n15_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n19_match_lit_α
n18_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n17_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n18_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   n18_match_assign_cond_β
                        add              r14d, 1
                        add              rsp, 32
                                                                                        jmp   proc_PAT$2_scanhit
n19_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n18_match_assign_cond_β
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx30_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx30_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx31_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx31_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx31_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx31_0:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, qword ptr [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136]
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
n32_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n33_match_alternate_α
n32_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$3_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n33_match_alternate_α:
                        mov              dword ptr [rbp + 64], r14d
                        lea              rax, [rip + .Lx40_21]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n36_match_lit_α
.Lx40_21:
                        lea              rax, [rip + .Lx40_19]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n35_match_lit_α
n33_match_alternate_s0:
                        lea              rax, [rip + .Lx40_40]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n33_match_alternate_as
n33_match_alternate_s1:
                        lea              rax, [rip + .Lx40_41]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n33_match_alternate_as
.Lx40_40:
                                                                                        jmp   n36_match_lit_β
.Lx40_41:
                                                                                        jmp   n35_match_lit_β
n33_match_alternate_as:
                                                                                        jmp   n34_match_assign_cond_α
n33_match_alternate_β:
                        mov              rax, qword ptr [rbp + 72]
                                                                                        jmp   rax
n33_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rax, qword ptr [rbp + 80]
                                                                                        jmp   rax
.Lx40_19:
                                                                                        jmp   n32_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n34_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                        add              rsp, 16
                                                                                        jmp   proc_PAT$3_scanhit
n34_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n33_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_lit_α:
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d
                                                                                        jg    n33_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1936482662
                                                                                        jne   n33_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101
                                                                                        jne   n33_match_alternate_af
                        add              r14d, 5
                                                                                        jmp   n33_match_alternate_s1
n35_match_lit_β:
                        sub              r14d, 5
                                                                                        jmp   n33_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n36_match_lit_α:
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d
                                                                                        jg    n33_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1702195828
                                                                                        jne   n33_match_alternate_af
                        add              r14d, 4
                                                                                        jmp   n33_match_alternate_s0
n36_match_lit_β:
                        sub              r14d, 4
                                                                                        jmp   n33_match_alternate_af
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   .Lx47_0
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx47_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   .Lx48_0
                        mov              eax, dword ptr [rbp + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx48_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx48_0
                        mov              dword ptr [rbp + 136], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx48_0:
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
                        lea              rax, [rip + n51_match_assign_cond_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n49_match_assign_save_α:
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
                                                                                        jmp   n50_match_defer_α
n49_match_assign_save_β:
                        lea              rdi, [rbp + 48]                                # slot
                        call             rt_cap_pop@PLT
                        add              rsp, 64
                                                                                        jmp   proc_PAT$4_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n50_match_defer_α:
                        mov              rax, qword ptr [1879052480]                    # PAT$4$V0
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 8
                                                                                        jne   .Lx54_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx54_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx54_10
.Lx54_9:
                        xor              eax, eax
.Lx54_10:
                        test             rax, rax
                                                                                        jz    .Lx54_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx54_4]
                        lea              rdx, [rip + .Lx54_5]
                                                                                        jmp   rax
.Lx54_4:
                                                                                        jmp   n51_match_assign_cond_α
.Lx54_5:
                                                                                        jmp   n49_match_assign_save_β
.Lx54_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx54_2:
                        test             rax, rax
                                                                                        je    .Lx54_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx54_7]
                        lea              rdx, [rip + .Lx54_8]
                                                                                        jmp   rax
.Lx54_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx54_2
.Lx54_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx54_2
.Lx54_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n49_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx54_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n51_match_assign_cond_α
.Lx54_6:
                        add              rsp, 16
                                                                                        jmp   n49_match_assign_save_β
n50_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n51_match_assign_cond_α:
                        lea              rdi, [rbp + 48]                                # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S3]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                        add              rsp, 64
                                                                                        jmp   proc_PAT$4_scanhit
n51_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n50_match_defer_β
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx57_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx57_0:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx58_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx58_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx58_0
                        mov              dword ptr [rbp + 104], eax
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
n59_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx64_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n62_match_defer_α
.Lx64_21:
                        lea              rax, [rip + .Lx64_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n61_match_defer_α
.Lx64_22:
                        lea              rax, [rip + .Lx64_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n60_match_defer_α
n59_match_alternate_s0:
                        lea              rax, [rip + .Lx64_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n59_match_alternate_as
n59_match_alternate_s1:
                        lea              rax, [rip + .Lx64_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n59_match_alternate_as
n59_match_alternate_s2:
                        lea              rax, [rip + .Lx64_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n59_match_alternate_as
.Lx64_40:
                                                                                        jmp   n62_match_defer_β
.Lx64_41:
                                                                                        jmp   n61_match_defer_β
.Lx64_42:
                                                                                        jmp   n60_match_defer_β
n59_match_alternate_as:
                                                                                        jmp   proc_PAT$5_γ
n59_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n59_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx64_19:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n60_match_defer_α:
                        mov              rax, qword ptr [1879052528]                    # PAT$5$V2
                        mov              rdx, qword ptr [1879052536]
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
                                                                                        jmp   n59_match_alternate_s2
.Lx65_5:
                                                                                        jmp   n59_match_alternate_af
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
                                                                                        js    n59_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx65_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n59_match_alternate_s2
.Lx65_6:
                        add              rsp, 16
                                                                                        jmp   n59_match_alternate_af
n60_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n61_match_defer_α:
                        mov              rax, qword ptr [1879052512]                    # PAT$5$V1
                        mov              rdx, qword ptr [1879052520]
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
                        test             rax, rax
                                                                                        jz    .Lx66_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx66_4]
                        lea              rdx, [rip + .Lx66_5]
                                                                                        jmp   rax
.Lx66_4:
                                                                                        jmp   n59_match_alternate_s1
.Lx66_5:
                                                                                        jmp   n59_match_alternate_af
.Lx66_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]                               # varname
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
                                                                                        js    n59_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx66_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n59_match_alternate_s1
.Lx66_6:
                        add              rsp, 16
                                                                                        jmp   n59_match_alternate_af
n61_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n62_match_defer_α:
                        mov              rax, qword ptr [1879052496]                    # PAT$5$V0
                        mov              rdx, qword ptr [1879052504]
                        cmp              eax, 8
                                                                                        jne   .Lx67_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx67_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx67_10
.Lx67_9:
                        xor              eax, eax
.Lx67_10:
                        test             rax, rax
                                                                                        jz    .Lx67_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx67_4]
                        lea              rdx, [rip + .Lx67_5]
                                                                                        jmp   rax
.Lx67_4:
                                                                                        jmp   n59_match_alternate_s0
.Lx67_5:
                                                                                        jmp   n59_match_alternate_af
.Lx67_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx67_2:
                        test             rax, rax
                                                                                        je    .Lx67_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx67_7]
                        lea              rdx, [rip + .Lx67_8]
                                                                                        jmp   rax
.Lx67_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx67_2
.Lx67_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx67_2
.Lx67_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n59_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx67_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n59_match_alternate_s0
.Lx67_6:
                        add              rsp, 16
                                                                                        jmp   n59_match_alternate_af
n62_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx68_0
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx68_0:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx69_0
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx69_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx69_0
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
.Lx69_0:
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
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 160], r8
                        mov              dword ptr [rsp + 152], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
                        lea              rax, [rip + proc_PAT$6_ω]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n70_match_lit_α:
                        sub              rsp, 112
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
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx80_239
                        add              rsp, 112
                                                                                        jmp   proc_PAT$6_scanfail
.Lx80_239:
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        je    .Lx80_240
                        add              rsp, 112
                                                                                        jmp   proc_PAT$6_scanfail
.Lx80_240:
                        add              r14d, 1
                                                                                        jmp   n71_match_assign_save_α
n70_match_lit_β:
                        sub              r14d, 1
                        add              rsp, 112
                                                                                        jmp   proc_PAT$6_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n71_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n72_match_break_α
n71_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n70_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n72_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx84_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx84_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n70_match_lit_β
.Lx84_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx84_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx84_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n70_match_lit_β
.Lx84_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx84_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx84_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n70_match_lit_β
.Lx84_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx84_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx84_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n70_match_lit_β
.Lx84_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx84_1
                        add              ecx, 1
                                                                                        jmp   .Lx84_0
.Lx84_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n73_match_assign_cond_α
n72_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n70_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n73_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S7]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n74_match_lit_α
n73_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n72_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n74_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n73_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   n73_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   n75_match_defer_α
n74_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n73_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n75_match_defer_α:
                        mov              rax, qword ptr [1879052544]                    # PAT$6$V0
                        mov              rdx, qword ptr [1879052552]
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
                        test             rax, rax
                                                                                        jz    .Lx89_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx89_4]
                        lea              rdx, [rip + .Lx89_5]
                                                                                        jmp   rax
.Lx89_4:
                                                                                        jmp   n76_match_lit_α
.Lx89_5:
                                                                                        jmp   n74_match_lit_β
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
                                                                                        js    n74_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx89_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n76_match_lit_α
.Lx89_6:
                        add              rsp, 16
                                                                                        jmp   n74_match_lit_β
n75_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n76_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n75_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 58
                                                                                        jne   n75_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n77_match_defer_α
n76_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n75_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n77_match_defer_α:
                        mov              rax, qword ptr [1879052560]                    # PAT$6$V1
                        mov              rdx, qword ptr [1879052568]
                        cmp              eax, 8
                                                                                        jne   .Lx92_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx92_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx92_10
.Lx92_9:
                        xor              eax, eax
.Lx92_10:
                        test             rax, rax
                                                                                        jz    .Lx92_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx92_4]
                        lea              rdx, [rip + .Lx92_5]
                                                                                        jmp   rax
.Lx92_4:
                                                                                        jmp   n78_match_defer_α
.Lx92_5:
                                                                                        jmp   n76_match_lit_β
.Lx92_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx92_2:
                        test             rax, rax
                                                                                        je    .Lx92_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx92_7]
                        lea              rdx, [rip + .Lx92_8]
                                                                                        jmp   rax
.Lx92_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx92_2
.Lx92_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx92_2
.Lx92_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n76_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx92_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n78_match_defer_α
.Lx92_6:
                        add              rsp, 16
                                                                                        jmp   n76_match_lit_β
n77_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n78_match_defer_α:
                        mov              rax, qword ptr [1879052576]                    # PAT$6$V2
                        mov              rdx, qword ptr [1879052584]
                        cmp              eax, 8
                                                                                        jne   .Lx93_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx93_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx93_10
.Lx93_9:
                        xor              eax, eax
.Lx93_10:
                        test             rax, rax
                                                                                        jz    .Lx93_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx93_4]
                        lea              rdx, [rip + .Lx93_5]
                                                                                        jmp   rax
.Lx93_4:
                        add              rsp, 112
                                                                                        jmp   proc_PAT$6_scanhit
.Lx93_5:
                                                                                        jmp   n77_match_defer_β
.Lx93_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx93_2:
                        test             rax, rax
                                                                                        je    .Lx93_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx93_7]
                        lea              rdx, [rip + .Lx93_8]
                                                                                        jmp   rax
.Lx93_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx93_2
.Lx93_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx93_2
.Lx93_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n77_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx93_6]
                        sub              rsp, 8
                        push             rax
                        add              rsp, 112
                                                                                        jmp   proc_PAT$6_scanhit
.Lx93_6:
                        add              rsp, 16
                                                                                        jmp   n77_match_defer_β
n78_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx94_0
                        mov              ecx, dword ptr [rbp + 152]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx94_0:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx95_0
                        mov              eax, dword ptr [rbp + 152]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx95_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx95_0
                        mov              dword ptr [rbp + 152], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_attempt
.Lx95_0:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$6_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              rbp, qword ptr [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                        mov              rax, qword ptr [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, qword ptr [rbp + 184]
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
                        mov              esi, 96
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
                        mov              esi, 144
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
.Lgvan3:                .string          "SVAL"
.Lgvan4:                .string          "num"
.Lgvan5:                .string          "NVAL"
.Lgvan6:                .string          "bool"
.Lgvan7:                .string          "BVAL"
.Lgvan8:                .string          "value"
.Lgvan9:                .string          "pair"
.Lgvan10:               .string          "KVAL"
.Lgvan11:               .string          "s"
.Lgvan12:               .string          "PAT$4$V0"
.Lgvan13:               .string          "PAT$5$V0"
.Lgvan14:               .string          "PAT$5$V1"
.Lgvan15:               .string          "PAT$5$V2"
.Lgvan16:               .string          "PAT$6$V0"
.Lgvan17:               .string          "PAT$6$V1"
.Lgvan18:               .string          "PAT$6$V2"
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
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 19
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 19
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
#         ws     = SPAN(' ') | LEN(0)
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:
                                                                                        jmp   n97_lit_string_α
n96_statement_begin_β:
                                                                                        jmp   n101_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n98_call_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n98_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd189:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd189]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx188_240
                                                                                        jmp   n100_statement_end_α
.Lx188_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n99_assign_α
n98_call_β:
                                                                                        jmp   n100_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # ws
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n100_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n101_statement_begin_α
#=======================================================================================================================
#         digits = SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_begin_α:
                                                                                        jmp   n102_lit_string_α
n101_statement_begin_β:
                                                                                        jmp   n106_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n103_call_α
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n103_call_α:
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
                                                                                        jmp   n105_statement_end_α
.Lx196_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n104_assign_α
n103_call_β:
                                                                                        jmp   n105_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # digits
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n105_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n106_statement_begin_α
#=======================================================================================================================
#         str    = '"' BREAK('"') . SVAL '"'
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_begin_α:
                                                                                        jmp   n107_lit_string_α
n106_statement_begin_β:
                                                                                        jmp   n111_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n108_call_α
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n108_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd205:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd205]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx204_240
                                                                                        jmp   n110_statement_end_α
.Lx204_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n109_assign_α
n108_call_β:
                                                                                        jmp   n110_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # str
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n110_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n111_statement_begin_α
#=======================================================================================================================
#         num    = digits . NVAL
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α:
                                                                                        jmp   n112_var_α
n111_statement_begin_β:
                                                                                        jmp   n118_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # digits
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n113_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n113_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052480], rax                    # PAT$4$V0
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n114_lit_string_α
n113_assign_β:
                        add              rsp, 16
                                                                                        jmp   n118_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n115_call_α
n114_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n113_assign_β
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
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
.Lrkfnzd215:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd215]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx214_240
                        add              rsp, 16
                                                                                        jmp   n114_lit_string_β
.Lx214_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n116_assign_α
n115_call_β:
                        add              rsp, 16
                                                                                        jmp   n114_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # num
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n117_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n118_statement_begin_α
#=======================================================================================================================
#         bool   = FENCE('true' | 'false') . BVAL
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_begin_α:
                                                                                        jmp   n119_lit_string_α
n118_statement_begin_β:
                                                                                        jmp   n123_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n120_call_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n120_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd223:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd223]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx222_240
                                                                                        jmp   n122_statement_end_α
.Lx222_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n121_assign_α
n120_call_β:
                                                                                        jmp   n122_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # bool
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n122_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n123_statement_begin_α
#=======================================================================================================================
#         value  = FENCE(str | num | bool)
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_begin_α:
                                                                                        jmp   n124_var_α
n123_statement_begin_β:
                                                                                        jmp   n134_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # bool
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n125_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n125_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052528], rax                    # PAT$5$V2
                        mov              qword ptr [1879052536], rdx
                                                                                        jmp   n126_var_α
n125_assign_β:
                        add              rsp, 16
                                                                                        jmp   n134_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # num
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n127_assign_α
n126_var_β:
                        add              rsp, 16
                                                                                        jmp   n125_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052512], rax                    # PAT$5$V1
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n128_var_α
n127_assign_β:
                                                                                        jmp   n126_var_β
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # str
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n129_assign_α
n128_var_β:
                        add              rsp, 16
                                                                                        jmp   n127_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n129_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052496], rax                    # PAT$5$V0
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n130_lit_string_α
n129_assign_β:
                                                                                        jmp   n128_var_β
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n131_call_α
n130_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n129_assign_β
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n131_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd237:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd237]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx236_240
                        add              rsp, 16
                                                                                        jmp   n130_lit_string_β
.Lx236_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n132_assign_α
n131_call_β:
                        add              rsp, 16
                                                                                        jmp   n130_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n132_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # value
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n133_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n134_statement_begin_α
#=======================================================================================================================
#         pair   = '"' BREAK('"') . KVAL '"' ws ':' ws value
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_begin_α:
                                                                                        jmp   n135_var_α
n134_statement_begin_β:
                                                                                        jmp   n145_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # value
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n136_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052576], rax                    # PAT$6$V2
                        mov              qword ptr [1879052584], rdx
                                                                                        jmp   n137_var_α
n136_assign_β:
                        add              rsp, 16
                                                                                        jmp   n145_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # ws
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n138_assign_α
n137_var_β:
                        add              rsp, 16
                                                                                        jmp   n136_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n138_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052560], rax                    # PAT$6$V1
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n139_var_α
n138_assign_β:
                                                                                        jmp   n137_var_β
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # ws
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n140_assign_α
n139_var_β:
                        add              rsp, 16
                                                                                        jmp   n138_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052544], rax                    # PAT$6$V0
                        mov              qword ptr [1879052552], rdx
                                                                                        jmp   n141_lit_string_α
n140_assign_β:
                                                                                        jmp   n139_var_β
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n142_call_α
n141_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n140_assign_β
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd251:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd251]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx250_240
                        add              rsp, 16
                                                                                        jmp   n141_lit_string_β
.Lx250_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n143_assign_α
n142_call_β:
                        add              rsp, 16
                                                                                        jmp   n141_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n143_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # pair
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n144_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n145_statement_begin_α
#=======================================================================================================================
#         s = '"age":42'
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_begin_α:
                                                                                        jmp   n146_lit_string_α
n145_statement_begin_β:
                                                                                        jmp   n149_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n147_assign_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "\"age\":42"
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # s
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n148_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n149_statement_begin_α
#=======================================================================================================================
#         s POS(0) pair RPOS(0)                                 :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_begin_α:
                                                                                        jmp   n150_var_α
n149_statement_begin_β:
                                                                                        jmp   n179_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # s
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n151_var_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # pair
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n152_assign_α
n151_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n179_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx265_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n153_match_begin_α
n152_assign_β:
                                                                                        jmp   n151_var_β
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n153_match_begin_α:
                        sub              rsp, 688
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
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              rdi, qword ptr [rsp + 704]                     # var
                        mov              rsi, qword ptr [rsp + 712]
                        mov              qword ptr [rbp + 656], r13                     # outer_Σ
                        mov              qword ptr [rbp + 664], r14                     # outer_δ
                        mov              qword ptr [rbp + 672], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 680], rax                     # cap_gen
                        mov              qword ptr [rbp + 648], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 624], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 608], 0                       # start_δ
.Lx267_0:
                        mov              r14d, dword ptr [rbp + 608]
                                                                                        jmp   n154_lit_integer_α
n153_match_begin_β:
                        add              dword ptr [rbp + 608], 1
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, r15d
                                                                                        jg    .Lx267_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx267_1
                                                                                        jmp   .Lx267_0
.Lx267_1:
n153_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 624]
                        mov              r13, qword ptr [rbp + 656]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 664]                     # outer_δ
                        mov              r15, qword ptr [rbp + 672]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 680]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 648]                     # old_rbp
                        add              rsp, 688
                                                                                        jmp   n152_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n155_match_pos_α
.Lx268_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n155_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n153_match_begin_β
                                                                                        jmp   n156_match_defer_α
n155_match_pos_β:
                                                                                        jmp   n153_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n156_match_defer_α:
                        lea              rdi, [rip + .S11]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx270_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx270_4]
                        lea              rdx, [rip + .Lx270_5]
                                                                                        jmp   rax
.Lx270_4:
                                                                                        jmp   n157_lit_integer_α
.Lx270_5:
                                                                                        jmp   n153_match_begin_β
.Lx270_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S11]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx270_2:
                        test             rax, rax
                                                                                        je    .Lx270_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx270_7]
                        lea              rdx, [rip + .Lx270_8]
                                                                                        jmp   rax
.Lx270_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx270_2
.Lx270_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx270_2
.Lx270_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n153_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx270_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n157_lit_integer_α
.Lx270_6:
                        add              rsp, 16
                                                                                        jmp   n153_match_begin_β
n156_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n158_match_rpos_α
.Lx271_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n158_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n156_match_defer_β
                                                                                        jmp   n159_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n159_match_end_α:
                        mov              r10, r12
.Lx274_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx274_9
                        mov              rsp, qword ptr [rbp + 624]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx274_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx274_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx274_1:
                        test             rax, rax
                                                                                        je    .Lx274_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx274_3]
                        lea              rdx, [rip + .Lx274_4]
                                                                                        jmp   rax
.Lx274_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx274_1
.Lx274_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx274_1
.Lx274_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 656]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 664]                     # outer_δ
                        mov              r15, qword ptr [rbp + 672]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 680]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 648]                     # old_rbp
                                                                                        jmp   n160_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_end_α:
                        add              rsp, 752
                                                                                        jmp   n161_statement_begin_α
#=======================================================================================================================
# YES     OUTPUT = 'k=' KVAL ' s=' SVAL ' n=' NVAL ' b=' BVAL   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_begin_α:
                                                                                        jmp   n162_lit_string_α
n161_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n163_var_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "k="
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # KVAL
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n164_binop_α
n163_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n164_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n165_lit_string_α
n164_binop_β:
                        add              rsp, 16
                                                                                        jmp   n163_var_β
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n166_binop_α
n165_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n164_binop_β
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          " s="
#-----------------------------------------------------------------------------------------------------------------------
n166_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n167_var_α
n166_binop_β:
                        add              rsp, 16
                                                                                        jmp   n165_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # SVAL
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n168_binop_α
n167_var_β:
                        add              rsp, 16
                                                                                        jmp   n166_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n168_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n169_lit_string_α
n168_binop_β:
                        add              rsp, 16
                                                                                        jmp   n167_var_β
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n170_binop_α
n169_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n168_binop_β
.Lx286_0:
                        .quad            .Lx286_0_s
.Lx286_0_s:
                        .string          " n="
#-----------------------------------------------------------------------------------------------------------------------
n170_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n171_var_α
n170_binop_β:
                        add              rsp, 16
                                                                                        jmp   n169_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # NVAL
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n172_binop_α
n171_var_β:
                        add              rsp, 16
                                                                                        jmp   n170_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n172_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n173_lit_string_α
n172_binop_β:
                        add              rsp, 16
                                                                                        jmp   n171_var_β
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n174_binop_α
n173_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n172_binop_β
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          " b="
#-----------------------------------------------------------------------------------------------------------------------
n174_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n175_var_α
n174_binop_β:
                        add              rsp, 16
                                                                                        jmp   n173_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n175_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # BVAL
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n176_binop_α
n175_var_β:
                        add              rsp, 16
                                                                                        jmp   n174_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n176_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n177_assign_α
n176_binop_β:
                        add              rsp, 16
                                                                                        jmp   n175_var_β
#-----------------------------------------------------------------------------------------------------------------------
n177_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx294_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n178_statement_end_α
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_end_α:
                        add              rsp, 240
                                                                                        jmp   main_γ
#=======================================================================================================================
# NO      OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_begin_α:
                                                                                        jmp   n180_lit_string_α
n179_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n181_assign_α
.Lx299_0:
                        .quad            .Lx299_0_s
.Lx299_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n181_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx300_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n182_statement_end_α
.Lx300_0:
                        .quad            .Lx300_0_s
.Lx300_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n183_goto_α:
                                                                                        jmp   n161_statement_begin_α
n183_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n184_goto_α:
                                                                                        jmp   n179_statement_begin_α
n184_goto_β:
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
.S0:                    .string          "SVAL"
.S1:                    .string          "BVAL"
.S2:                    .string          "PAT$4$V0"
.S3:                    .string          "NVAL"
.S4:                    .string          "PAT$5$V2"
.S5:                    .string          "PAT$5$V1"
.S6:                    .string          "PAT$5$V0"
.S7:                    .string          "KVAL"
.S8:                    .string          "PAT$6$V0"
.S9:                    .string          "PAT$6$V1"
.S10:                   .string          "PAT$6$V2"
.S11:                   .string          "PATV$0"
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
