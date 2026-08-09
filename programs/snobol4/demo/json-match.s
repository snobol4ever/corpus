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
                        lea              rax, [rip + proc_PAT$0_ω]
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
                                                                                        jmp   n2_match_span_β
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
                                                                                        jmp   n0_match_alternate_s1
n1_match_lit_β:
                                                                                        jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n2_match_span_α:
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx8_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx8_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx8_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx8_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx8_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx8_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx8_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx8_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx8_1
                        add              ecx, 1
                                                                                        jmp   .Lx8_0
.Lx8_1:
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
                                                                                        jne   .Lx9_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx9_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx10_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx10_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx10_0
                        mov              dword ptr [rbp + 104], eax
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
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        sub              rsp, 400
                        mov              qword ptr [rsp + 376], rcx
                        mov              qword ptr [rsp + 384], rdx
                        mov              qword ptr [rsp + 392], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 368], r8
                        mov              dword ptr [rsp + 360], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + proc_PAT$2_ω]
                        mov              qword ptr [rbp + 336], rax
#-----------------------------------------------------------------------------------------------------------------------
n11_match_fence1_α:
                        mov              qword ptr [rbp + 288], rsp
                        mov              qword ptr [rbp + 320], rsp
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
                                                                                        jmp   n34_match_alternate_α
n11_match_fence1_as:
                        mov              rsp, rbp
                        pop              rbp
                        mov              rsp, qword ptr [rbp + 320]
                                                                                        jmp   n12_match_alternate_α
n11_match_fence1_af:
                        mov              rsp, rbp
                        pop              rbp
n11_match_fence1_β:
                        mov              rsp, qword ptr [rbp + 320]
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_match_alternate_α:
                        mov              dword ptr [rbp + 192], r14d
                        lea              rax, [rip + .Lx40_21]
                        mov              qword ptr [rbp + 208], rax
                                                                                        jmp   n33_match_lit_α
.Lx40_21:
                        lea              rax, [rip + .Lx40_19]
                        mov              qword ptr [rbp + 208], rax
                                                                                        jmp   n28_match_any_α
n12_match_alternate_s0:
                        lea              rax, [rip + .Lx40_40]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n12_match_alternate_as
n12_match_alternate_s1:
                        lea              rax, [rip + .Lx40_41]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n12_match_alternate_as
.Lx40_40:
                                                                                        jmp   n33_match_lit_β
.Lx40_41:
                                                                                        jmp   n29_match_fence1_β
n12_match_alternate_as:
                                                                                        jmp   n13_match_fence1_α
n12_match_alternate_β:
                        mov              rax, qword ptr [rbp + 200]
                                                                                        jmp   rax
n12_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 192]
                        mov              rax, qword ptr [rbp + 208]
                                                                                        jmp   rax
.Lx40_19:
                                                                                        jmp   n11_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_fence1_α:
                        mov              qword ptr [rbp + 128], rsp
                        mov              qword ptr [rbp + 160], rsp
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
                                                                                        jmp   n23_match_alternate_α
n13_match_fence1_as:
                        mov              rsp, rbp
                        pop              rbp
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n14_match_fence1_α
n13_match_fence1_af:
                        mov              rsp, rbp
                        pop              rbp
n13_match_fence1_β:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n12_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_fence1_α:
                        mov              qword ptr [rbp + 16], rsp
                        mov              qword ptr [rbp + 48], rsp
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
                                                                                        jmp   n15_match_alternate_α
n14_match_fence1_as:
                        mov              rsp, rbp
                        pop              rbp
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   proc_PAT$2_γ
n14_match_fence1_af:
                        mov              rsp, rbp
                        pop              rbp
n14_match_fence1_β:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n13_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx46_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n17_match_any_α
.Lx46_21:
                        lea              rax, [rip + .Lx46_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n16_match_lit_α
n15_match_alternate_s0:
                        lea              rax, [rip + .Lx46_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n15_match_alternate_as
n15_match_alternate_s1:
                        lea              rax, [rip + .Lx46_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n15_match_alternate_as
.Lx46_40:
                                                                                        jmp   n19_match_span_β
.Lx46_41:
                                                                                        jmp   n16_match_lit_β
n15_match_alternate_as:
                                                                                        jmp   n14_match_fence1_as
n15_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n15_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx46_19:
                                                                                        jmp   n14_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n16_match_lit_α:
                                                                                        jmp   n15_match_alternate_s1
n16_match_lit_β:
                                                                                        jmp   n15_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n17_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n15_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 101
                                                                                        je    .Lx50_0
                        cmp              esi, 69
                                                                                        je    .Lx50_0
                                                                                        jmp   n15_match_alternate_af
.Lx50_0:
                        add              r14d, 1
                                                                                        jmp   n18_match_fence1_α
n17_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n15_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n18_match_fence1_α:
                        mov              qword ptr [rbp + 64], rsp
                        mov              qword ptr [rbp + 96], rsp
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
                                                                                        jmp   n20_match_alternate_α
n18_match_fence1_as:
                        mov              rsp, rbp
                        pop              rbp
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n19_match_span_α
n18_match_fence1_af:
                        mov              rsp, rbp
                        pop              rbp
n18_match_fence1_β:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n17_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx54_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx54_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx54_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx54_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx54_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx54_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx54_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx54_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx54_1
                        add              ecx, 1
                                                                                        jmp   .Lx54_0
.Lx54_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx54_240
                        add              rsp, 16
                                                                                        jmp   n18_match_fence1_β
.Lx54_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n15_match_alternate_s0
n19_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n18_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_alternate_α:
                        mov              dword ptr [rbp + 80], r14d
                        lea              rax, [rip + .Lx56_21]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   n22_match_any_α
.Lx56_21:
                        lea              rax, [rip + .Lx56_19]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   n21_match_lit_α
n20_match_alternate_s0:
                        lea              rax, [rip + .Lx56_40]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n20_match_alternate_as
n20_match_alternate_s1:
                        lea              rax, [rip + .Lx56_41]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n20_match_alternate_as
.Lx56_40:
                                                                                        jmp   n22_match_any_β
.Lx56_41:
                                                                                        jmp   n21_match_lit_β
n20_match_alternate_as:
                                                                                        jmp   n18_match_fence1_as
n20_match_alternate_β:
                        mov              rax, qword ptr [rbp + 88]
                                                                                        jmp   rax
n20_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rax, qword ptr [rbp + 96]
                                                                                        jmp   rax
.Lx56_19:
                                                                                        jmp   n18_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n21_match_lit_α:
                                                                                        jmp   n20_match_alternate_s1
n21_match_lit_β:
                                                                                        jmp   n20_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n22_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n20_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43
                                                                                        je    .Lx60_0
                        cmp              esi, 45
                                                                                        je    .Lx60_0
                                                                                        jmp   n20_match_alternate_af
.Lx60_0:
                        add              r14d, 1
                                                                                        jmp   n20_match_alternate_s0
n22_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n20_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n23_match_alternate_α:
                        mov              dword ptr [rbp + 144], r14d
                        lea              rax, [rip + .Lx62_21]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n26_match_lit_α
.Lx62_21:
                        lea              rax, [rip + .Lx62_19]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n24_match_lit_α
n23_match_alternate_s0:
                        lea              rax, [rip + .Lx62_40]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n23_match_alternate_as
n23_match_alternate_s1:
                        lea              rax, [rip + .Lx62_41]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n23_match_alternate_as
.Lx62_40:
                                                                                        jmp   n25_goto_β
.Lx62_41:
                                                                                        jmp   n24_match_lit_β
n23_match_alternate_as:
                                                                                        jmp   n13_match_fence1_as
n23_match_alternate_β:
                        mov              rax, qword ptr [rbp + 152]
                                                                                        jmp   rax
n23_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 144]
                        mov              rax, qword ptr [rbp + 160]
                                                                                        jmp   rax
.Lx62_19:
                                                                                        jmp   n13_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n24_match_lit_α:
                                                                                        jmp   n23_match_alternate_s1
n24_match_lit_β:
                                                                                        jmp   n23_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n25_goto_α:
                                                                                        jmp   n23_match_alternate_af
n25_goto_β:
                                                                                        jmp   n23_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n26_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n23_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 46
                                                                                        jne   n23_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n27_match_span_α
n26_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n23_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n27_match_span_α:
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx69_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx69_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx69_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx69_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx69_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx69_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx69_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx69_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx69_1
                        add              ecx, 1
                                                                                        jmp   .Lx69_0
.Lx69_1:
                        cmp              ecx, r14d
                                                                                        jle   n26_match_lit_β
                        mov              dword ptr [rbp + 180], r14d
                        mov              r14d, ecx
                                                                                        jmp   n23_match_alternate_s0
n27_match_span_β:
                        mov              r14d, dword ptr [rbp + 180]
                                                                                        jmp   n26_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n28_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n12_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C2]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n12_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n29_match_fence1_α
n28_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n12_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n29_match_fence1_α:
                        mov              qword ptr [rbp + 224], rsp
                        mov              qword ptr [rbp + 256], rsp
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
                                                                                        jmp   n30_match_alternate_α
n29_match_fence1_as:
                        mov              rsp, rbp
                        pop              rbp
                        mov              rsp, qword ptr [rbp + 256]
                                                                                        jmp   n12_match_alternate_s1
n29_match_fence1_af:
                        mov              rsp, rbp
                        pop              rbp
n29_match_fence1_β:
                        mov              rsp, qword ptr [rbp + 256]
                                                                                        jmp   n28_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n30_match_alternate_α:
                        mov              dword ptr [rbp + 240], r14d
                        lea              rax, [rip + .Lx75_21]
                        mov              qword ptr [rbp + 256], rax
                                                                                        jmp   n32_match_span_α
.Lx75_21:
                        lea              rax, [rip + .Lx75_19]
                        mov              qword ptr [rbp + 256], rax
                                                                                        jmp   n31_match_lit_α
n30_match_alternate_s0:
                        lea              rax, [rip + .Lx75_40]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n30_match_alternate_as
n30_match_alternate_s1:
                        lea              rax, [rip + .Lx75_41]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n30_match_alternate_as
.Lx75_40:
                                                                                        jmp   n32_match_span_β
.Lx75_41:
                                                                                        jmp   n31_match_lit_β
n30_match_alternate_as:
                                                                                        jmp   n29_match_fence1_as
n30_match_alternate_β:
                        mov              rax, qword ptr [rbp + 248]
                                                                                        jmp   rax
n30_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 240]
                        mov              rax, qword ptr [rbp + 256]
                                                                                        jmp   rax
.Lx75_19:
                                                                                        jmp   n29_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n31_match_lit_α:
                                                                                        jmp   n30_match_alternate_s1
n31_match_lit_β:
                                                                                        jmp   n30_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n32_match_span_α:
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx79_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx79_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx79_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx79_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx79_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx79_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx79_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx79_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx79_1
                        add              ecx, 1
                                                                                        jmp   .Lx79_0
.Lx79_1:
                        cmp              ecx, r14d
                                                                                        jle   n30_match_alternate_af
                        mov              dword ptr [rbp + 276], r14d
                        mov              r14d, ecx
                                                                                        jmp   n30_match_alternate_s0
n32_match_span_β:
                        mov              r14d, dword ptr [rbp + 276]
                                                                                        jmp   n30_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n33_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n12_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 48
                                                                                        jne   n12_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n12_match_alternate_s0
n33_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n12_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n34_match_alternate_α:
                        mov              dword ptr [rbp + 304], r14d
                        lea              rax, [rip + .Lx83_21]
                        mov              qword ptr [rbp + 320], rax
                                                                                        jmp   n36_match_lit_α
.Lx83_21:
                        lea              rax, [rip + .Lx83_19]
                        mov              qword ptr [rbp + 320], rax
                                                                                        jmp   n35_match_lit_α
n34_match_alternate_s0:
                        lea              rax, [rip + .Lx83_40]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n34_match_alternate_as
n34_match_alternate_s1:
                        lea              rax, [rip + .Lx83_41]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n34_match_alternate_as
.Lx83_40:
                                                                                        jmp   n36_match_lit_β
.Lx83_41:
                                                                                        jmp   n35_match_lit_β
n34_match_alternate_as:
                                                                                        jmp   n11_match_fence1_as
n34_match_alternate_β:
                        mov              rax, qword ptr [rbp + 312]
                                                                                        jmp   rax
n34_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 304]
                        mov              rax, qword ptr [rbp + 320]
                                                                                        jmp   rax
.Lx83_19:
                                                                                        jmp   n11_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n35_match_lit_α:
                                                                                        jmp   n34_match_alternate_s1
n35_match_lit_β:
                                                                                        jmp   n34_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n36_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n34_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n34_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n34_match_alternate_s0
n36_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n34_match_alternate_af
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 368], 1
                                                                                        jne   .Lx88_0
                        mov              ecx, dword ptr [rbp + 360]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx88_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 368], 1
                                                                                        jne   .Lx89_0
                        mov              eax, dword ptr [rbp + 360]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx89_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx89_0
                        mov              dword ptr [rbp + 360], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx89_0:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 336]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              rbp, qword ptr [rbp + 392]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, qword ptr [rbp + 384]
                        lea              rsp, [rbp + 400]
                        mov              rbp, qword ptr [rbp + 392]
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
                        lea              rax, [rip + proc_PAT$3_ω]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n90_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052528]                    # PAT$3$V0
                        mov              rdx, qword ptr [1879052536]
                        cmp              eax, 8
                                                                                        jne   .Lx99_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx99_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx99_10
.Lx99_9:
                        xor              eax, eax
.Lx99_10:
                        test             rax, rax
                                                                                        jz    .Lx99_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx99_4]
                        lea              rdx, [rip + .Lx99_5]
                                                                                        jmp   rax
.Lx99_4:
                                                                                        jmp   n91_match_alternate_α
.Lx99_5:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$3_scanfail
.Lx99_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx99_2:
                        test             rax, rax
                                                                                        je    .Lx99_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx99_7]
                        lea              rdx, [rip + .Lx99_8]
                                                                                        jmp   rax
.Lx99_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx99_2
.Lx99_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx99_2
.Lx99_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx99_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$3_scanfail
.Lx99_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx99_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n91_match_alternate_α
.Lx99_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$3_scanfail
n90_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n91_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx101_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n98_match_any_α
.Lx101_21:
                        lea              rax, [rip + .Lx101_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n93_match_lit_α
n91_match_alternate_s0:
                        lea              rax, [rip + .Lx101_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n91_match_alternate_as
n91_match_alternate_s1:
                        lea              rax, [rip + .Lx101_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n91_match_alternate_as
.Lx101_40:
                                                                                        jmp   n98_match_any_β
.Lx101_41:
                                                                                        jmp   n92_goto_β
n91_match_alternate_as:
                                                                                        jmp   proc_PAT$3_γ
n91_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n91_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx101_19:
                                                                                        jmp   n90_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n92_goto_α:
                                                                                        jmp   n91_match_alternate_af
n92_goto_β:
                                                                                        jmp   n91_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n93_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n91_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 117
                                                                                        jne   n91_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n94_match_any_α
n93_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n91_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n94_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n93_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C3]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n93_match_lit_β
                        add              r14d, 1
                                                                                        jmp   n95_match_any_α
n94_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n93_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n95_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n94_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C3]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n94_match_any_β
                        add              r14d, 1
                                                                                        jmp   n96_match_any_α
n95_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n94_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n96_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n95_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C3]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n95_match_any_β
                        add              r14d, 1
                                                                                        jmp   n97_match_any_α
n96_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n95_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n97_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n96_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C3]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n96_match_any_β
                        add              r14d, 1
                                                                                        jmp   n91_match_alternate_s1
n97_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n96_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n98_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n91_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n91_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n91_match_alternate_s0
n98_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n91_match_alternate_af
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx115_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx115_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx116_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx116_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx116_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx116_0:
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
                        sub              rsp, 240
                        mov              qword ptr [rsp + 216], rcx
                        mov              qword ptr [rsp + 224], rdx
                        mov              qword ptr [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 208], r8
                        mov              dword ptr [rsp + 200], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + proc_PAT$4_ω]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n117_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$4_scanfail
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   proc_PAT$4_scanfail
                        add              r14d, 1
                                                                                        jmp   n118_match_defer_α
n117_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$4_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n118_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052544]                    # PAT$4$V0
                        mov              rdx, qword ptr [1879052552]
                        cmp              eax, 8
                                                                                        jne   .Lx125_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx125_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx125_10
.Lx125_9:
                        xor              eax, eax
.Lx125_10:
                        test             rax, rax
                                                                                        jz    .Lx125_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx125_4]
                        lea              rdx, [rip + .Lx125_5]
                                                                                        jmp   rax
.Lx125_4:
                                                                                        jmp   n119_match_arbno_α
.Lx125_5:
                        add              rsp, 16
                                                                                        jmp   n117_match_lit_β
.Lx125_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx125_2:
                        test             rax, rax
                                                                                        je    .Lx125_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx125_7]
                        lea              rdx, [rip + .Lx125_8]
                                                                                        jmp   rax
.Lx125_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx125_2
.Lx125_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx125_2
.Lx125_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx125_240
                        add              rsp, 16
                                                                                        jmp   n117_match_lit_β
.Lx125_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx125_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n119_match_arbno_α
.Lx125_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n117_match_lit_β
n118_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n119_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 96], rbp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   n120_match_lit_α
n119_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 68]
                        mov              rax, qword ptr [rbp + 80]
                        sub              rsp, 96
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                                                                                        jmp   n121_match_defer_α
n119_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n121_match_defer_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   n120_match_lit_α
n119_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 184]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx127_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n121_match_defer_β
.Lx127_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rbp, qword ptr [rbp + 96]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n118_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n120_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n119_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   n119_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$4_scanhit
n120_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n119_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n121_match_defer_α:
                        mov              rax, qword ptr [1879052560]                    # PAT$4$V1
                        mov              rdx, qword ptr [1879052568]
                        cmp              eax, 8
                                                                                        jne   .Lx130_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx130_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx130_10
.Lx130_9:
                        xor              eax, eax
.Lx130_10:
                        test             rax, rax
                                                                                        jz    .Lx130_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx130_4]
                        lea              rdx, [rip + .Lx130_5]
                                                                                        jmp   rax
.Lx130_4:
                                                                                        jmp   n122_match_defer_α
.Lx130_5:
                                                                                        jmp   n119_match_arbno_af
.Lx130_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx130_2:
                        test             rax, rax
                                                                                        je    .Lx130_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx130_7]
                        lea              rdx, [rip + .Lx130_8]
                                                                                        jmp   rax
.Lx130_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx130_2
.Lx130_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx130_2
.Lx130_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n119_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx130_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n122_match_defer_α
.Lx130_6:
                        add              rsp, 16
                                                                                        jmp   n119_match_arbno_af
n121_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n122_match_defer_α:
                        mov              rax, qword ptr [1879052576]                    # PAT$4$V2
                        mov              rdx, qword ptr [1879052584]
                        cmp              eax, 8
                                                                                        jne   .Lx131_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx131_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx131_10
.Lx131_9:
                        xor              eax, eax
.Lx131_10:
                        test             rax, rax
                                                                                        jz    .Lx131_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx131_4]
                        lea              rdx, [rip + .Lx131_5]
                                                                                        jmp   rax
.Lx131_4:
                                                                                        jmp   n119_match_arbno_as
.Lx131_5:
                                                                                        jmp   n121_match_defer_β
.Lx131_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx131_2:
                        test             rax, rax
                                                                                        je    .Lx131_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx131_7]
                        lea              rdx, [rip + .Lx131_8]
                                                                                        jmp   rax
.Lx131_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx131_2
.Lx131_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx131_2
.Lx131_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n121_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx131_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n119_match_arbno_as
.Lx131_6:
                        add              rsp, 16
                                                                                        jmp   n121_match_defer_β
n122_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 208], 1
                                                                                        jne   .Lx132_0
                        mov              ecx, dword ptr [rbp + 200]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx132_0:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 208], 1
                                                                                        jne   .Lx133_0
                        mov              eax, dword ptr [rbp + 200]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx133_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx133_0
                        mov              dword ptr [rbp + 200], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
.Lx133_0:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              rbp, qword ptr [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, qword ptr [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, qword ptr [rbp + 232]
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
n134_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052592]                    # PAT$5$V0
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 8
                                                                                        jne   .Lx139_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx139_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx139_10
.Lx139_9:
                        xor              eax, eax
.Lx139_10:
                        test             rax, rax
                                                                                        jz    .Lx139_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx139_4]
                        lea              rdx, [rip + .Lx139_5]
                                                                                        jmp   rax
.Lx139_4:
                                                                                        jmp   n135_match_defer_α
.Lx139_5:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_scanfail
.Lx139_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx139_2:
                        test             rax, rax
                                                                                        je    .Lx139_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx139_7]
                        lea              rdx, [rip + .Lx139_8]
                                                                                        jmp   rax
.Lx139_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx139_2
.Lx139_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx139_2
.Lx139_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx139_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_scanfail
.Lx139_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx139_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n135_match_defer_α
.Lx139_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_scanfail
n134_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n135_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052608]                    # PAT$5$V1
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 8
                                                                                        jne   .Lx140_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx140_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx140_10
.Lx140_9:
                        xor              eax, eax
.Lx140_10:
                        test             rax, rax
                                                                                        jz    .Lx140_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx140_4]
                        lea              rdx, [rip + .Lx140_5]
                                                                                        jmp   rax
.Lx140_4:
                                                                                        jmp   n136_match_defer_α
.Lx140_5:
                        add              rsp, 16
                                                                                        jmp   n134_match_defer_β
.Lx140_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx140_2:
                        test             rax, rax
                                                                                        je    .Lx140_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx140_7]
                        lea              rdx, [rip + .Lx140_8]
                                                                                        jmp   rax
.Lx140_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx140_2
.Lx140_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx140_2
.Lx140_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx140_240
                        add              rsp, 16
                                                                                        jmp   n134_match_defer_β
.Lx140_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx140_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n136_match_defer_α
.Lx140_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n134_match_defer_β
n135_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n136_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052624]                    # PAT$5$V2
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 8
                                                                                        jne   .Lx141_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx141_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx141_10
.Lx141_9:
                        xor              eax, eax
.Lx141_10:
                        test             rax, rax
                                                                                        jz    .Lx141_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx141_4]
                        lea              rdx, [rip + .Lx141_5]
                                                                                        jmp   rax
.Lx141_4:
                                                                                        jmp   n137_match_lit_α
.Lx141_5:
                        add              rsp, 16
                                                                                        jmp   n135_match_defer_β
.Lx141_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx141_2:
                        test             rax, rax
                                                                                        je    .Lx141_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx141_7]
                        lea              rdx, [rip + .Lx141_8]
                                                                                        jmp   rax
.Lx141_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx141_2
.Lx141_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx141_2
.Lx141_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx141_240
                        add              rsp, 16
                                                                                        jmp   n135_match_defer_β
.Lx141_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx141_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n137_match_lit_α
.Lx141_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n135_match_defer_β
n136_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n137_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n136_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 58
                                                                                        jne   n136_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n138_match_defer_α
n137_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n136_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n138_match_defer_α:
                        sub              rsp, 16
                        mov              qword ptr [rbp + 80], rsp
                        mov              rax, qword ptr [1879052480]                    # jelement
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 8
                                                                                        jne   .Lx144_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx144_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx144_10
.Lx144_9:
                        xor              eax, eax
.Lx144_10:
                        test             rax, rax
                                                                                        jz    .Lx144_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx144_4]
                        lea              rdx, [rip + .Lx144_5]
                                                                                        jmp   rax
.Lx144_4:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   proc_PAT$5_scanhit
.Lx144_5:
                        mov              rsp, qword ptr [rbp + 80]
                        add              rsp, 16
                                                                                        jmp   n137_match_lit_β
.Lx144_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx144_2:
                        test             rax, rax
                                                                                        je    .Lx144_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx144_7]
                        lea              rdx, [rip + .Lx144_8]
                                                                                        jmp   rax
.Lx144_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx144_2
.Lx144_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx144_2
.Lx144_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx144_240
                        add              rsp, 16
                                                                                        jmp   n137_match_lit_β
.Lx144_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx144_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   proc_PAT$5_scanhit
.Lx144_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n137_match_lit_β
n138_match_defer_β:
                        mov              rsp, qword ptr [rbp + 80]
                        add              rsp, 16
                                                                                        jmp   n137_match_lit_β
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx145_0
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx145_0:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx146_0
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx146_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx146_0
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
.Lx146_0:
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
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rcx
                        mov              qword ptr [rsp + 256], rdx
                        mov              qword ptr [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 240], r8
                        mov              dword ptr [rsp + 232], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
                        lea              rax, [rip + proc_PAT$6_ω]
                        mov              qword ptr [rbp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n147_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$6_scanfail
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 123
                                                                                        jne   proc_PAT$6_scanfail
                        add              r14d, 1
                                                                                        jmp   n148_match_alternate_α
n147_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$6_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n148_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx159_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n152_match_defer_α
.Lx159_21:
                        lea              rax, [rip + .Lx159_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n150_match_defer_α
n148_match_alternate_s0:
                        lea              rax, [rip + .Lx159_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n148_match_alternate_as
n148_match_alternate_s1:
                        lea              rax, [rip + .Lx159_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n148_match_alternate_as
.Lx159_40:
                                                                                        jmp   n151_goto_β
.Lx159_41:
                                                                                        jmp   n150_match_defer_β
n148_match_alternate_as:
                                                                                        jmp   n149_match_lit_α
n148_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n148_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx159_19:
                                                                                        jmp   n147_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n149_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n148_match_alternate_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 125
                                                                                        jne   n148_match_alternate_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$6_scanhit
n149_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n148_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n150_match_defer_α:
                        mov              rax, qword ptr [1879052672]                    # PAT$6$V2
                        mov              rdx, qword ptr [1879052680]
                        cmp              eax, 8
                                                                                        jne   .Lx162_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx162_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx162_10
.Lx162_9:
                        xor              eax, eax
.Lx162_10:
                        test             rax, rax
                                                                                        jz    .Lx162_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx162_4]
                        lea              rdx, [rip + .Lx162_5]
                                                                                        jmp   rax
.Lx162_4:
                                                                                        jmp   n148_match_alternate_s1
.Lx162_5:
                                                                                        jmp   n148_match_alternate_af
.Lx162_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx162_2:
                        test             rax, rax
                                                                                        je    .Lx162_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx162_7]
                        lea              rdx, [rip + .Lx162_8]
                                                                                        jmp   rax
.Lx162_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx162_2
.Lx162_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx162_2
.Lx162_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n148_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx162_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n148_match_alternate_s1
.Lx162_6:
                        add              rsp, 16
                                                                                        jmp   n148_match_alternate_af
n150_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n151_goto_α:
                                                                                        jmp   n148_match_alternate_af
n151_goto_β:
                                                                                        jmp   n148_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n152_match_defer_α:
                        mov              rax, qword ptr [1879052640]                    # PAT$6$V0
                        mov              rdx, qword ptr [1879052648]
                        cmp              eax, 8
                                                                                        jne   .Lx164_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx164_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx164_10
.Lx164_9:
                        xor              eax, eax
.Lx164_10:
                        test             rax, rax
                                                                                        jz    .Lx164_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx164_4]
                        lea              rdx, [rip + .Lx164_5]
                                                                                        jmp   rax
.Lx164_4:
                                                                                        jmp   n153_match_arbno_α
.Lx164_5:
                                                                                        jmp   n148_match_alternate_af
.Lx164_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx164_2:
                        test             rax, rax
                                                                                        je    .Lx164_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx164_7]
                        lea              rdx, [rip + .Lx164_8]
                                                                                        jmp   rax
.Lx164_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx164_2
.Lx164_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx164_2
.Lx164_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n148_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx164_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n153_match_arbno_α
.Lx164_6:
                        add              rsp, 16
                                                                                        jmp   n148_match_alternate_af
n152_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n153_match_arbno_α:
                        mov              dword ptr [rbp + 96], r14d
                        mov              dword ptr [rbp + 100], r14d
                        mov              dword ptr [rbp + 104], 0
                        mov              qword ptr [rbp + 120], rsp
                        mov              qword ptr [rbp + 128], rbp
                        mov              qword ptr [rbp + 112], 0
                                                                                        jmp   n148_match_alternate_s0
n153_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 100]
                        mov              rax, qword ptr [rbp + 112]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 112], rsp
                        mov              rbp, rsp
                        add              rbp, -120
                                                                                        jmp   n154_match_lit_α
n153_match_arbno_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              r14d, eax
                                                                                        je    n154_match_lit_β
                        mov              rbp, qword ptr [rbp + 120]
                        mov              eax, dword ptr [rbp + 104]
                        add              eax, 1
                        mov              dword ptr [rbp + 104], eax
                        mov              dword ptr [rbp + 100], r14d
                                                                                        jmp   n148_match_alternate_s0
n153_match_arbno_af:
                        mov              rax, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 120]
                        lea              rsp, [rbp + 200]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 104]
                        test             ecx, ecx
                                                                                        jz    .Lx166_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 104], ecx
                        mov              qword ptr [rbp + 112], rax
                        lea              rbp, [rax + -120]
                                                                                        jmp   n154_match_lit_β
.Lx166_2:
                        mov              r14d, dword ptr [rbp + 96]
                        mov              rbp, qword ptr [rbp + 128]
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   n152_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n154_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n153_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n153_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n155_match_defer_α
n154_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n153_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n155_match_defer_α:
                        mov              rax, qword ptr [1879052656]                    # PAT$6$V1
                        mov              rdx, qword ptr [1879052664]
                        cmp              eax, 8
                                                                                        jne   .Lx169_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx169_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx169_10
.Lx169_9:
                        xor              eax, eax
.Lx169_10:
                        test             rax, rax
                                                                                        jz    .Lx169_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx169_4]
                        lea              rdx, [rip + .Lx169_5]
                                                                                        jmp   rax
.Lx169_4:
                                                                                        jmp   n153_match_arbno_as
.Lx169_5:
                                                                                        jmp   n154_match_lit_β
.Lx169_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx169_2:
                        test             rax, rax
                                                                                        je    .Lx169_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx169_7]
                        lea              rdx, [rip + .Lx169_8]
                                                                                        jmp   rax
.Lx169_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx169_2
.Lx169_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx169_2
.Lx169_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n154_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx169_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n153_match_arbno_as
.Lx169_6:
                        add              rsp, 16
                                                                                        jmp   n154_match_lit_β
n155_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx170_0
                        mov              ecx, dword ptr [rbp + 232]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx170_0:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx171_0
                        mov              eax, dword ptr [rbp + 232]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx171_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx171_0
                        mov              dword ptr [rbp + 232], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_attempt
.Lx171_0:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_β:
                                                                                        jmp   qword ptr [rbp + 208]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$6_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              rbp, qword ptr [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                        mov              rax, qword ptr [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, qword ptr [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$7_α
proc_PAT$7_α:
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rcx
                        mov              qword ptr [rsp + 256], rdx
                        mov              qword ptr [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 240], r8
                        mov              dword ptr [rsp + 232], r14d
proc_PAT$7_attempt:
proc_PAT$7_α_body:
                        lea              rax, [rip + proc_PAT$7_ω]
                        mov              qword ptr [rbp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n172_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$7_scanfail
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 91
                                                                                        jne   proc_PAT$7_scanfail
                        add              r14d, 1
                                                                                        jmp   n173_match_alternate_α
n172_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$7_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n173_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx184_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n177_match_defer_α
.Lx184_21:
                        lea              rax, [rip + .Lx184_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n175_match_defer_α
n173_match_alternate_s0:
                        lea              rax, [rip + .Lx184_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n173_match_alternate_as
n173_match_alternate_s1:
                        lea              rax, [rip + .Lx184_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n173_match_alternate_as
.Lx184_40:
                                                                                        jmp   n176_goto_β
.Lx184_41:
                                                                                        jmp   n175_match_defer_β
n173_match_alternate_as:
                                                                                        jmp   n174_match_lit_α
n173_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n173_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx184_19:
                                                                                        jmp   n172_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n174_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n173_match_alternate_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 93
                                                                                        jne   n173_match_alternate_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$7_scanhit
n174_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n173_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n175_match_defer_α:
                        mov              rax, qword ptr [1879052688]                    # PAT$7$V0
                        mov              rdx, qword ptr [1879052696]
                        cmp              eax, 8
                                                                                        jne   .Lx187_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx187_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx187_10
.Lx187_9:
                        xor              eax, eax
.Lx187_10:
                        test             rax, rax
                                                                                        jz    .Lx187_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx187_4]
                        lea              rdx, [rip + .Lx187_5]
                                                                                        jmp   rax
.Lx187_4:
                                                                                        jmp   n173_match_alternate_s1
.Lx187_5:
                                                                                        jmp   n173_match_alternate_af
.Lx187_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S11]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx187_2:
                        test             rax, rax
                                                                                        je    .Lx187_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx187_7]
                        lea              rdx, [rip + .Lx187_8]
                                                                                        jmp   rax
.Lx187_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx187_2
.Lx187_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx187_2
.Lx187_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n173_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx187_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n173_match_alternate_s1
.Lx187_6:
                        add              rsp, 16
                                                                                        jmp   n173_match_alternate_af
n175_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n176_goto_α:
                                                                                        jmp   n173_match_alternate_af
n176_goto_β:
                                                                                        jmp   n173_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n177_match_defer_α:
                        mov              qword ptr [rbp + 64], rsp
                        mov              rax, qword ptr [1879052480]                    # jelement
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 8
                                                                                        jne   .Lx189_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx189_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx189_10
.Lx189_9:
                        xor              eax, eax
.Lx189_10:
                        test             rax, rax
                                                                                        jz    .Lx189_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx189_4]
                        lea              rdx, [rip + .Lx189_5]
                                                                                        jmp   rax
.Lx189_4:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n178_match_arbno_α
.Lx189_5:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n173_match_alternate_af
.Lx189_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx189_2:
                        test             rax, rax
                                                                                        je    .Lx189_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx189_7]
                        lea              rdx, [rip + .Lx189_8]
                                                                                        jmp   rax
.Lx189_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx189_2
.Lx189_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx189_2
.Lx189_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n173_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx189_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n178_match_arbno_α
.Lx189_6:
                        add              rsp, 16
                                                                                        jmp   n173_match_alternate_af
n177_match_defer_β:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n173_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n178_match_arbno_α:
                        mov              dword ptr [rbp + 96], r14d
                        mov              dword ptr [rbp + 100], r14d
                        mov              dword ptr [rbp + 104], 0
                        mov              qword ptr [rbp + 120], rsp
                        mov              qword ptr [rbp + 128], rbp
                        mov              qword ptr [rbp + 112], 0
                                                                                        jmp   n173_match_alternate_s0
n178_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 100]
                        mov              rax, qword ptr [rbp + 112]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 112], rsp
                        mov              rbp, rsp
                        add              rbp, -120
                                                                                        jmp   n179_match_lit_α
n178_match_arbno_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              r14d, eax
                                                                                        je    n179_match_lit_β
                        mov              rbp, qword ptr [rbp + 120]
                        mov              eax, dword ptr [rbp + 104]
                        add              eax, 1
                        mov              dword ptr [rbp + 104], eax
                        mov              dword ptr [rbp + 100], r14d
                                                                                        jmp   n173_match_alternate_s0
n178_match_arbno_af:
                        mov              rax, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 120]
                        lea              rsp, [rbp + 200]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 104]
                        test             ecx, ecx
                                                                                        jz    .Lx191_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 104], ecx
                        mov              qword ptr [rbp + 112], rax
                        lea              rbp, [rax + -120]
                                                                                        jmp   n179_match_lit_β
.Lx191_2:
                        mov              r14d, dword ptr [rbp + 96]
                        mov              rbp, qword ptr [rbp + 128]
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   n177_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n179_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n178_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n178_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n180_match_defer_α
n179_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n178_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n180_match_defer_α:
                        mov              qword ptr [rbp + 176], rsp
                        mov              rax, qword ptr [1879052480]                    # jelement
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 8
                                                                                        jne   .Lx194_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx194_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx194_10
.Lx194_9:
                        xor              eax, eax
.Lx194_10:
                        test             rax, rax
                                                                                        jz    .Lx194_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx194_4]
                        lea              rdx, [rip + .Lx194_5]
                                                                                        jmp   rax
.Lx194_4:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n178_match_arbno_as
.Lx194_5:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n179_match_lit_β
.Lx194_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx194_2:
                        test             rax, rax
                                                                                        je    .Lx194_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx194_7]
                        lea              rdx, [rip + .Lx194_8]
                                                                                        jmp   rax
.Lx194_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx194_2
.Lx194_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx194_2
.Lx194_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n179_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx194_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n178_match_arbno_as
.Lx194_6:
                        add              rsp, 16
                                                                                        jmp   n179_match_lit_β
n180_match_defer_β:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n179_match_lit_β
proc_PAT$7_scanhit:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx195_0
                        mov              ecx, dword ptr [rbp + 232]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx195_0:
                                                                                        jmp   proc_PAT$7_γ
proc_PAT$7_scanfail:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx196_0
                        mov              eax, dword ptr [rbp + 232]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx196_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx196_0
                        mov              dword ptr [rbp + 232], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$7_attempt
.Lx196_0:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_β:
                                                                                        jmp   qword ptr [rbp + 208]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$7_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              rbp, qword ptr [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_ω:
                        mov              rax, qword ptr [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, qword ptr [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$8_α
proc_PAT$8_α:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 160], r8
                        mov              dword ptr [rsp + 152], r14d
proc_PAT$8_attempt:
proc_PAT$8_α_body:
                        lea              rax, [rip + n197_match_alternate_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n197_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx206_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n204_match_defer_α
.Lx206_21:
                        lea              rax, [rip + .Lx206_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n203_match_defer_α
.Lx206_22:
                        lea              rax, [rip + .Lx206_23]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n202_match_defer_α
.Lx206_23:
                        lea              rax, [rip + .Lx206_24]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n201_match_defer_α
.Lx206_24:
                        lea              rax, [rip + .Lx206_25]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n200_match_lit_α
.Lx206_25:
                        lea              rax, [rip + .Lx206_26]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n199_match_lit_α
.Lx206_26:
                        lea              rax, [rip + .Lx206_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n198_match_lit_α
n197_match_alternate_s0:
                        lea              rax, [rip + .Lx206_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n197_match_alternate_as
n197_match_alternate_s1:
                        lea              rax, [rip + .Lx206_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n197_match_alternate_as
n197_match_alternate_s2:
                        lea              rax, [rip + .Lx206_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n197_match_alternate_as
n197_match_alternate_s3:
                        lea              rax, [rip + .Lx206_43]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n197_match_alternate_as
n197_match_alternate_s4:
                        lea              rax, [rip + .Lx206_44]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n197_match_alternate_as
n197_match_alternate_s5:
                        lea              rax, [rip + .Lx206_45]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n197_match_alternate_as
n197_match_alternate_s6:
                        lea              rax, [rip + .Lx206_46]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n197_match_alternate_as
.Lx206_40:
                                                                                        jmp   n204_match_defer_β
.Lx206_41:
                                                                                        jmp   n203_match_defer_β
.Lx206_42:
                                                                                        jmp   n202_match_defer_β
.Lx206_43:
                                                                                        jmp   n201_match_defer_β
.Lx206_44:
                                                                                        jmp   n200_match_lit_β
.Lx206_45:
                                                                                        jmp   n199_match_lit_β
.Lx206_46:
                                                                                        jmp   n198_match_lit_β
n197_match_alternate_as:
                                                                                        jmp   proc_PAT$8_γ
n197_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n197_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx206_19:
                                                                                        jmp   proc_PAT$8_ω
#-----------------------------------------------------------------------------------------------------------------------
n198_match_lit_α:
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d
                                                                                        jg    n197_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819047278
                                                                                        jne   n197_match_alternate_af
                        add              r14d, 4
                                                                                        jmp   n197_match_alternate_s6
n198_match_lit_β:
                        sub              r14d, 4
                                                                                        jmp   n197_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n199_match_lit_α:
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d
                                                                                        jg    n197_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1936482662
                                                                                        jne   n197_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101
                                                                                        jne   n197_match_alternate_af
                        add              r14d, 5
                                                                                        jmp   n197_match_alternate_s5
n199_match_lit_β:
                        sub              r14d, 5
                                                                                        jmp   n197_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n200_match_lit_α:
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d
                                                                                        jg    n197_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1702195828
                                                                                        jne   n197_match_alternate_af
                        add              r14d, 4
                                                                                        jmp   n197_match_alternate_s4
n200_match_lit_β:
                        sub              r14d, 4
                                                                                        jmp   n197_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n201_match_defer_α:
                        mov              rax, qword ptr [1879052752]                    # PAT$8$V3
                        mov              rdx, qword ptr [1879052760]
                        cmp              eax, 8
                                                                                        jne   .Lx213_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx213_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx213_10
.Lx213_9:
                        xor              eax, eax
.Lx213_10:
                        test             rax, rax
                                                                                        jz    .Lx213_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx213_4]
                        lea              rdx, [rip + .Lx213_5]
                                                                                        jmp   rax
.Lx213_4:
                                                                                        jmp   n197_match_alternate_s3
.Lx213_5:
                                                                                        jmp   n197_match_alternate_af
.Lx213_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S12]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx213_2:
                        test             rax, rax
                                                                                        je    .Lx213_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx213_7]
                        lea              rdx, [rip + .Lx213_8]
                                                                                        jmp   rax
.Lx213_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx213_2
.Lx213_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx213_2
.Lx213_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n197_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx213_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n197_match_alternate_s3
.Lx213_6:
                        add              rsp, 16
                                                                                        jmp   n197_match_alternate_af
n201_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n202_match_defer_α:
                        mov              rax, qword ptr [1879052736]                    # PAT$8$V2
                        mov              rdx, qword ptr [1879052744]
                        cmp              eax, 8
                                                                                        jne   .Lx214_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx214_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx214_10
.Lx214_9:
                        xor              eax, eax
.Lx214_10:
                        test             rax, rax
                                                                                        jz    .Lx214_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx214_4]
                        lea              rdx, [rip + .Lx214_5]
                                                                                        jmp   rax
.Lx214_4:
                                                                                        jmp   n197_match_alternate_s2
.Lx214_5:
                                                                                        jmp   n197_match_alternate_af
.Lx214_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S13]                              # varname
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
                                                                                        js    n197_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx214_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n197_match_alternate_s2
.Lx214_6:
                        add              rsp, 16
                                                                                        jmp   n197_match_alternate_af
n202_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n203_match_defer_α:
                        mov              rax, qword ptr [1879052720]                    # PAT$8$V1
                        mov              rdx, qword ptr [1879052728]
                        cmp              eax, 8
                                                                                        jne   .Lx215_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx215_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx215_10
.Lx215_9:
                        xor              eax, eax
.Lx215_10:
                        test             rax, rax
                                                                                        jz    .Lx215_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx215_4]
                        lea              rdx, [rip + .Lx215_5]
                                                                                        jmp   rax
.Lx215_4:
                                                                                        jmp   n197_match_alternate_s1
.Lx215_5:
                                                                                        jmp   n197_match_alternate_af
.Lx215_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S14]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx215_2:
                        test             rax, rax
                                                                                        je    .Lx215_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx215_7]
                        lea              rdx, [rip + .Lx215_8]
                                                                                        jmp   rax
.Lx215_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx215_2
.Lx215_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx215_2
.Lx215_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n197_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx215_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n197_match_alternate_s1
.Lx215_6:
                        add              rsp, 16
                                                                                        jmp   n197_match_alternate_af
n203_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n204_match_defer_α:
                        mov              rax, qword ptr [1879052704]                    # PAT$8$V0
                        mov              rdx, qword ptr [1879052712]
                        cmp              eax, 8
                                                                                        jne   .Lx216_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx216_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx216_10
.Lx216_9:
                        xor              eax, eax
.Lx216_10:
                        test             rax, rax
                                                                                        jz    .Lx216_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx216_4]
                        lea              rdx, [rip + .Lx216_5]
                                                                                        jmp   rax
.Lx216_4:
                                                                                        jmp   n197_match_alternate_s0
.Lx216_5:
                                                                                        jmp   n197_match_alternate_af
.Lx216_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S15]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx216_2:
                        test             rax, rax
                                                                                        je    .Lx216_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx216_7]
                        lea              rdx, [rip + .Lx216_8]
                                                                                        jmp   rax
.Lx216_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx216_2
.Lx216_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx216_2
.Lx216_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n197_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx216_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n197_match_alternate_s0
.Lx216_6:
                        add              rsp, 16
                                                                                        jmp   n197_match_alternate_af
n204_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$8_scanhit:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx217_0
                        mov              ecx, dword ptr [rbp + 152]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx217_0:
                                                                                        jmp   proc_PAT$8_γ
proc_PAT$8_scanfail:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx218_0
                        mov              eax, dword ptr [rbp + 152]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx218_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx218_0
                        mov              dword ptr [rbp + 152], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$8_attempt
.Lx218_0:
                                                                                        jmp   proc_PAT$8_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$8_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$8_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$8_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$8_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              rbp, qword ptr [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$8_ω:
                        mov              rax, qword ptr [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, qword ptr [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$9_α
proc_PAT$9_α:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 104], rcx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 96], r8
                        mov              dword ptr [rsp + 88], r14d
proc_PAT$9_attempt:
proc_PAT$9_α_body:
                        lea              rax, [rip + proc_PAT$9_ω]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n219_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]                    # PAT$9$V0
                        mov              rdx, qword ptr [1879052776]
                        cmp              eax, 8
                                                                                        jne   .Lx222_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx222_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx222_10
.Lx222_9:
                        xor              eax, eax
.Lx222_10:
                        test             rax, rax
                                                                                        jz    .Lx222_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx222_4]
                        lea              rdx, [rip + .Lx222_5]
                                                                                        jmp   rax
.Lx222_4:
                                                                                        jmp   n220_match_defer_α
.Lx222_5:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$9_scanfail
.Lx222_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S16]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx222_2:
                        test             rax, rax
                                                                                        je    .Lx222_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx222_7]
                        lea              rdx, [rip + .Lx222_8]
                                                                                        jmp   rax
.Lx222_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx222_2
.Lx222_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx222_2
.Lx222_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx222_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$9_scanfail
.Lx222_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx222_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n220_match_defer_α
.Lx222_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$9_scanfail
n219_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n220_match_defer_α:
                        sub              rsp, 16
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx223_11
                        mov              rax, qword ptr [1879052464]                    # jvalue
                        mov              rdx, qword ptr [1879052472]
                        cmp              eax, 8
                                                                                        jne   .Lx223_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx223_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx223_10
.Lx223_9:
                        xor              eax, eax
.Lx223_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx223_11:
                        test             rax, rax
                                                                                        jz    .Lx223_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx223_4]
                        lea              rdx, [rip + .Lx223_5]
                                                                                        jmp   rax
.Lx223_4:
                                                                                        jmp   n221_match_defer_α
.Lx223_5:
                        add              rsp, 16
                                                                                        jmp   n219_match_defer_β
.Lx223_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S17]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx223_2:
                        test             rax, rax
                                                                                        je    .Lx223_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx223_7]
                        lea              rdx, [rip + .Lx223_8]
                                                                                        jmp   rax
.Lx223_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx223_2
.Lx223_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx223_2
.Lx223_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx223_240
                        add              rsp, 16
                                                                                        jmp   n219_match_defer_β
.Lx223_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx223_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n221_match_defer_α
.Lx223_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n219_match_defer_β
n220_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n221_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052784]                    # PAT$9$V1
                        mov              rdx, qword ptr [1879052792]
                        cmp              eax, 8
                                                                                        jne   .Lx224_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx224_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx224_10
.Lx224_9:
                        xor              eax, eax
.Lx224_10:
                        test             rax, rax
                                                                                        jz    .Lx224_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx224_4]
                        lea              rdx, [rip + .Lx224_5]
                                                                                        jmp   rax
.Lx224_4:
                                                                                        jmp   proc_PAT$9_scanhit
.Lx224_5:
                        add              rsp, 16
                                                                                        jmp   n220_match_defer_β
.Lx224_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S18]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx224_2:
                        test             rax, rax
                                                                                        je    .Lx224_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx224_7]
                        lea              rdx, [rip + .Lx224_8]
                                                                                        jmp   rax
.Lx224_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx224_2
.Lx224_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx224_2
.Lx224_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx224_240
                        add              rsp, 16
                                                                                        jmp   n220_match_defer_β
.Lx224_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx224_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   proc_PAT$9_scanhit
.Lx224_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n220_match_defer_β
n221_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$9_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx225_0
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx225_0:
                                                                                        jmp   proc_PAT$9_γ
proc_PAT$9_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx226_0
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx226_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx226_0
                        mov              dword ptr [rbp + 88], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$9_attempt
.Lx226_0:
                                                                                        jmp   proc_PAT$9_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$9_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$9_β:
                                                                                        jmp   qword ptr [rbp + 64]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$9_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$9_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              rbp, qword ptr [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$9_ω:
                        mov              rax, qword ptr [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$10_α
proc_PAT$10_α:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$10_attempt:
proc_PAT$10_α_body:
                        lea              rax, [rip + proc_PAT$10_ω]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n228_match_pos_α
.Lx232_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n228_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        je    .Lx233_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$10_scanfail
.Lx233_240:
                                                                                        jmp   n229_match_defer_α
n228_match_pos_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$10_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n229_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052800]                    # PAT$10$V0
                        mov              rdx, qword ptr [1879052808]
                        cmp              eax, 8
                                                                                        jne   .Lx234_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx234_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx234_10
.Lx234_9:
                        xor              eax, eax
.Lx234_10:
                        test             rax, rax
                                                                                        jz    .Lx234_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx234_4]
                        lea              rdx, [rip + .Lx234_5]
                                                                                        jmp   rax
.Lx234_4:
                                                                                        jmp   n230_lit_integer_α
.Lx234_5:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$10_scanfail
.Lx234_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S19]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx234_2:
                        test             rax, rax
                                                                                        je    .Lx234_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx234_7]
                        lea              rdx, [rip + .Lx234_8]
                                                                                        jmp   rax
.Lx234_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx234_2
.Lx234_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx234_2
.Lx234_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx234_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$10_scanfail
.Lx234_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx234_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n230_lit_integer_α
.Lx234_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$10_scanfail
n229_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n231_match_rpos_α
.Lx235_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n231_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        je    .Lx236_240
                        add              rsp, 16
                                                                                        jmp   n229_match_defer_β
.Lx236_240:
                                                                                        jmp   proc_PAT$10_scanhit
proc_PAT$10_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx237_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx237_0:
                                                                                        jmp   proc_PAT$10_γ
proc_PAT$10_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx238_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx238_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx238_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$10_attempt
.Lx238_0:
                                                                                        jmp   proc_PAT$10_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$10_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$10_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$10_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$10_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$10_ω:
                        mov              rax, qword ptr [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136]
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
.Lstartup_pname1:       .string          "PAT$2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_PAT$2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 352
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "PAT$3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_PAT$3_α]
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
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "PAT$4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_PAT$4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "PAT$5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_PAT$5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "PAT$6"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_PAT$6_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "PAT$7"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_PAT$7_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "PAT$8"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_PAT$8_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "PAT$9"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_PAT$9_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 80
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "PAT$10"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_PAT$10_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "bslash"
.Lgvan1:                .string          "ws"
.Lgvan2:                .string          "hex"
.Lgvan3:                .string          "dig"
.Lgvan4:                .string          "jescape"
.Lgvan5:                .string          "jchunk"
.Lgvan6:                .string          "jstring"
.Lgvan7:                .string          "jnumber"
.Lgvan8:                .string          "jmember"
.Lgvan9:                .string          "jobject"
.Lgvan10:               .string          "jarray"
.Lgvan11:               .string          "jvalue"
.Lgvan12:               .string          "jelement"
.Lgvan13:               .string          "json"
.Lgvan14:               .string          "src"
.Lgvan15:               .string          "PAT$3$V0"
.Lgvan16:               .string          "PAT$4$V0"
.Lgvan17:               .string          "PAT$4$V1"
.Lgvan18:               .string          "PAT$4$V2"
.Lgvan19:               .string          "PAT$5$V0"
.Lgvan20:               .string          "PAT$5$V1"
.Lgvan21:               .string          "PAT$5$V2"
.Lgvan22:               .string          "PAT$6$V0"
.Lgvan23:               .string          "PAT$6$V1"
.Lgvan24:               .string          "PAT$6$V2"
.Lgvan25:               .string          "PAT$7$V0"
.Lgvan26:               .string          "PAT$8$V0"
.Lgvan27:               .string          "PAT$8$V1"
.Lgvan28:               .string          "PAT$8$V2"
.Lgvan29:               .string          "PAT$8$V3"
.Lgvan30:               .string          "PAT$9$V0"
.Lgvan31:               .string          "PAT$9$V1"
.Lgvan32:               .string          "PAT$10$V0"
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
                        .quad            .Lgvan19
                        .quad            .Lgvan20
                        .quad            .Lgvan21
                        .quad            .Lgvan22
                        .quad            .Lgvan23
                        .quad            .Lgvan24
                        .quad            .Lgvan25
                        .quad            .Lgvan26
                        .quad            .Lgvan27
                        .quad            .Lgvan28
                        .quad            .Lgvan29
                        .quad            .Lgvan30
                        .quad            .Lgvan31
                        .quad            .Lgvan32
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 33
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 33
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
#                 bslash         =  CHAR(92)
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_begin_α:
                                                                                        jmp   n240_lit_integer_α
n239_statement_begin_β:
                                                                                        jmp   n244_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n241_call_α
.Lx378_0:
                        .quad            92
#-----------------------------------------------------------------------------------------------------------------------
n241_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd86:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd86]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx379_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n239_statement_begin_β
.Lx379_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n242_assign_α
n241_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n239_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n242_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # bslash
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n243_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n243_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n244_statement_begin_α
#=======================================================================================================================
#                 ws             =  FENCE(SPAN(' ' CHAR(9) CHAR(10) CHAR(13)) | '')
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_begin_α:
                                                                                        jmp   n245_lit_string_α
n244_statement_begin_β:
                                                                                        jmp   n249_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n246_call_α
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n246_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd387:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd387]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx386_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n244_statement_begin_β
.Lx386_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n247_assign_α
n246_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n244_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n247_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # ws
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n248_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n249_statement_begin_α
#=======================================================================================================================
#                 hex            =  '0123456789abcdefABCDEF'
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_begin_α:
                                                                                        jmp   n250_lit_string_α
n249_statement_begin_β:
                                                                                        jmp   n253_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n251_assign_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "0123456789abcdefABCDEF"
#-----------------------------------------------------------------------------------------------------------------------
n251_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # hex
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n252_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n253_statement_begin_α
#=======================================================================================================================
#                 dig            =  '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_begin_α:
                                                                                        jmp   n254_lit_string_α
n253_statement_begin_β:
                                                                                        jmp   n257_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n255_assign_α
.Lx399_0:
                        .quad            .Lx399_0_s
.Lx399_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # dig
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n256_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n257_statement_begin_α
#=======================================================================================================================
#                 jescape        =  bslash
#-----------------------------------------------------------------------------------------------------------------------
n257_statement_begin_α:
                                                                                        jmp   n258_var_α
n257_statement_begin_β:
                                                                                        jmp   n264_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # bslash
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n259_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n259_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052528], rax                    # PAT$3$V0
                        mov              qword ptr [1879052536], rdx
                                                                                        jmp   n260_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n261_call_α
n260_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n257_statement_begin_β
.Lx407_0:
                        .quad            .Lx407_0_s
.Lx407_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd409:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd409]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx408_240
                        add              rsp, 16
                                                                                        jmp   n260_lit_string_β
.Lx408_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n262_assign_α
n261_call_β:
                        add              rsp, 16
                                                                                        jmp   n260_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n262_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # jescape
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n263_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n263_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n264_statement_begin_α
#=======================================================================================================================
#                 jchunk         =  BREAK('"\' CHAR(10) CHAR(13))
#-----------------------------------------------------------------------------------------------------------------------
n264_statement_begin_α:
                                                                                        jmp   n265_statement_end_α
n264_statement_begin_β:
                                                                                        jmp   n266_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n265_statement_end_α:
                                                                                        jmp   n266_statement_begin_α
#=======================================================================================================================
#                 jstring        =  '"' jchunk ARBNO(jescape jchunk) '"'
#-----------------------------------------------------------------------------------------------------------------------
n266_statement_begin_α:
                                                                                        jmp   n267_var_α
n266_statement_begin_β:
                                                                                        jmp   n277_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # jchunk
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n268_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n268_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052576], rax                    # PAT$4$V2
                        mov              qword ptr [1879052584], rdx
                                                                                        jmp   n269_var_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # jescape
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n270_assign_α
n269_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n266_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n270_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052560], rax                    # PAT$4$V1
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n271_var_α
#-----------------------------------------------------------------------------------------------------------------------
n271_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # jchunk
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n272_assign_α
n271_var_β:
                        add              rsp, 16
                                                                                        jmp   n269_var_β
#-----------------------------------------------------------------------------------------------------------------------
n272_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052544], rax                    # PAT$4$V0
                        mov              qword ptr [1879052552], rdx
                                                                                        jmp   n273_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n274_call_α
n273_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n271_var_β
.Lx425_0:
                        .quad            .Lx425_0_s
.Lx425_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n274_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd427:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd427]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx426_240
                        add              rsp, 16
                                                                                        jmp   n273_lit_string_β
.Lx426_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n275_assign_α
n274_call_β:
                        add              rsp, 16
                                                                                        jmp   n273_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n275_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # jstring
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n276_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n276_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n277_statement_begin_α
#=======================================================================================================================
#                 jnumber        =  FENCE('-' | '')
#-----------------------------------------------------------------------------------------------------------------------
n277_statement_begin_α:
                                                                                        jmp   n278_lit_string_α
n277_statement_begin_β:
                                                                                        jmp   n282_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n279_call_α
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n279_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd435:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd435]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx434_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n277_statement_begin_β
.Lx434_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n280_assign_α
n279_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n277_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n280_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # jnumber
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n281_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n281_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n282_statement_begin_α
#=======================================================================================================================
#                 jmember        =  ws jstring ws ':' *jelement
#-----------------------------------------------------------------------------------------------------------------------
n282_statement_begin_α:
                                                                                        jmp   n283_var_α
n282_statement_begin_β:
                                                                                        jmp   n293_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n284_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n284_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052624], rax                    # PAT$5$V2
                        mov              qword ptr [1879052632], rdx
                                                                                        jmp   n285_var_α
#-----------------------------------------------------------------------------------------------------------------------
n285_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # jstring
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n286_assign_α
n285_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n282_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n286_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052608], rax                    # PAT$5$V1
                        mov              qword ptr [1879052616], rdx
                                                                                        jmp   n287_var_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n288_assign_α
n287_var_β:
                        add              rsp, 16
                                                                                        jmp   n285_var_β
#-----------------------------------------------------------------------------------------------------------------------
n288_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052592], rax                    # PAT$5$V0
                        mov              qword ptr [1879052600], rdx
                                                                                        jmp   n289_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n290_call_α
n289_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n287_var_β
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n290_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd449:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd449]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx448_240
                        add              rsp, 16
                                                                                        jmp   n289_lit_string_β
.Lx448_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n291_assign_α
n290_call_β:
                        add              rsp, 16
                                                                                        jmp   n289_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n291_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # jmember
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n292_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n292_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n293_statement_begin_α
#=======================================================================================================================
#                 jobject        =  '{' ( jmember ARBNO(',' jmember) | ws ) '}'
#-----------------------------------------------------------------------------------------------------------------------
n293_statement_begin_α:
                                                                                        jmp   n294_var_α
n293_statement_begin_β:
                                                                                        jmp   n304_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n295_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n295_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052672], rax                    # PAT$6$V2
                        mov              qword ptr [1879052680], rdx
                                                                                        jmp   n296_var_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # jmember
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n297_assign_α
n296_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n293_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n297_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052656], rax                    # PAT$6$V1
                        mov              qword ptr [1879052664], rdx
                                                                                        jmp   n298_var_α
#-----------------------------------------------------------------------------------------------------------------------
n298_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # jmember
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n299_assign_α
n298_var_β:
                        add              rsp, 16
                                                                                        jmp   n296_var_β
#-----------------------------------------------------------------------------------------------------------------------
n299_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052640], rax                    # PAT$6$V0
                        mov              qword ptr [1879052648], rdx
                                                                                        jmp   n300_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n301_call_α
n300_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n298_var_β
.Lx461_0:
                        .quad            .Lx461_0_s
.Lx461_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n301_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd463:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd463]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx462_240
                        add              rsp, 16
                                                                                        jmp   n300_lit_string_β
.Lx462_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n302_assign_α
n301_call_β:
                        add              rsp, 16
                                                                                        jmp   n300_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n302_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # jobject
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n303_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n303_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n304_statement_begin_α
#=======================================================================================================================
#                 jarray         =  '[' ( *jelement ARBNO(',' *jelement) | ws ) ']'
#-----------------------------------------------------------------------------------------------------------------------
n304_statement_begin_α:
                                                                                        jmp   n305_var_α
n304_statement_begin_β:
                                                                                        jmp   n311_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n306_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n306_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052688], rax                    # PAT$7$V0
                        mov              qword ptr [1879052696], rdx
                                                                                        jmp   n307_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n308_call_α
n307_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n304_statement_begin_β
.Lx471_0:
                        .quad            .Lx471_0_s
.Lx471_0_s:
                        .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n308_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd473:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd473]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx472_240
                        add              rsp, 16
                                                                                        jmp   n307_lit_string_β
.Lx472_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n309_assign_α
n308_call_β:
                        add              rsp, 16
                                                                                        jmp   n307_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n309_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # jarray
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n310_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n310_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n311_statement_begin_α
#=======================================================================================================================
#                 jvalue         =  jstring | jnumber | jobject | jarray
#-----------------------------------------------------------------------------------------------------------------------
n311_statement_begin_α:
                                                                                        jmp   n312_var_α
n311_statement_begin_β:
                                                                                        jmp   n324_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # jarray
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n313_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n313_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052752], rax                    # PAT$8$V3
                        mov              qword ptr [1879052760], rdx
                                                                                        jmp   n314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # jobject
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n315_assign_α
n314_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n311_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n315_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052736], rax                    # PAT$8$V2
                        mov              qword ptr [1879052744], rdx
                                                                                        jmp   n316_var_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # jnumber
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n317_assign_α
n316_var_β:
                        add              rsp, 16
                                                                                        jmp   n314_var_β
#-----------------------------------------------------------------------------------------------------------------------
n317_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052720], rax                    # PAT$8$V1
                        mov              qword ptr [1879052728], rdx
                                                                                        jmp   n318_var_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # jstring
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n319_assign_α
n318_var_β:
                        add              rsp, 16
                                                                                        jmp   n316_var_β
#-----------------------------------------------------------------------------------------------------------------------
n319_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052704], rax                    # PAT$8$V0
                        mov              qword ptr [1879052712], rdx
                                                                                        jmp   n320_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx487_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n321_call_α
n320_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n318_var_β
.Lx487_0:
                        .quad            .Lx487_0_s
.Lx487_0_s:
                        .string          "PAT$8"
#-----------------------------------------------------------------------------------------------------------------------
n321_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd489:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd489]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx488_240
                        add              rsp, 16
                                                                                        jmp   n320_lit_string_β
.Lx488_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n322_assign_α
n321_call_β:
                        add              rsp, 16
                                                                                        jmp   n320_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n322_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # jvalue
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n323_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n323_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n324_statement_begin_α
#=======================================================================================================================
#                 jelement       =  ws *jvalue ws
#-----------------------------------------------------------------------------------------------------------------------
n324_statement_begin_α:
                                                                                        jmp   n325_var_α
n324_statement_begin_β:
                                                                                        jmp   n333_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n325_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n326_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n326_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052784], rax                    # PAT$9$V1
                        mov              qword ptr [1879052792], rdx
                                                                                        jmp   n327_var_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n328_assign_α
n327_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n324_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n328_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052768], rax                    # PAT$9$V0
                        mov              qword ptr [1879052776], rdx
                                                                                        jmp   n329_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n330_call_α
n329_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n327_var_β
.Lx499_0:
                        .quad            .Lx499_0_s
.Lx499_0_s:
                        .string          "PAT$9"
#-----------------------------------------------------------------------------------------------------------------------
n330_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd501:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd501]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx500_240
                        add              rsp, 16
                                                                                        jmp   n329_lit_string_β
.Lx500_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n331_assign_α
n330_call_β:
                        add              rsp, 16
                                                                                        jmp   n329_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n331_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052480], rax                    # jelement
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n332_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n332_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n333_statement_begin_α
#=======================================================================================================================
#                 json           =  POS(0) jelement RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n333_statement_begin_α:
                                                                                        jmp   n334_var_α
n333_statement_begin_β:
                                                                                        jmp   n340_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052480]                    # jelement
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n335_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n335_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052800], rax                    # PAT$10$V0
                        mov              qword ptr [1879052808], rdx
                                                                                        jmp   n336_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n337_call_α
n336_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n333_statement_begin_β
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          "PAT$10"
#-----------------------------------------------------------------------------------------------------------------------
n337_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd511:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd511]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx510_240
                        add              rsp, 16
                                                                                        jmp   n336_lit_string_β
.Lx510_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n338_assign_α
n337_call_β:
                        add              rsp, 16
                                                                                        jmp   n336_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n338_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052496], rax                    # json
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n339_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n339_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n340_statement_begin_α
#=======================================================================================================================
#                 &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n340_statement_begin_α:
                                                                                        jmp   n341_lit_string_α
n340_statement_begin_β:
                                                                                        jmp   n345_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n342_lit_integer_α
.Lx517_0:
                        .quad            .Lx517_0_s
.Lx517_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n343_call_α
n342_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n340_statement_begin_β
.Lx518_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n343_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd520:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd520]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx519_240
                        add              rsp, 16
                                                                                        jmp   n342_lit_integer_β
.Lx519_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n344_statement_end_α
n343_call_β:
                        add              rsp, 16
                                                                                        jmp   n342_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n344_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n345_statement_begin_α
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r1000000]')
#-----------------------------------------------------------------------------------------------------------------------
n345_statement_begin_α:
                                                                                        jmp   n346_lit_string_α
n345_statement_begin_β:
                                                                                        jmp   n352_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx525_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n347_call_α
.Lx525_0:
                        .quad            .Lx525_0_s
.Lx525_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n347_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd527:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd527]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx526_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n345_statement_begin_β
.Lx526_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n348_lit_integer_α
n347_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n345_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n349_lit_string_α
n348_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n345_statement_begin_β
.Lx528_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n350_call_α
n349_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n348_lit_integer_β
.Lx529_0:
                        .quad            .Lx529_0_s
.Lx529_0_s:
                        .string          "[-f0 -r1000000]"
#-----------------------------------------------------------------------------------------------------------------------
n350_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              r10, qword ptr [rsp + 96]
                        mov              r11, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 80]
                        mov              r11, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 32], r10
                        mov              qword ptr [rsp + 40], r11
                        .section         .rodata
.Lbynamefnzd195:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd195]                   # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx530_240
                        add              rsp, 16
                                                                                        jmp   n349_lit_string_β
.Lx530_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n351_statement_end_α
n350_call_β:
                        add              rsp, 16
                                                                                        jmp   n349_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n351_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n352_statement_begin_α
#=======================================================================================================================
#                 src             =   INPUT                       :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n352_statement_begin_α:
                                                                                        jmp   n353_var_α
n352_statement_begin_β:
                                                                                        jmp   n371_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n353_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx535_0]                # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx535_240
                        add              rsp, 16
                                                                                        jmp   n352_statement_begin_β
.Lx535_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n354_assign_α
.Lx535_0:
                        .quad            .Lx535_0_s
.Lx535_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n354_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052512], rax                    # src
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n355_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n355_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n356_statement_begin_α
#=======================================================================================================================
#                 src             json                            :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n356_statement_begin_α:
                                                                                        jmp   n357_var_α
n356_statement_begin_β:
                                                                                        jmp   n371_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n357_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052512]                    # src
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n358_var_α
#-----------------------------------------------------------------------------------------------------------------------
n358_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # json
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n359_assign_α
n358_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n371_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n359_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx543_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n360_match_begin_α
n359_assign_β:
                                                                                        jmp   n358_var_β
.Lx543_0:
                        .quad            .Lx543_0_s
.Lx543_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n360_match_begin_α:
                        mov              rdi, qword ptr [rsp + 16]                      # var
                        mov              rsi, qword ptr [rsp + 24]
                        sub              rsp, 64
                        mov              qword ptr [rbp + -40], r13                     # outer_Σ
                        mov              qword ptr [rbp + -32], r14                     # outer_δ
                        mov              qword ptr [rbp + -24], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + -16], rax                     # cap_gen
                        mov              qword ptr [rbp + -48], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + -56], rsp                     # zls2_mark
                        mov              dword ptr [rbp + -64], 0                       # start_δ
.Lx545_0:
                        mov              r14d, dword ptr [rbp + -64]
                                                                                        jmp   n361_match_defer_α
n360_match_begin_β:
                        add              dword ptr [rbp + -64], 1
                        mov              eax, dword ptr [rbp + -64]
                        cmp              eax, r15d
                                                                                        jg    .Lx545_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx545_1
                                                                                        jmp   .Lx545_0
.Lx545_1:
n360_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + -56]
                        mov              r13, qword ptr [rbp + -40]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -32]                     # outer_δ
                        mov              r15, qword ptr [rbp + -24]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -16]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + -48]                     # old_rbp
                        add              rsp, 64
                                                                                        jmp   n359_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n361_match_defer_α:
                        lea              rdi, [rip + .S20]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx546_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx546_4]
                        lea              rdx, [rip + .Lx546_5]
                                                                                        jmp   rax
.Lx546_4:
                                                                                        jmp   n362_match_end_α
.Lx546_5:
                                                                                        jmp   n360_match_begin_β
.Lx546_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S20]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx546_2:
                        test             rax, rax
                                                                                        je    .Lx546_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx546_7]
                        lea              rdx, [rip + .Lx546_8]
                                                                                        jmp   rax
.Lx546_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx546_2
.Lx546_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx546_2
.Lx546_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n360_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx546_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n362_match_end_α
.Lx546_6:
                        add              rsp, 16
                                                                                        jmp   n360_match_begin_β
n361_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n362_match_end_α:
                        mov              r10, r12
.Lx548_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx548_9
                        mov              rsp, qword ptr [rbp + -56]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx548_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx548_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx548_1:
                        test             rax, rax
                                                                                        je    .Lx548_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx548_3]
                        lea              rdx, [rip + .Lx548_4]
                                                                                        jmp   rax
.Lx548_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx548_1
.Lx548_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx548_1
.Lx548_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx548_10:
                        sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx548_10
                        mov              r13, qword ptr [rbp + -40]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -32]                     # outer_δ
                        mov              r15, qword ptr [rbp + -24]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + -48]                     # old_rbp
                                                                                        jmp   n363_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n364_statement_begin_α
#=======================================================================================================================
#                 OUTPUT          =  'matched bytes=' SIZE(src)   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n364_statement_begin_α:
                                                                                        jmp   n365_lit_string_α
n364_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx553_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n366_var_α
.Lx553_0:
                        .quad            .Lx553_0_s
.Lx553_0_s:
                        .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n366_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052512]                    # src
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n367_call_α
n366_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n364_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n367_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd556:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd556]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx555_240
                        add              rsp, 16
                                                                                        jmp   n366_var_β
.Lx555_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n368_binop_α
n367_call_β:
                        add              rsp, 16
                                                                                        jmp   n366_var_β
#-----------------------------------------------------------------------------------------------------------------------
n368_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # lit_string
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n369_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n369_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx558_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n370_statement_end_α
.Lx558_0:
                        .quad            .Lx558_0_s
.Lx558_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n370_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   main_γ
#=======================================================================================================================
# fail            OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n371_statement_begin_α:
                                                                                        jmp   n372_lit_string_α
n371_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx563_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n373_assign_α
.Lx563_0:
                        .quad            .Lx563_0_s
.Lx563_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx564_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n374_statement_end_α
.Lx564_0:
                        .quad            .Lx564_0_s
.Lx564_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n374_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n375_goto_α:
                                                                                        jmp   n371_statement_begin_α
n375_goto_β:
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
.S0:                    .string          "PAT$3$V0"
.S1:                    .string          "PAT$4$V0"
.S2:                    .string          "PAT$4$V1"
.S3:                    .string          "PAT$4$V2"
.S4:                    .string          "PAT$5$V0"
.S5:                    .string          "PAT$5$V1"
.S6:                    .string          "PAT$5$V2"
.S7:                    .string          "jelement"
.S8:                    .string          "PAT$6$V2"
.S9:                    .string          "PAT$6$V0"
.S10:                   .string          "PAT$6$V1"
.S11:                   .string          "PAT$7$V0"
.S12:                   .string          "PAT$8$V3"
.S13:                   .string          "PAT$8$V2"
.S14:                   .string          "PAT$8$V1"
.S15:                   .string          "PAT$8$V0"
.S16:                   .string          "PAT$9$V0"
.S17:                   .string          "jvalue"
.S18:                   .string          "PAT$9$V1"
.S19:                   .string          "PAT$10$V0"
.S20:                   .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:
                        .byte            0,0,0,0,0,0,0,0,0,1,1,0,0,1,0,0
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
.C1:
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
.C2:
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
.C3:
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
.C4:
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
                        .text
                        .section         .note.GNU-stack,"",@progbits
