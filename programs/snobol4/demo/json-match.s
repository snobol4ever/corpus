                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
                        mov              rax, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rax + 0], rsp
                        mov              qword ptr [rax + 8], rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], r8
                        mov              dword ptr [rax + 32], r14d
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
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx9_0
                        mov              ecx, dword ptr [rdx + 32]
                        lea              rax, [rip + g_scan_hit_start]
                        mov              dword ptr [rax + 0], ecx
.Lx9_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx10_0
                        mov              eax, dword ptr [rdx + 32]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx10_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx10_0
                        mov              dword ptr [rdx + 32], eax
                        mov              rcx, qword ptr [rdx + 0]
                        mov              dword ptr [rcx + 104], eax
                        mov              r14d, eax
                        mov              rsp, rcx
                                                                                        jmp   proc_PAT$0_attempt
.Lx10_0:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rax
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rdx + 0], rax
                        mov              rcx, qword ptr [rax + 120]
                        mov              qword ptr [rdx + 8], rcx
                        mov              rcx, qword ptr [rax + 128]
                        mov              qword ptr [rdx + 16], rcx
                        mov              rcx, qword ptr [rax + 112]
                        mov              qword ptr [rdx + 24], rcx
                        mov              ecx, dword ptr [rax + 104]
                        mov              dword ptr [rdx + 32], ecx
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        push             qword ptr [rdx + 0]
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, qword ptr [rdx + 8]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 16]
                        mov              rsp, qword ptr [rdx + 0]
                        add              rsp, 144
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        sub              rsp, 80
                        mov              qword ptr [rsp + 56], rcx
                        mov              qword ptr [rsp + 64], rdx
                        mov              qword ptr [rsp + 48], r8
                        mov              dword ptr [rsp + 40], r14d
                        mov              rax, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rax + 0], rsp
                        mov              qword ptr [rax + 8], rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], r8
                        mov              dword ptr [rax + 32], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n11_match_break_β]
                        mov              qword ptr [rbp + 16], rax
#-----------------------------------------------------------------------------------------------------------------------
n11_match_break_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx13_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx13_237
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx13_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx13_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx13_238
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx13_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx13_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx13_239
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx13_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx13_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx13_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx13_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx13_1
                        add              ecx, 1
                                                                                        jmp   .Lx13_0
.Lx13_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   proc_PAT$1_scanhit
n11_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
proc_PAT$1_scanhit:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx14_0
                        mov              ecx, dword ptr [rdx + 32]
                        lea              rax, [rip + g_scan_hit_start]
                        mov              dword ptr [rax + 0], ecx
.Lx14_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx15_0
                        mov              eax, dword ptr [rdx + 32]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx15_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx15_0
                        mov              dword ptr [rdx + 32], eax
                        mov              rcx, qword ptr [rdx + 0]
                        mov              dword ptr [rcx + 40], eax
                        mov              r14d, eax
                        mov              rsp, rcx
                                                                                        jmp   proc_PAT$1_attempt
.Lx15_0:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rax
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rdx + 0], rax
                        mov              rcx, qword ptr [rax + 56]
                        mov              qword ptr [rdx + 8], rcx
                        mov              rcx, qword ptr [rax + 64]
                        mov              qword ptr [rdx + 16], rcx
                        mov              rcx, qword ptr [rax + 48]
                        mov              qword ptr [rdx + 24], rcx
                        mov              ecx, dword ptr [rax + 40]
                        mov              dword ptr [rdx + 32], ecx
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 16]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        push             qword ptr [rdx + 0]
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, qword ptr [rdx + 8]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 16]
                        mov              rsp, qword ptr [rdx + 0]
                        add              rsp, 80
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        sub              rsp, 400
                        mov              qword ptr [rsp + 376], rcx
                        mov              qword ptr [rsp + 384], rdx
                        mov              qword ptr [rsp + 368], r8
                        mov              dword ptr [rsp + 360], r14d
                        mov              rax, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rax + 0], rsp
                        mov              qword ptr [rax + 8], rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], r8
                        mov              dword ptr [rax + 32], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + proc_PAT$2_ω]
                        mov              qword ptr [rbp + 336], rax
#-----------------------------------------------------------------------------------------------------------------------
n16_match_fence1_α:
                        mov              qword ptr [rbp + 288], rsp
                        mov              qword ptr [rbp + 320], rsp
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
                                                                                        jmp   n39_match_alternate_α
n16_match_fence1_as:
                        mov              rsp, rbp
                        pop              rbp
                        mov              rsp, qword ptr [rbp + 320]
                                                                                        jmp   n17_match_alternate_α
n16_match_fence1_af:
                        mov              rsp, rbp
                        pop              rbp
n16_match_fence1_β:
                        mov              rsp, qword ptr [rbp + 320]
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_match_alternate_α:
                        mov              dword ptr [rbp + 192], r14d
                        lea              rax, [rip + .Lx45_21]
                        mov              qword ptr [rbp + 208], rax
                                                                                        jmp   n38_match_lit_α
.Lx45_21:
                        lea              rax, [rip + .Lx45_19]
                        mov              qword ptr [rbp + 208], rax
                                                                                        jmp   n33_match_any_α
n17_match_alternate_s0:
                        lea              rax, [rip + .Lx45_40]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n17_match_alternate_as
n17_match_alternate_s1:
                        lea              rax, [rip + .Lx45_41]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n17_match_alternate_as
.Lx45_40:
                                                                                        jmp   n38_match_lit_β
.Lx45_41:
                                                                                        jmp   n34_match_fence1_β
n17_match_alternate_as:
                                                                                        jmp   n18_match_fence1_α
n17_match_alternate_β:
                        mov              rax, qword ptr [rbp + 200]
                                                                                        jmp   rax
n17_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 192]
                        mov              rax, qword ptr [rbp + 208]
                                                                                        jmp   rax
.Lx45_19:
                                                                                        jmp   n16_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_fence1_α:
                        mov              qword ptr [rbp + 128], rsp
                        mov              qword ptr [rbp + 160], rsp
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
                                                                                        jmp   n28_match_alternate_α
n18_match_fence1_as:
                        mov              rsp, rbp
                        pop              rbp
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n19_match_fence1_α
n18_match_fence1_af:
                        mov              rsp, rbp
                        pop              rbp
n18_match_fence1_β:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n17_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_fence1_α:
                        mov              qword ptr [rbp + 16], rsp
                        mov              qword ptr [rbp + 48], rsp
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
                                                                                        jmp   n20_match_alternate_α
n19_match_fence1_as:
                        mov              rsp, rbp
                        pop              rbp
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   proc_PAT$2_γ
n19_match_fence1_af:
                        mov              rsp, rbp
                        pop              rbp
n19_match_fence1_β:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n18_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx51_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n22_match_any_α
.Lx51_21:
                        lea              rax, [rip + .Lx51_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n21_match_lit_α
n20_match_alternate_s0:
                        lea              rax, [rip + .Lx51_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n20_match_alternate_as
n20_match_alternate_s1:
                        lea              rax, [rip + .Lx51_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n20_match_alternate_as
.Lx51_40:
                                                                                        jmp   n24_match_span_β
.Lx51_41:
                                                                                        jmp   n21_match_lit_β
n20_match_alternate_as:
                                                                                        jmp   n19_match_fence1_as
n20_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n20_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx51_19:
                                                                                        jmp   n19_match_fence1_af
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
                        cmp              esi, 101
                                                                                        je    .Lx55_0
                        cmp              esi, 69
                                                                                        je    .Lx55_0
                                                                                        jmp   n20_match_alternate_af
.Lx55_0:
                        add              r14d, 1
                                                                                        jmp   n23_match_fence1_α
n22_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n20_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n23_match_fence1_α:
                        mov              qword ptr [rbp + 64], rsp
                        mov              qword ptr [rbp + 96], rsp
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
                                                                                        jmp   n25_match_alternate_α
n23_match_fence1_as:
                        mov              rsp, rbp
                        pop              rbp
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n24_match_span_α
n23_match_fence1_af:
                        mov              rsp, rbp
                        pop              rbp
n23_match_fence1_β:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n22_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n24_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx59_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx59_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx59_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx59_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx59_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx59_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx59_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx59_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx59_1
                        add              ecx, 1
                                                                                        jmp   .Lx59_0
.Lx59_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx59_240
                        add              rsp, 16
                                                                                        jmp   n23_match_fence1_β
.Lx59_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n20_match_alternate_s0
n24_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n23_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n25_match_alternate_α:
                        mov              dword ptr [rbp + 80], r14d
                        lea              rax, [rip + .Lx61_21]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   n27_match_any_α
.Lx61_21:
                        lea              rax, [rip + .Lx61_19]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   n26_match_lit_α
n25_match_alternate_s0:
                        lea              rax, [rip + .Lx61_40]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n25_match_alternate_as
n25_match_alternate_s1:
                        lea              rax, [rip + .Lx61_41]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n25_match_alternate_as
.Lx61_40:
                                                                                        jmp   n27_match_any_β
.Lx61_41:
                                                                                        jmp   n26_match_lit_β
n25_match_alternate_as:
                                                                                        jmp   n23_match_fence1_as
n25_match_alternate_β:
                        mov              rax, qword ptr [rbp + 88]
                                                                                        jmp   rax
n25_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rax, qword ptr [rbp + 96]
                                                                                        jmp   rax
.Lx61_19:
                                                                                        jmp   n23_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n26_match_lit_α:
                                                                                        jmp   n25_match_alternate_s1
n26_match_lit_β:
                                                                                        jmp   n25_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n27_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n25_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43
                                                                                        je    .Lx65_0
                        cmp              esi, 45
                                                                                        je    .Lx65_0
                                                                                        jmp   n25_match_alternate_af
.Lx65_0:
                        add              r14d, 1
                                                                                        jmp   n25_match_alternate_s0
n27_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n25_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n28_match_alternate_α:
                        mov              dword ptr [rbp + 144], r14d
                        lea              rax, [rip + .Lx67_21]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n31_match_lit_α
.Lx67_21:
                        lea              rax, [rip + .Lx67_19]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n29_match_lit_α
n28_match_alternate_s0:
                        lea              rax, [rip + .Lx67_40]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n28_match_alternate_as
n28_match_alternate_s1:
                        lea              rax, [rip + .Lx67_41]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n28_match_alternate_as
.Lx67_40:
                                                                                        jmp   n30_goto_β
.Lx67_41:
                                                                                        jmp   n29_match_lit_β
n28_match_alternate_as:
                                                                                        jmp   n18_match_fence1_as
n28_match_alternate_β:
                        mov              rax, qword ptr [rbp + 152]
                                                                                        jmp   rax
n28_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 144]
                        mov              rax, qword ptr [rbp + 160]
                                                                                        jmp   rax
.Lx67_19:
                                                                                        jmp   n18_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n29_match_lit_α:
                                                                                        jmp   n28_match_alternate_s1
n29_match_lit_β:
                                                                                        jmp   n28_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n30_goto_α:
                                                                                        jmp   n28_match_alternate_af
n30_goto_β:
                                                                                        jmp   n28_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n31_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n28_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 46
                                                                                        jne   n28_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n32_match_span_α
n31_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n28_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n32_match_span_α:
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx74_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx74_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx74_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx74_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx74_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx74_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx74_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx74_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx74_1
                        add              ecx, 1
                                                                                        jmp   .Lx74_0
.Lx74_1:
                        cmp              ecx, r14d
                                                                                        jle   n31_match_lit_β
                        mov              dword ptr [rbp + 180], r14d
                        mov              r14d, ecx
                                                                                        jmp   n28_match_alternate_s0
n32_match_span_β:
                        mov              r14d, dword ptr [rbp + 180]
                                                                                        jmp   n31_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n33_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n17_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C3]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n17_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n34_match_fence1_α
n33_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n17_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n34_match_fence1_α:
                        mov              qword ptr [rbp + 224], rsp
                        mov              qword ptr [rbp + 256], rsp
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
                                                                                        jmp   n35_match_alternate_α
n34_match_fence1_as:
                        mov              rsp, rbp
                        pop              rbp
                        mov              rsp, qword ptr [rbp + 256]
                                                                                        jmp   n17_match_alternate_s1
n34_match_fence1_af:
                        mov              rsp, rbp
                        pop              rbp
n34_match_fence1_β:
                        mov              rsp, qword ptr [rbp + 256]
                                                                                        jmp   n33_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_alternate_α:
                        mov              dword ptr [rbp + 240], r14d
                        lea              rax, [rip + .Lx80_21]
                        mov              qword ptr [rbp + 256], rax
                                                                                        jmp   n37_match_span_α
.Lx80_21:
                        lea              rax, [rip + .Lx80_19]
                        mov              qword ptr [rbp + 256], rax
                                                                                        jmp   n36_match_lit_α
n35_match_alternate_s0:
                        lea              rax, [rip + .Lx80_40]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n35_match_alternate_as
n35_match_alternate_s1:
                        lea              rax, [rip + .Lx80_41]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n35_match_alternate_as
.Lx80_40:
                                                                                        jmp   n37_match_span_β
.Lx80_41:
                                                                                        jmp   n36_match_lit_β
n35_match_alternate_as:
                                                                                        jmp   n34_match_fence1_as
n35_match_alternate_β:
                        mov              rax, qword ptr [rbp + 248]
                                                                                        jmp   rax
n35_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 240]
                        mov              rax, qword ptr [rbp + 256]
                                                                                        jmp   rax
.Lx80_19:
                                                                                        jmp   n34_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n36_match_lit_α:
                                                                                        jmp   n35_match_alternate_s1
n36_match_lit_β:
                                                                                        jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n37_match_span_α:
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx84_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx84_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx84_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx84_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx84_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx84_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx84_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx84_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx84_1
                        add              ecx, 1
                                                                                        jmp   .Lx84_0
.Lx84_1:
                        cmp              ecx, r14d
                                                                                        jle   n35_match_alternate_af
                        mov              dword ptr [rbp + 276], r14d
                        mov              r14d, ecx
                                                                                        jmp   n35_match_alternate_s0
n37_match_span_β:
                        mov              r14d, dword ptr [rbp + 276]
                                                                                        jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n38_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n17_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 48
                                                                                        jne   n17_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n17_match_alternate_s0
n38_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n17_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n39_match_alternate_α:
                        mov              dword ptr [rbp + 304], r14d
                        lea              rax, [rip + .Lx88_21]
                        mov              qword ptr [rbp + 320], rax
                                                                                        jmp   n41_match_lit_α
.Lx88_21:
                        lea              rax, [rip + .Lx88_19]
                        mov              qword ptr [rbp + 320], rax
                                                                                        jmp   n40_match_lit_α
n39_match_alternate_s0:
                        lea              rax, [rip + .Lx88_40]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n39_match_alternate_as
n39_match_alternate_s1:
                        lea              rax, [rip + .Lx88_41]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n39_match_alternate_as
.Lx88_40:
                                                                                        jmp   n41_match_lit_β
.Lx88_41:
                                                                                        jmp   n40_match_lit_β
n39_match_alternate_as:
                                                                                        jmp   n16_match_fence1_as
n39_match_alternate_β:
                        mov              rax, qword ptr [rbp + 312]
                                                                                        jmp   rax
n39_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 304]
                        mov              rax, qword ptr [rbp + 320]
                                                                                        jmp   rax
.Lx88_19:
                                                                                        jmp   n16_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n40_match_lit_α:
                                                                                        jmp   n39_match_alternate_s1
n40_match_lit_β:
                                                                                        jmp   n39_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n41_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n39_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n39_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n39_match_alternate_s0
n41_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n39_match_alternate_af
proc_PAT$2_scanhit:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx93_0
                        mov              ecx, dword ptr [rdx + 32]
                        lea              rax, [rip + g_scan_hit_start]
                        mov              dword ptr [rax + 0], ecx
.Lx93_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx94_0
                        mov              eax, dword ptr [rdx + 32]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx94_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx94_0
                        mov              dword ptr [rdx + 32], eax
                        mov              rcx, qword ptr [rdx + 0]
                        mov              dword ptr [rcx + 360], eax
                        mov              r14d, eax
                        mov              rsp, rcx
                                                                                        jmp   proc_PAT$2_attempt
.Lx94_0:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rax
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rdx + 0], rax
                        mov              rcx, qword ptr [rax + 376]
                        mov              qword ptr [rdx + 8], rcx
                        mov              rcx, qword ptr [rax + 384]
                        mov              qword ptr [rdx + 16], rcx
                        mov              rcx, qword ptr [rax + 368]
                        mov              qword ptr [rdx + 24], rcx
                        mov              ecx, dword ptr [rax + 360]
                        mov              dword ptr [rdx + 32], ecx
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 336]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        push             qword ptr [rdx + 0]
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, qword ptr [rdx + 8]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 16]
                        mov              rsp, qword ptr [rdx + 0]
                        add              rsp, 400
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
                        mov              rax, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rax + 0], rsp
                        mov              qword ptr [rax + 8], rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], r8
                        mov              dword ptr [rax + 32], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + proc_PAT$3_ω]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n95_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052528]                    # PAT$3$V0
                        mov              rdx, qword ptr [1879052536]
                        cmp              eax, 8
                                                                                        jne   .Lx104_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx104_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx104_10
.Lx104_9:
                        xor              eax, eax
.Lx104_10:
                        test             rax, rax
                                                                                        jz    .Lx104_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx104_4]
                        lea              rdx, [rip + .Lx104_5]
                                                                                        jmp   rax
.Lx104_4:
                                                                                        jmp   n96_match_alternate_α
.Lx104_5:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$3_scanfail
.Lx104_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx104_2:
                        test             rax, rax
                                                                                        je    .Lx104_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx104_7]
                        lea              rdx, [rip + .Lx104_8]
                                                                                        jmp   rax
.Lx104_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx104_2
.Lx104_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx104_2
.Lx104_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx104_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$3_scanfail
.Lx104_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx104_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n96_match_alternate_α
.Lx104_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$3_scanfail
n95_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n96_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx106_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n103_match_any_α
.Lx106_21:
                        lea              rax, [rip + .Lx106_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n98_match_lit_α
n96_match_alternate_s0:
                        lea              rax, [rip + .Lx106_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n96_match_alternate_as
n96_match_alternate_s1:
                        lea              rax, [rip + .Lx106_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n96_match_alternate_as
.Lx106_40:
                                                                                        jmp   n103_match_any_β
.Lx106_41:
                                                                                        jmp   n97_goto_β
n96_match_alternate_as:
                                                                                        jmp   proc_PAT$3_γ
n96_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n96_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx106_19:
                                                                                        jmp   n95_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n97_goto_α:
                                                                                        jmp   n96_match_alternate_af
n97_goto_β:
                                                                                        jmp   n96_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n98_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n96_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 117
                                                                                        jne   n96_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n99_match_any_α
n98_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n96_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n99_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n98_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n98_match_lit_β
                        add              r14d, 1
                                                                                        jmp   n100_match_any_α
n99_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n98_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n100_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n99_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n99_match_any_β
                        add              r14d, 1
                                                                                        jmp   n101_match_any_α
n100_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n99_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n101_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n100_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n100_match_any_β
                        add              r14d, 1
                                                                                        jmp   n102_match_any_α
n101_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n100_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n102_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n101_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n101_match_any_β
                        add              r14d, 1
                                                                                        jmp   n96_match_alternate_s1
n102_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n101_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n103_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n96_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C5]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n96_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n96_match_alternate_s0
n103_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n96_match_alternate_af
proc_PAT$3_scanhit:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx120_0
                        mov              ecx, dword ptr [rdx + 32]
                        lea              rax, [rip + g_scan_hit_start]
                        mov              dword ptr [rax + 0], ecx
.Lx120_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx121_0
                        mov              eax, dword ptr [rdx + 32]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx121_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx121_0
                        mov              dword ptr [rdx + 32], eax
                        mov              rcx, qword ptr [rdx + 0]
                        mov              dword ptr [rcx + 104], eax
                        mov              r14d, eax
                        mov              rsp, rcx
                                                                                        jmp   proc_PAT$3_attempt
.Lx121_0:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        add              rsp, 8
                        pop              rax
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rdx + 0], rax
                        mov              rcx, qword ptr [rax + 120]
                        mov              qword ptr [rdx + 8], rcx
                        mov              rcx, qword ptr [rax + 128]
                        mov              qword ptr [rdx + 16], rcx
                        mov              rcx, qword ptr [rax + 112]
                        mov              qword ptr [rdx + 24], rcx
                        mov              ecx, dword ptr [rax + 104]
                        mov              dword ptr [rdx + 32], ecx
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        push             qword ptr [rdx + 0]
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, qword ptr [rdx + 8]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 16]
                        mov              rsp, qword ptr [rdx + 0]
                        add              rsp, 144
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
                        sub              rsp, 240
                        mov              qword ptr [rsp + 216], rcx
                        mov              qword ptr [rsp + 224], rdx
                        mov              qword ptr [rsp + 208], r8
                        mov              dword ptr [rsp + 200], r14d
                        mov              rax, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rax + 0], rsp
                        mov              qword ptr [rax + 8], rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], r8
                        mov              dword ptr [rax + 32], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + proc_PAT$4_ω]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n122_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$4_scanfail
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   proc_PAT$4_scanfail
                        add              r14d, 1
                                                                                        jmp   n123_match_defer_α
n122_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$4_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n123_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052544]                    # PAT$4$V0
                        mov              rdx, qword ptr [1879052552]
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
                                                                                        jmp   n124_match_arbno_α
.Lx130_5:
                        add              rsp, 16
                                                                                        jmp   n122_match_lit_β
.Lx130_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
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
                                                                                        jns   .Lx130_240
                        add              rsp, 16
                                                                                        jmp   n122_match_lit_β
.Lx130_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx130_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n124_match_arbno_α
.Lx130_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n122_match_lit_β
n123_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n124_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 96], rbp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   n125_match_lit_α
n124_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 68]
                        mov              rax, qword ptr [rbp + 80]
                        sub              rsp, 96
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                                                                                        jmp   n126_match_defer_α
n124_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n126_match_defer_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   n125_match_lit_α
n124_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 184]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx132_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n126_match_defer_β
.Lx132_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rbp, qword ptr [rbp + 96]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n123_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n125_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n124_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   n124_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$4_scanhit
n125_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n124_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n126_match_defer_α:
                        mov              rax, qword ptr [1879052560]                    # PAT$4$V1
                        mov              rdx, qword ptr [1879052568]
                        cmp              eax, 8
                                                                                        jne   .Lx135_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx135_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx135_10
.Lx135_9:
                        xor              eax, eax
.Lx135_10:
                        test             rax, rax
                                                                                        jz    .Lx135_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx135_4]
                        lea              rdx, [rip + .Lx135_5]
                                                                                        jmp   rax
.Lx135_4:
                                                                                        jmp   n127_match_defer_α
.Lx135_5:
                                                                                        jmp   n124_match_arbno_af
.Lx135_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx135_2:
                        test             rax, rax
                                                                                        je    .Lx135_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx135_7]
                        lea              rdx, [rip + .Lx135_8]
                                                                                        jmp   rax
.Lx135_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx135_2
.Lx135_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx135_2
.Lx135_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n124_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx135_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n127_match_defer_α
.Lx135_6:
                        add              rsp, 16
                                                                                        jmp   n124_match_arbno_af
n126_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n127_match_defer_α:
                        mov              rax, qword ptr [1879052576]                    # PAT$4$V2
                        mov              rdx, qword ptr [1879052584]
                        cmp              eax, 8
                                                                                        jne   .Lx136_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx136_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx136_10
.Lx136_9:
                        xor              eax, eax
.Lx136_10:
                        test             rax, rax
                                                                                        jz    .Lx136_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx136_4]
                        lea              rdx, [rip + .Lx136_5]
                                                                                        jmp   rax
.Lx136_4:
                                                                                        jmp   n124_match_arbno_as
.Lx136_5:
                                                                                        jmp   n126_match_defer_β
.Lx136_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx136_2:
                        test             rax, rax
                                                                                        je    .Lx136_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx136_7]
                        lea              rdx, [rip + .Lx136_8]
                                                                                        jmp   rax
.Lx136_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx136_2
.Lx136_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx136_2
.Lx136_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n126_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx136_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n124_match_arbno_as
.Lx136_6:
                        add              rsp, 16
                                                                                        jmp   n126_match_defer_β
n127_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$4_scanhit:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx137_0
                        mov              ecx, dword ptr [rdx + 32]
                        lea              rax, [rip + g_scan_hit_start]
                        mov              dword ptr [rax + 0], ecx
.Lx137_0:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx138_0
                        mov              eax, dword ptr [rdx + 32]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx138_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx138_0
                        mov              dword ptr [rdx + 32], eax
                        mov              rcx, qword ptr [rdx + 0]
                        mov              dword ptr [rcx + 200], eax
                        mov              r14d, eax
                        mov              rsp, rcx
                                                                                        jmp   proc_PAT$4_attempt
.Lx138_0:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        add              rsp, 8
                        pop              rax
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rdx + 0], rax
                        mov              rcx, qword ptr [rax + 216]
                        mov              qword ptr [rdx + 8], rcx
                        mov              rcx, qword ptr [rax + 224]
                        mov              qword ptr [rdx + 16], rcx
                        mov              rcx, qword ptr [rax + 208]
                        mov              qword ptr [rdx + 24], rcx
                        mov              ecx, dword ptr [rax + 200]
                        mov              dword ptr [rdx + 32], ecx
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        push             qword ptr [rdx + 0]
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, qword ptr [rdx + 8]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 16]
                        mov              rsp, qword ptr [rdx + 0]
                        add              rsp, 240
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rcx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 128], r8
                        mov              dword ptr [rsp + 120], r14d
                        mov              rax, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rax + 0], rsp
                        mov              qword ptr [rax + 8], rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], r8
                        mov              dword ptr [rax + 32], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
                        lea              rax, [rip + proc_PAT$5_ω]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n139_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052592]                    # PAT$5$V0
                        mov              rdx, qword ptr [1879052600]
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
                                                                                        jmp   n140_match_defer_α
.Lx144_5:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_scanfail
.Lx144_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
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
                                                                                        jmp   proc_PAT$5_scanfail
.Lx144_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx144_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n140_match_defer_α
.Lx144_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_scanfail
n139_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n140_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052608]                    # PAT$5$V1
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 8
                                                                                        jne   .Lx145_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx145_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx145_10
.Lx145_9:
                        xor              eax, eax
.Lx145_10:
                        test             rax, rax
                                                                                        jz    .Lx145_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx145_4]
                        lea              rdx, [rip + .Lx145_5]
                                                                                        jmp   rax
.Lx145_4:
                                                                                        jmp   n141_match_defer_α
.Lx145_5:
                        add              rsp, 16
                                                                                        jmp   n139_match_defer_β
.Lx145_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx145_2:
                        test             rax, rax
                                                                                        je    .Lx145_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx145_7]
                        lea              rdx, [rip + .Lx145_8]
                                                                                        jmp   rax
.Lx145_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx145_2
.Lx145_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx145_2
.Lx145_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx145_240
                        add              rsp, 16
                                                                                        jmp   n139_match_defer_β
.Lx145_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx145_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n141_match_defer_α
.Lx145_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n139_match_defer_β
n140_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n141_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052624]                    # PAT$5$V2
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 8
                                                                                        jne   .Lx146_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx146_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx146_10
.Lx146_9:
                        xor              eax, eax
.Lx146_10:
                        test             rax, rax
                                                                                        jz    .Lx146_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx146_4]
                        lea              rdx, [rip + .Lx146_5]
                                                                                        jmp   rax
.Lx146_4:
                                                                                        jmp   n142_match_lit_α
.Lx146_5:
                        add              rsp, 16
                                                                                        jmp   n140_match_defer_β
.Lx146_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx146_2:
                        test             rax, rax
                                                                                        je    .Lx146_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx146_7]
                        lea              rdx, [rip + .Lx146_8]
                                                                                        jmp   rax
.Lx146_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx146_2
.Lx146_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx146_2
.Lx146_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx146_240
                        add              rsp, 16
                                                                                        jmp   n140_match_defer_β
.Lx146_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx146_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n142_match_lit_α
.Lx146_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n140_match_defer_β
n141_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n142_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n141_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 58
                                                                                        jne   n141_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n143_match_defer_α
n142_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n141_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n143_match_defer_α:
                        sub              rsp, 16
                        mov              qword ptr [rbp + 80], rsp
                        mov              rax, qword ptr [1879052480]                    # jelement
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 8
                                                                                        jne   .Lx149_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx149_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx149_10
.Lx149_9:
                        xor              eax, eax
.Lx149_10:
                        test             rax, rax
                                                                                        jz    .Lx149_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx149_4]
                        lea              rdx, [rip + .Lx149_5]
                                                                                        jmp   rax
.Lx149_4:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   proc_PAT$5_scanhit
.Lx149_5:
                        mov              rsp, qword ptr [rbp + 80]
                        add              rsp, 16
                                                                                        jmp   n142_match_lit_β
.Lx149_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx149_2:
                        test             rax, rax
                                                                                        je    .Lx149_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx149_7]
                        lea              rdx, [rip + .Lx149_8]
                                                                                        jmp   rax
.Lx149_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx149_2
.Lx149_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx149_2
.Lx149_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx149_240
                        add              rsp, 16
                                                                                        jmp   n142_match_lit_β
.Lx149_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx149_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   proc_PAT$5_scanhit
.Lx149_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n142_match_lit_β
n143_match_defer_β:
                        mov              rsp, qword ptr [rbp + 80]
                        add              rsp, 16
                                                                                        jmp   n142_match_lit_β
proc_PAT$5_scanhit:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx150_0
                        mov              ecx, dword ptr [rdx + 32]
                        lea              rax, [rip + g_scan_hit_start]
                        mov              dword ptr [rax + 0], ecx
.Lx150_0:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx151_0
                        mov              eax, dword ptr [rdx + 32]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx151_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx151_0
                        mov              dword ptr [rdx + 32], eax
                        mov              rcx, qword ptr [rdx + 0]
                        mov              dword ptr [rcx + 120], eax
                        mov              r14d, eax
                        mov              rsp, rcx
                                                                                        jmp   proc_PAT$5_attempt
.Lx151_0:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_res:
                        add              rsp, 8
                        pop              rax
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rdx + 0], rax
                        mov              rcx, qword ptr [rax + 136]
                        mov              qword ptr [rdx + 8], rcx
                        mov              rcx, qword ptr [rax + 144]
                        mov              qword ptr [rdx + 16], rcx
                        mov              rcx, qword ptr [rax + 128]
                        mov              qword ptr [rdx + 24], rcx
                        mov              ecx, dword ptr [rax + 120]
                        mov              dword ptr [rdx + 32], ecx
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_β:
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_γ:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        push             qword ptr [rdx + 0]
                        lea              rax, [rip + proc_PAT$5_res]
                        push             rax
                        mov              rax, qword ptr [rdx + 8]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 16]
                        mov              rsp, qword ptr [rdx + 0]
                        add              rsp, 160
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$6_α
proc_PAT$6_α:
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rcx
                        mov              qword ptr [rsp + 256], rdx
                        mov              qword ptr [rsp + 240], r8
                        mov              dword ptr [rsp + 232], r14d
                        mov              rax, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rax + 0], rsp
                        mov              qword ptr [rax + 8], rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], r8
                        mov              dword ptr [rax + 32], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
                        lea              rax, [rip + proc_PAT$6_ω]
                        mov              qword ptr [rbp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n152_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$6_scanfail
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 123
                                                                                        jne   proc_PAT$6_scanfail
                        add              r14d, 1
                                                                                        jmp   n153_match_alternate_α
n152_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$6_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n153_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx164_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n157_match_defer_α
.Lx164_21:
                        lea              rax, [rip + .Lx164_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n155_match_defer_α
n153_match_alternate_s0:
                        lea              rax, [rip + .Lx164_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n153_match_alternate_as
n153_match_alternate_s1:
                        lea              rax, [rip + .Lx164_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n153_match_alternate_as
.Lx164_40:
                                                                                        jmp   n156_goto_β
.Lx164_41:
                                                                                        jmp   n155_match_defer_β
n153_match_alternate_as:
                                                                                        jmp   n154_match_lit_α
n153_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n153_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx164_19:
                                                                                        jmp   n152_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n154_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n153_match_alternate_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 125
                                                                                        jne   n153_match_alternate_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$6_scanhit
n154_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n153_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n155_match_defer_α:
                        mov              rax, qword ptr [1879052672]                    # PAT$6$V2
                        mov              rdx, qword ptr [1879052680]
                        cmp              eax, 8
                                                                                        jne   .Lx167_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx167_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx167_10
.Lx167_9:
                        xor              eax, eax
.Lx167_10:
                        test             rax, rax
                                                                                        jz    .Lx167_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx167_4]
                        lea              rdx, [rip + .Lx167_5]
                                                                                        jmp   rax
.Lx167_4:
                                                                                        jmp   n153_match_alternate_s1
.Lx167_5:
                                                                                        jmp   n153_match_alternate_af
.Lx167_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx167_2:
                        test             rax, rax
                                                                                        je    .Lx167_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx167_7]
                        lea              rdx, [rip + .Lx167_8]
                                                                                        jmp   rax
.Lx167_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx167_2
.Lx167_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx167_2
.Lx167_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n153_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx167_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n153_match_alternate_s1
.Lx167_6:
                        add              rsp, 16
                                                                                        jmp   n153_match_alternate_af
n155_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n156_goto_α:
                                                                                        jmp   n153_match_alternate_af
n156_goto_β:
                                                                                        jmp   n153_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n157_match_defer_α:
                        mov              rax, qword ptr [1879052640]                    # PAT$6$V0
                        mov              rdx, qword ptr [1879052648]
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
                                                                                        jmp   n158_match_arbno_α
.Lx169_5:
                                                                                        jmp   n153_match_alternate_af
.Lx169_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]                               # varname
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
                                                                                        js    n153_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx169_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n158_match_arbno_α
.Lx169_6:
                        add              rsp, 16
                                                                                        jmp   n153_match_alternate_af
n157_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n158_match_arbno_α:
                        mov              dword ptr [rbp + 96], r14d
                        mov              dword ptr [rbp + 100], r14d
                        mov              dword ptr [rbp + 104], 0
                        mov              qword ptr [rbp + 120], rsp
                        mov              qword ptr [rbp + 128], rbp
                        mov              qword ptr [rbp + 112], 0
                                                                                        jmp   n153_match_alternate_s0
n158_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 100]
                        mov              rax, qword ptr [rbp + 112]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 112], rsp
                        mov              rbp, rsp
                        add              rbp, -120
                                                                                        jmp   n159_match_lit_α
n158_match_arbno_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              r14d, eax
                                                                                        je    n159_match_lit_β
                        mov              rbp, qword ptr [rbp + 120]
                        mov              eax, dword ptr [rbp + 104]
                        add              eax, 1
                        mov              dword ptr [rbp + 104], eax
                        mov              dword ptr [rbp + 100], r14d
                                                                                        jmp   n153_match_alternate_s0
n158_match_arbno_af:
                        mov              rax, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 120]
                        lea              rsp, [rbp + 200]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 104]
                        test             ecx, ecx
                                                                                        jz    .Lx171_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 104], ecx
                        mov              qword ptr [rbp + 112], rax
                        lea              rbp, [rax + -120]
                                                                                        jmp   n159_match_lit_β
.Lx171_2:
                        mov              r14d, dword ptr [rbp + 96]
                        mov              rbp, qword ptr [rbp + 128]
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   n157_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n159_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n158_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n158_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n160_match_defer_α
n159_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n158_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n160_match_defer_α:
                        mov              rax, qword ptr [1879052656]                    # PAT$6$V1
                        mov              rdx, qword ptr [1879052664]
                        cmp              eax, 8
                                                                                        jne   .Lx174_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx174_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx174_10
.Lx174_9:
                        xor              eax, eax
.Lx174_10:
                        test             rax, rax
                                                                                        jz    .Lx174_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx174_4]
                        lea              rdx, [rip + .Lx174_5]
                                                                                        jmp   rax
.Lx174_4:
                                                                                        jmp   n158_match_arbno_as
.Lx174_5:
                                                                                        jmp   n159_match_lit_β
.Lx174_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx174_2:
                        test             rax, rax
                                                                                        je    .Lx174_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx174_7]
                        lea              rdx, [rip + .Lx174_8]
                                                                                        jmp   rax
.Lx174_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx174_2
.Lx174_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx174_2
.Lx174_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n159_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx174_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n158_match_arbno_as
.Lx174_6:
                        add              rsp, 16
                                                                                        jmp   n159_match_lit_β
n160_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$6_scanhit:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx175_0
                        mov              ecx, dword ptr [rdx + 32]
                        lea              rax, [rip + g_scan_hit_start]
                        mov              dword ptr [rax + 0], ecx
.Lx175_0:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx176_0
                        mov              eax, dword ptr [rdx + 32]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx176_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx176_0
                        mov              dword ptr [rdx + 32], eax
                        mov              rcx, qword ptr [rdx + 0]
                        mov              dword ptr [rcx + 232], eax
                        mov              r14d, eax
                        mov              rsp, rcx
                                                                                        jmp   proc_PAT$6_attempt
.Lx176_0:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_res:
                        add              rsp, 8
                        pop              rax
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rdx + 0], rax
                        mov              rcx, qword ptr [rax + 248]
                        mov              qword ptr [rdx + 8], rcx
                        mov              rcx, qword ptr [rax + 256]
                        mov              qword ptr [rdx + 16], rcx
                        mov              rcx, qword ptr [rax + 240]
                        mov              qword ptr [rdx + 24], rcx
                        mov              ecx, dword ptr [rax + 232]
                        mov              dword ptr [rdx + 32], ecx
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_β:
                                                                                        jmp   qword ptr [rbp + 208]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_γ:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        push             qword ptr [rdx + 0]
                        lea              rax, [rip + proc_PAT$6_res]
                        push             rax
                        mov              rax, qword ptr [rdx + 8]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 16]
                        mov              rsp, qword ptr [rdx + 0]
                        add              rsp, 272
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$7_α
proc_PAT$7_α:
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rcx
                        mov              qword ptr [rsp + 256], rdx
                        mov              qword ptr [rsp + 240], r8
                        mov              dword ptr [rsp + 232], r14d
                        mov              rax, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rax + 0], rsp
                        mov              qword ptr [rax + 8], rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], r8
                        mov              dword ptr [rax + 32], r14d
proc_PAT$7_attempt:
proc_PAT$7_α_body:
                        lea              rax, [rip + proc_PAT$7_ω]
                        mov              qword ptr [rbp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n177_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$7_scanfail
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 91
                                                                                        jne   proc_PAT$7_scanfail
                        add              r14d, 1
                                                                                        jmp   n178_match_alternate_α
n177_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$7_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n178_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx189_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n182_match_defer_α
.Lx189_21:
                        lea              rax, [rip + .Lx189_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n180_match_defer_α
n178_match_alternate_s0:
                        lea              rax, [rip + .Lx189_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n178_match_alternate_as
n178_match_alternate_s1:
                        lea              rax, [rip + .Lx189_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n178_match_alternate_as
.Lx189_40:
                                                                                        jmp   n181_goto_β
.Lx189_41:
                                                                                        jmp   n180_match_defer_β
n178_match_alternate_as:
                                                                                        jmp   n179_match_lit_α
n178_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n178_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx189_19:
                                                                                        jmp   n177_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n179_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n178_match_alternate_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 93
                                                                                        jne   n178_match_alternate_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$7_scanhit
n179_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n178_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n180_match_defer_α:
                        mov              rax, qword ptr [1879052688]                    # PAT$7$V0
                        mov              rdx, qword ptr [1879052696]
                        cmp              eax, 8
                                                                                        jne   .Lx192_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx192_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx192_10
.Lx192_9:
                        xor              eax, eax
.Lx192_10:
                        test             rax, rax
                                                                                        jz    .Lx192_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx192_4]
                        lea              rdx, [rip + .Lx192_5]
                                                                                        jmp   rax
.Lx192_4:
                                                                                        jmp   n178_match_alternate_s1
.Lx192_5:
                                                                                        jmp   n178_match_alternate_af
.Lx192_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S11]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx192_2:
                        test             rax, rax
                                                                                        je    .Lx192_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx192_7]
                        lea              rdx, [rip + .Lx192_8]
                                                                                        jmp   rax
.Lx192_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx192_2
.Lx192_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx192_2
.Lx192_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n178_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx192_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n178_match_alternate_s1
.Lx192_6:
                        add              rsp, 16
                                                                                        jmp   n178_match_alternate_af
n180_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n181_goto_α:
                                                                                        jmp   n178_match_alternate_af
n181_goto_β:
                                                                                        jmp   n178_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n182_match_defer_α:
                        mov              qword ptr [rbp + 64], rsp
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
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n183_match_arbno_α
.Lx194_5:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n178_match_alternate_af
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
                                                                                        js    n178_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx194_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n183_match_arbno_α
.Lx194_6:
                        add              rsp, 16
                                                                                        jmp   n178_match_alternate_af
n182_match_defer_β:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n178_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n183_match_arbno_α:
                        mov              dword ptr [rbp + 96], r14d
                        mov              dword ptr [rbp + 100], r14d
                        mov              dword ptr [rbp + 104], 0
                        mov              qword ptr [rbp + 120], rsp
                        mov              qword ptr [rbp + 128], rbp
                        mov              qword ptr [rbp + 112], 0
                                                                                        jmp   n178_match_alternate_s0
n183_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 100]
                        mov              rax, qword ptr [rbp + 112]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 112], rsp
                        mov              rbp, rsp
                        add              rbp, -120
                                                                                        jmp   n184_match_lit_α
n183_match_arbno_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              r14d, eax
                                                                                        je    n184_match_lit_β
                        mov              rbp, qword ptr [rbp + 120]
                        mov              eax, dword ptr [rbp + 104]
                        add              eax, 1
                        mov              dword ptr [rbp + 104], eax
                        mov              dword ptr [rbp + 100], r14d
                                                                                        jmp   n178_match_alternate_s0
n183_match_arbno_af:
                        mov              rax, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 120]
                        lea              rsp, [rbp + 200]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 104]
                        test             ecx, ecx
                                                                                        jz    .Lx196_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 104], ecx
                        mov              qword ptr [rbp + 112], rax
                        lea              rbp, [rax + -120]
                                                                                        jmp   n184_match_lit_β
.Lx196_2:
                        mov              r14d, dword ptr [rbp + 96]
                        mov              rbp, qword ptr [rbp + 128]
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   n182_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n184_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n183_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n183_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n185_match_defer_α
n184_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n183_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n185_match_defer_α:
                        mov              qword ptr [rbp + 176], rsp
                        mov              rax, qword ptr [1879052480]                    # jelement
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 8
                                                                                        jne   .Lx199_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx199_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx199_10
.Lx199_9:
                        xor              eax, eax
.Lx199_10:
                        test             rax, rax
                                                                                        jz    .Lx199_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx199_4]
                        lea              rdx, [rip + .Lx199_5]
                                                                                        jmp   rax
.Lx199_4:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n183_match_arbno_as
.Lx199_5:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n184_match_lit_β
.Lx199_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx199_2:
                        test             rax, rax
                                                                                        je    .Lx199_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx199_7]
                        lea              rdx, [rip + .Lx199_8]
                                                                                        jmp   rax
.Lx199_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx199_2
.Lx199_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx199_2
.Lx199_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n184_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx199_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n183_match_arbno_as
.Lx199_6:
                        add              rsp, 16
                                                                                        jmp   n184_match_lit_β
n185_match_defer_β:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n184_match_lit_β
proc_PAT$7_scanhit:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx200_0
                        mov              ecx, dword ptr [rdx + 32]
                        lea              rax, [rip + g_scan_hit_start]
                        mov              dword ptr [rax + 0], ecx
.Lx200_0:
                                                                                        jmp   proc_PAT$7_γ
proc_PAT$7_scanfail:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx201_0
                        mov              eax, dword ptr [rdx + 32]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx201_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx201_0
                        mov              dword ptr [rdx + 32], eax
                        mov              rcx, qword ptr [rdx + 0]
                        mov              dword ptr [rcx + 232], eax
                        mov              r14d, eax
                        mov              rsp, rcx
                                                                                        jmp   proc_PAT$7_attempt
.Lx201_0:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_res:
                        add              rsp, 8
                        pop              rax
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rdx + 0], rax
                        mov              rcx, qword ptr [rax + 248]
                        mov              qword ptr [rdx + 8], rcx
                        mov              rcx, qword ptr [rax + 256]
                        mov              qword ptr [rdx + 16], rcx
                        mov              rcx, qword ptr [rax + 240]
                        mov              qword ptr [rdx + 24], rcx
                        mov              ecx, dword ptr [rax + 232]
                        mov              dword ptr [rdx + 32], ecx
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_β:
                                                                                        jmp   qword ptr [rbp + 208]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_γ:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        push             qword ptr [rdx + 0]
                        lea              rax, [rip + proc_PAT$7_res]
                        push             rax
                        mov              rax, qword ptr [rdx + 8]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_ω:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 16]
                        mov              rsp, qword ptr [rdx + 0]
                        add              rsp, 272
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$8_α
proc_PAT$8_α:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 160], r8
                        mov              dword ptr [rsp + 152], r14d
                        mov              rax, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rax + 0], rsp
                        mov              qword ptr [rax + 8], rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], r8
                        mov              dword ptr [rax + 32], r14d
proc_PAT$8_attempt:
proc_PAT$8_α_body:
                        lea              rax, [rip + n202_match_alternate_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n202_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx211_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n209_match_defer_α
.Lx211_21:
                        lea              rax, [rip + .Lx211_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n208_match_defer_α
.Lx211_22:
                        lea              rax, [rip + .Lx211_23]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n207_match_defer_α
.Lx211_23:
                        lea              rax, [rip + .Lx211_24]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n206_match_defer_α
.Lx211_24:
                        lea              rax, [rip + .Lx211_25]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n205_match_lit_α
.Lx211_25:
                        lea              rax, [rip + .Lx211_26]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n204_match_lit_α
.Lx211_26:
                        lea              rax, [rip + .Lx211_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n203_match_lit_α
n202_match_alternate_s0:
                        lea              rax, [rip + .Lx211_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n202_match_alternate_as
n202_match_alternate_s1:
                        lea              rax, [rip + .Lx211_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n202_match_alternate_as
n202_match_alternate_s2:
                        lea              rax, [rip + .Lx211_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n202_match_alternate_as
n202_match_alternate_s3:
                        lea              rax, [rip + .Lx211_43]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n202_match_alternate_as
n202_match_alternate_s4:
                        lea              rax, [rip + .Lx211_44]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n202_match_alternate_as
n202_match_alternate_s5:
                        lea              rax, [rip + .Lx211_45]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n202_match_alternate_as
n202_match_alternate_s6:
                        lea              rax, [rip + .Lx211_46]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n202_match_alternate_as
.Lx211_40:
                                                                                        jmp   n209_match_defer_β
.Lx211_41:
                                                                                        jmp   n208_match_defer_β
.Lx211_42:
                                                                                        jmp   n207_match_defer_β
.Lx211_43:
                                                                                        jmp   n206_match_defer_β
.Lx211_44:
                                                                                        jmp   n205_match_lit_β
.Lx211_45:
                                                                                        jmp   n204_match_lit_β
.Lx211_46:
                                                                                        jmp   n203_match_lit_β
n202_match_alternate_as:
                                                                                        jmp   proc_PAT$8_γ
n202_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n202_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx211_19:
                                                                                        jmp   proc_PAT$8_ω
#-----------------------------------------------------------------------------------------------------------------------
n203_match_lit_α:
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d
                                                                                        jg    n202_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819047278
                                                                                        jne   n202_match_alternate_af
                        add              r14d, 4
                                                                                        jmp   n202_match_alternate_s6
n203_match_lit_β:
                        sub              r14d, 4
                                                                                        jmp   n202_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n204_match_lit_α:
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d
                                                                                        jg    n202_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1936482662
                                                                                        jne   n202_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101
                                                                                        jne   n202_match_alternate_af
                        add              r14d, 5
                                                                                        jmp   n202_match_alternate_s5
n204_match_lit_β:
                        sub              r14d, 5
                                                                                        jmp   n202_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n205_match_lit_α:
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d
                                                                                        jg    n202_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1702195828
                                                                                        jne   n202_match_alternate_af
                        add              r14d, 4
                                                                                        jmp   n202_match_alternate_s4
n205_match_lit_β:
                        sub              r14d, 4
                                                                                        jmp   n202_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n206_match_defer_α:
                        mov              rax, qword ptr [1879052752]                    # PAT$8$V3
                        mov              rdx, qword ptr [1879052760]
                        cmp              eax, 8
                                                                                        jne   .Lx218_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx218_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx218_10
.Lx218_9:
                        xor              eax, eax
.Lx218_10:
                        test             rax, rax
                                                                                        jz    .Lx218_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx218_4]
                        lea              rdx, [rip + .Lx218_5]
                                                                                        jmp   rax
.Lx218_4:
                                                                                        jmp   n202_match_alternate_s3
.Lx218_5:
                                                                                        jmp   n202_match_alternate_af
.Lx218_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S12]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx218_2:
                        test             rax, rax
                                                                                        je    .Lx218_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx218_7]
                        lea              rdx, [rip + .Lx218_8]
                                                                                        jmp   rax
.Lx218_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx218_2
.Lx218_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx218_2
.Lx218_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n202_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx218_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n202_match_alternate_s3
.Lx218_6:
                        add              rsp, 16
                                                                                        jmp   n202_match_alternate_af
n206_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n207_match_defer_α:
                        mov              rax, qword ptr [1879052736]                    # PAT$8$V2
                        mov              rdx, qword ptr [1879052744]
                        cmp              eax, 8
                                                                                        jne   .Lx219_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx219_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx219_10
.Lx219_9:
                        xor              eax, eax
.Lx219_10:
                        test             rax, rax
                                                                                        jz    .Lx219_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx219_4]
                        lea              rdx, [rip + .Lx219_5]
                                                                                        jmp   rax
.Lx219_4:
                                                                                        jmp   n202_match_alternate_s2
.Lx219_5:
                                                                                        jmp   n202_match_alternate_af
.Lx219_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S13]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx219_2:
                        test             rax, rax
                                                                                        je    .Lx219_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx219_7]
                        lea              rdx, [rip + .Lx219_8]
                                                                                        jmp   rax
.Lx219_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx219_2
.Lx219_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx219_2
.Lx219_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n202_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx219_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n202_match_alternate_s2
.Lx219_6:
                        add              rsp, 16
                                                                                        jmp   n202_match_alternate_af
n207_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n208_match_defer_α:
                        mov              rax, qword ptr [1879052720]                    # PAT$8$V1
                        mov              rdx, qword ptr [1879052728]
                        cmp              eax, 8
                                                                                        jne   .Lx220_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx220_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx220_10
.Lx220_9:
                        xor              eax, eax
.Lx220_10:
                        test             rax, rax
                                                                                        jz    .Lx220_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx220_4]
                        lea              rdx, [rip + .Lx220_5]
                                                                                        jmp   rax
.Lx220_4:
                                                                                        jmp   n202_match_alternate_s1
.Lx220_5:
                                                                                        jmp   n202_match_alternate_af
.Lx220_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S14]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx220_2:
                        test             rax, rax
                                                                                        je    .Lx220_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx220_7]
                        lea              rdx, [rip + .Lx220_8]
                                                                                        jmp   rax
.Lx220_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx220_2
.Lx220_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx220_2
.Lx220_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n202_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx220_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n202_match_alternate_s1
.Lx220_6:
                        add              rsp, 16
                                                                                        jmp   n202_match_alternate_af
n208_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n209_match_defer_α:
                        mov              rax, qword ptr [1879052704]                    # PAT$8$V0
                        mov              rdx, qword ptr [1879052712]
                        cmp              eax, 8
                                                                                        jne   .Lx221_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx221_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx221_10
.Lx221_9:
                        xor              eax, eax
.Lx221_10:
                        test             rax, rax
                                                                                        jz    .Lx221_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx221_4]
                        lea              rdx, [rip + .Lx221_5]
                                                                                        jmp   rax
.Lx221_4:
                                                                                        jmp   n202_match_alternate_s0
.Lx221_5:
                                                                                        jmp   n202_match_alternate_af
.Lx221_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S15]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx221_2:
                        test             rax, rax
                                                                                        je    .Lx221_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx221_7]
                        lea              rdx, [rip + .Lx221_8]
                                                                                        jmp   rax
.Lx221_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx221_2
.Lx221_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx221_2
.Lx221_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n202_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx221_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n202_match_alternate_s0
.Lx221_6:
                        add              rsp, 16
                                                                                        jmp   n202_match_alternate_af
n209_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$8_scanhit:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx222_0
                        mov              ecx, dword ptr [rdx + 32]
                        lea              rax, [rip + g_scan_hit_start]
                        mov              dword ptr [rax + 0], ecx
.Lx222_0:
                                                                                        jmp   proc_PAT$8_γ
proc_PAT$8_scanfail:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx223_0
                        mov              eax, dword ptr [rdx + 32]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx223_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx223_0
                        mov              dword ptr [rdx + 32], eax
                        mov              rcx, qword ptr [rdx + 0]
                        mov              dword ptr [rcx + 152], eax
                        mov              r14d, eax
                        mov              rsp, rcx
                                                                                        jmp   proc_PAT$8_attempt
.Lx223_0:
                                                                                        jmp   proc_PAT$8_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$8_res:
                        add              rsp, 8
                        pop              rax
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rdx + 0], rax
                        mov              rcx, qword ptr [rax + 168]
                        mov              qword ptr [rdx + 8], rcx
                        mov              rcx, qword ptr [rax + 176]
                        mov              qword ptr [rdx + 16], rcx
                        mov              rcx, qword ptr [rax + 160]
                        mov              qword ptr [rdx + 24], rcx
                        mov              ecx, dword ptr [rax + 152]
                        mov              dword ptr [rdx + 32], ecx
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$8_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$8_γ:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        push             qword ptr [rdx + 0]
                        lea              rax, [rip + proc_PAT$8_res]
                        push             rax
                        mov              rax, qword ptr [rdx + 8]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$8_ω:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 16]
                        mov              rsp, qword ptr [rdx + 0]
                        add              rsp, 192
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$9_α
proc_PAT$9_α:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 104], rcx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 96], r8
                        mov              dword ptr [rsp + 88], r14d
                        mov              rax, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rax + 0], rsp
                        mov              qword ptr [rax + 8], rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], r8
                        mov              dword ptr [rax + 32], r14d
proc_PAT$9_attempt:
proc_PAT$9_α_body:
                        lea              rax, [rip + proc_PAT$9_ω]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n224_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]                    # PAT$9$V0
                        mov              rdx, qword ptr [1879052776]
                        cmp              eax, 8
                                                                                        jne   .Lx227_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx227_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx227_10
.Lx227_9:
                        xor              eax, eax
.Lx227_10:
                        test             rax, rax
                                                                                        jz    .Lx227_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx227_4]
                        lea              rdx, [rip + .Lx227_5]
                                                                                        jmp   rax
.Lx227_4:
                                                                                        jmp   n225_match_defer_α
.Lx227_5:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$9_scanfail
.Lx227_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S16]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx227_2:
                        test             rax, rax
                                                                                        je    .Lx227_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx227_7]
                        lea              rdx, [rip + .Lx227_8]
                                                                                        jmp   rax
.Lx227_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx227_2
.Lx227_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx227_2
.Lx227_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx227_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$9_scanfail
.Lx227_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx227_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n225_match_defer_α
.Lx227_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$9_scanfail
n224_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n225_match_defer_α:
                        sub              rsp, 16
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx228_11
                        mov              rax, qword ptr [1879052464]                    # jvalue
                        mov              rdx, qword ptr [1879052472]
                        cmp              eax, 8
                                                                                        jne   .Lx228_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx228_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx228_10
.Lx228_9:
                        xor              eax, eax
.Lx228_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx228_11:
                        test             rax, rax
                                                                                        jz    .Lx228_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx228_4]
                        lea              rdx, [rip + .Lx228_5]
                                                                                        jmp   rax
.Lx228_4:
                                                                                        jmp   n226_match_defer_α
.Lx228_5:
                        add              rsp, 16
                                                                                        jmp   n224_match_defer_β
.Lx228_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S17]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx228_2:
                        test             rax, rax
                                                                                        je    .Lx228_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx228_7]
                        lea              rdx, [rip + .Lx228_8]
                                                                                        jmp   rax
.Lx228_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx228_2
.Lx228_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx228_2
.Lx228_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx228_240
                        add              rsp, 16
                                                                                        jmp   n224_match_defer_β
.Lx228_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx228_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n226_match_defer_α
.Lx228_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n224_match_defer_β
n225_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n226_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052784]                    # PAT$9$V1
                        mov              rdx, qword ptr [1879052792]
                        cmp              eax, 8
                                                                                        jne   .Lx229_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx229_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx229_10
.Lx229_9:
                        xor              eax, eax
.Lx229_10:
                        test             rax, rax
                                                                                        jz    .Lx229_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx229_4]
                        lea              rdx, [rip + .Lx229_5]
                                                                                        jmp   rax
.Lx229_4:
                                                                                        jmp   proc_PAT$9_scanhit
.Lx229_5:
                        add              rsp, 16
                                                                                        jmp   n225_match_defer_β
.Lx229_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S18]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx229_2:
                        test             rax, rax
                                                                                        je    .Lx229_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx229_7]
                        lea              rdx, [rip + .Lx229_8]
                                                                                        jmp   rax
.Lx229_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx229_2
.Lx229_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx229_2
.Lx229_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx229_240
                        add              rsp, 16
                                                                                        jmp   n225_match_defer_β
.Lx229_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx229_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   proc_PAT$9_scanhit
.Lx229_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n225_match_defer_β
n226_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$9_scanhit:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx230_0
                        mov              ecx, dword ptr [rdx + 32]
                        lea              rax, [rip + g_scan_hit_start]
                        mov              dword ptr [rax + 0], ecx
.Lx230_0:
                                                                                        jmp   proc_PAT$9_γ
proc_PAT$9_scanfail:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx231_0
                        mov              eax, dword ptr [rdx + 32]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx231_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx231_0
                        mov              dword ptr [rdx + 32], eax
                        mov              rcx, qword ptr [rdx + 0]
                        mov              dword ptr [rcx + 88], eax
                        mov              r14d, eax
                        mov              rsp, rcx
                                                                                        jmp   proc_PAT$9_attempt
.Lx231_0:
                                                                                        jmp   proc_PAT$9_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$9_res:
                        add              rsp, 8
                        pop              rax
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rdx + 0], rax
                        mov              rcx, qword ptr [rax + 104]
                        mov              qword ptr [rdx + 8], rcx
                        mov              rcx, qword ptr [rax + 112]
                        mov              qword ptr [rdx + 16], rcx
                        mov              rcx, qword ptr [rax + 96]
                        mov              qword ptr [rdx + 24], rcx
                        mov              ecx, dword ptr [rax + 88]
                        mov              dword ptr [rdx + 32], ecx
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$9_β:
                                                                                        jmp   qword ptr [rbp + 64]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$9_γ:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        push             qword ptr [rdx + 0]
                        lea              rax, [rip + proc_PAT$9_res]
                        push             rax
                        mov              rax, qword ptr [rdx + 8]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$9_ω:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 16]
                        mov              rsp, qword ptr [rdx + 0]
                        add              rsp, 128
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$10_α
proc_PAT$10_α:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
                        mov              rax, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rax + 0], rsp
                        mov              qword ptr [rax + 8], rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], r8
                        mov              dword ptr [rax + 32], r14d
proc_PAT$10_attempt:
proc_PAT$10_α_body:
                        lea              rax, [rip + proc_PAT$10_ω]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n233_match_pos_α
.Lx237_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n233_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        je    .Lx238_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$10_scanfail
.Lx238_240:
                                                                                        jmp   n234_match_defer_α
n233_match_pos_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$10_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n234_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052800]                    # PAT$10$V0
                        mov              rdx, qword ptr [1879052808]
                        cmp              eax, 8
                                                                                        jne   .Lx239_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx239_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx239_10
.Lx239_9:
                        xor              eax, eax
.Lx239_10:
                        test             rax, rax
                                                                                        jz    .Lx239_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx239_4]
                        lea              rdx, [rip + .Lx239_5]
                                                                                        jmp   rax
.Lx239_4:
                                                                                        jmp   n235_lit_integer_α
.Lx239_5:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$10_scanfail
.Lx239_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S19]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx239_2:
                        test             rax, rax
                                                                                        je    .Lx239_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx239_7]
                        lea              rdx, [rip + .Lx239_8]
                                                                                        jmp   rax
.Lx239_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx239_2
.Lx239_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx239_2
.Lx239_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx239_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$10_scanfail
.Lx239_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx239_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n235_lit_integer_α
.Lx239_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$10_scanfail
n234_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n236_match_rpos_α
.Lx240_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n236_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        je    .Lx241_240
                        add              rsp, 16
                                                                                        jmp   n234_match_defer_β
.Lx241_240:
                                                                                        jmp   proc_PAT$10_scanhit
proc_PAT$10_scanhit:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx242_0
                        mov              ecx, dword ptr [rdx + 32]
                        lea              rax, [rip + g_scan_hit_start]
                        mov              dword ptr [rax + 0], ecx
.Lx242_0:
                                                                                        jmp   proc_PAT$10_γ
proc_PAT$10_scanfail:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        cmp              qword ptr [rdx + 24], 1
                                                                                        jne   .Lx243_0
                        mov              eax, dword ptr [rdx + 32]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx243_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx243_0
                        mov              dword ptr [rdx + 32], eax
                        mov              rcx, qword ptr [rdx + 0]
                        mov              dword ptr [rcx + 104], eax
                        mov              r14d, eax
                        mov              rsp, rcx
                                                                                        jmp   proc_PAT$10_attempt
.Lx243_0:
                                                                                        jmp   proc_PAT$10_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$10_res:
                        add              rsp, 8
                        pop              rax
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              qword ptr [rdx + 0], rax
                        mov              rcx, qword ptr [rax + 120]
                        mov              qword ptr [rdx + 8], rcx
                        mov              rcx, qword ptr [rax + 128]
                        mov              qword ptr [rdx + 16], rcx
                        mov              rcx, qword ptr [rax + 112]
                        mov              qword ptr [rdx + 24], rcx
                        mov              ecx, dword ptr [rax + 104]
                        mov              dword ptr [rdx + 32], ecx
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$10_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$10_γ:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        push             qword ptr [rdx + 0]
                        lea              rax, [rip + proc_PAT$10_res]
                        push             rax
                        mov              rax, qword ptr [rdx + 8]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$10_ω:
                        mov              rdx, qword ptr [rip + g_blob_ctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 16]
                        mov              rsp, qword ptr [rdx + 0]
                        add              rsp, 144
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
                        mov              esi, 352
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
                        mov              esi, 192
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
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "PAT$7"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_PAT$7_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "PAT$8"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_PAT$8_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "PAT$9"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_PAT$9_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 80
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "PAT$10"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_PAT$10_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
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
n244_statement_begin_α:
                                                                                        jmp   n245_lit_integer_α
n244_statement_begin_β:
                                                                                        jmp   n249_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n246_call_α
.Lx386_0:
                        .quad            92
#-----------------------------------------------------------------------------------------------------------------------
n246_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd87:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd87]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx387_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n244_statement_begin_β
.Lx387_240:
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
                        mov              qword ptr [1879052288], rax                    # bslash
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n248_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n249_statement_begin_α
#=======================================================================================================================
#                 ws             =  FENCE(SPAN(' ' CHAR(9) CHAR(10) CHAR(13)) | '')
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_begin_α:
                                                                                        jmp   n250_lit_string_α
n249_statement_begin_β:
                                                                                        jmp   n254_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n251_call_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n251_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd395:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd395]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx394_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n249_statement_begin_β
.Lx394_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n252_assign_α
n251_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n249_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n252_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # ws
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n253_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n254_statement_begin_α
#=======================================================================================================================
#                 hex            =  '0123456789abcdefABCDEF'
#-----------------------------------------------------------------------------------------------------------------------
n254_statement_begin_α:
                                                                                        jmp   n255_lit_string_α
n254_statement_begin_β:
                                                                                        jmp   n258_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n256_assign_α
.Lx401_0:
                        .quad            .Lx401_0_s
.Lx401_0_s:
                        .string          "0123456789abcdefABCDEF"
#-----------------------------------------------------------------------------------------------------------------------
n256_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # hex
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n257_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n257_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n258_statement_begin_α
#=======================================================================================================================
#                 dig            =  '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n258_statement_begin_α:
                                                                                        jmp   n259_lit_string_α
n258_statement_begin_β:
                                                                                        jmp   n262_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n260_assign_α
.Lx407_0:
                        .quad            .Lx407_0_s
.Lx407_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n260_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # dig
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n261_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n261_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n262_statement_begin_α
#=======================================================================================================================
#                 jescape        =  bslash
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_begin_α:
                                                                                        jmp   n263_var_α
n262_statement_begin_β:
                                                                                        jmp   n269_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # bslash
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n264_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n264_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052528], rax                    # PAT$3$V0
                        mov              qword ptr [1879052536], rdx
                                                                                        jmp   n265_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n266_call_α
n265_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n262_statement_begin_β
.Lx415_0:
                        .quad            .Lx415_0_s
.Lx415_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n266_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd417:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd417]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx416_240
                        add              rsp, 16
                                                                                        jmp   n265_lit_string_β
.Lx416_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n267_assign_α
n266_call_β:
                        add              rsp, 16
                                                                                        jmp   n265_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n267_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # jescape
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n268_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n268_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n269_statement_begin_α
#=======================================================================================================================
#                 jchunk         =  BREAK('"\' CHAR(10) CHAR(13))
#-----------------------------------------------------------------------------------------------------------------------
n269_statement_begin_α:
                                                                                        jmp   n270_lit_string_α
n269_statement_begin_β:
                                                                                        jmp   n274_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n271_call_α
.Lx423_0:
                        .quad            .Lx423_0_s
.Lx423_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n271_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd425:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd425]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx424_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n269_statement_begin_β
.Lx424_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n272_assign_α
n271_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n269_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n272_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # jchunk
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n273_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n273_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n274_statement_begin_α
#=======================================================================================================================
#                 jstring        =  '"' jchunk ARBNO(jescape jchunk) '"'
#-----------------------------------------------------------------------------------------------------------------------
n274_statement_begin_α:
                                                                                        jmp   n275_var_α
n274_statement_begin_β:
                                                                                        jmp   n285_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n275_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # jchunk
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n276_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n276_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052576], rax                    # PAT$4$V2
                        mov              qword ptr [1879052584], rdx
                                                                                        jmp   n277_var_α
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # jescape
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n278_assign_α
n277_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n274_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n278_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052560], rax                    # PAT$4$V1
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n279_var_α
#-----------------------------------------------------------------------------------------------------------------------
n279_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # jchunk
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n280_assign_α
n279_var_β:
                        add              rsp, 16
                                                                                        jmp   n277_var_β
#-----------------------------------------------------------------------------------------------------------------------
n280_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052544], rax                    # PAT$4$V0
                        mov              qword ptr [1879052552], rdx
                                                                                        jmp   n281_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n282_call_α
n281_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n279_var_β
.Lx437_0:
                        .quad            .Lx437_0_s
.Lx437_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n282_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd439:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd439]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx438_240
                        add              rsp, 16
                                                                                        jmp   n281_lit_string_β
.Lx438_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n283_assign_α
n282_call_β:
                        add              rsp, 16
                                                                                        jmp   n281_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n283_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # jstring
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n284_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n284_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n285_statement_begin_α
#=======================================================================================================================
#                 jnumber        =  FENCE('-' | '')
#-----------------------------------------------------------------------------------------------------------------------
n285_statement_begin_α:
                                                                                        jmp   n286_lit_string_α
n285_statement_begin_β:
                                                                                        jmp   n290_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n287_call_α
.Lx445_0:
                        .quad            .Lx445_0_s
.Lx445_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n287_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd447:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd447]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx446_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n285_statement_begin_β
.Lx446_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n288_assign_α
n287_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n285_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n288_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # jnumber
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n289_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n289_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n290_statement_begin_α
#=======================================================================================================================
#                 jmember        =  ws jstring ws ':' *jelement
#-----------------------------------------------------------------------------------------------------------------------
n290_statement_begin_α:
                                                                                        jmp   n291_var_α
n290_statement_begin_β:
                                                                                        jmp   n301_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n291_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n292_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n292_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052624], rax                    # PAT$5$V2
                        mov              qword ptr [1879052632], rdx
                                                                                        jmp   n293_var_α
#-----------------------------------------------------------------------------------------------------------------------
n293_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # jstring
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n294_assign_α
n293_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n290_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n294_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052608], rax                    # PAT$5$V1
                        mov              qword ptr [1879052616], rdx
                                                                                        jmp   n295_var_α
#-----------------------------------------------------------------------------------------------------------------------
n295_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n296_assign_α
n295_var_β:
                        add              rsp, 16
                                                                                        jmp   n293_var_β
#-----------------------------------------------------------------------------------------------------------------------
n296_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052592], rax                    # PAT$5$V0
                        mov              qword ptr [1879052600], rdx
                                                                                        jmp   n297_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n298_call_α
n297_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n295_var_β
.Lx459_0:
                        .quad            .Lx459_0_s
.Lx459_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n298_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd461:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd461]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx460_240
                        add              rsp, 16
                                                                                        jmp   n297_lit_string_β
.Lx460_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n299_assign_α
n298_call_β:
                        add              rsp, 16
                                                                                        jmp   n297_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n299_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # jmember
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n300_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n300_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n301_statement_begin_α
#=======================================================================================================================
#                 jobject        =  '{' ( jmember ARBNO(',' jmember) | ws ) '}'
#-----------------------------------------------------------------------------------------------------------------------
n301_statement_begin_α:
                                                                                        jmp   n302_var_α
n301_statement_begin_β:
                                                                                        jmp   n312_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n302_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n303_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n303_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052672], rax                    # PAT$6$V2
                        mov              qword ptr [1879052680], rdx
                                                                                        jmp   n304_var_α
#-----------------------------------------------------------------------------------------------------------------------
n304_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # jmember
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n305_assign_α
n304_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n301_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n305_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052656], rax                    # PAT$6$V1
                        mov              qword ptr [1879052664], rdx
                                                                                        jmp   n306_var_α
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # jmember
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n307_assign_α
n306_var_β:
                        add              rsp, 16
                                                                                        jmp   n304_var_β
#-----------------------------------------------------------------------------------------------------------------------
n307_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052640], rax                    # PAT$6$V0
                        mov              qword ptr [1879052648], rdx
                                                                                        jmp   n308_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n309_call_α
n308_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n306_var_β
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n309_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd475:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd475]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx474_240
                        add              rsp, 16
                                                                                        jmp   n308_lit_string_β
.Lx474_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n310_assign_α
n309_call_β:
                        add              rsp, 16
                                                                                        jmp   n308_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n310_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # jobject
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n311_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n311_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n312_statement_begin_α
#=======================================================================================================================
#                 jarray         =  '[' ( *jelement ARBNO(',' *jelement) | ws ) ']'
#-----------------------------------------------------------------------------------------------------------------------
n312_statement_begin_α:
                                                                                        jmp   n313_var_α
n312_statement_begin_β:
                                                                                        jmp   n319_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n314_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n314_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052688], rax                    # PAT$7$V0
                        mov              qword ptr [1879052696], rdx
                                                                                        jmp   n315_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n316_call_α
n315_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n312_statement_begin_β
.Lx483_0:
                        .quad            .Lx483_0_s
.Lx483_0_s:
                        .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n316_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd485:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd485]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx484_240
                        add              rsp, 16
                                                                                        jmp   n315_lit_string_β
.Lx484_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n317_assign_α
n316_call_β:
                        add              rsp, 16
                                                                                        jmp   n315_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n317_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # jarray
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n318_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n318_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n319_statement_begin_α
#=======================================================================================================================
#                 jvalue         =  jstring | jnumber | jobject | jarray
#-----------------------------------------------------------------------------------------------------------------------
n319_statement_begin_α:
                                                                                        jmp   n320_var_α
n319_statement_begin_β:
                                                                                        jmp   n332_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # jarray
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n321_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n321_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052752], rax                    # PAT$8$V3
                        mov              qword ptr [1879052760], rdx
                                                                                        jmp   n322_var_α
#-----------------------------------------------------------------------------------------------------------------------
n322_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # jobject
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n323_assign_α
n322_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n319_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n323_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052736], rax                    # PAT$8$V2
                        mov              qword ptr [1879052744], rdx
                                                                                        jmp   n324_var_α
#-----------------------------------------------------------------------------------------------------------------------
n324_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # jnumber
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n325_assign_α
n324_var_β:
                        add              rsp, 16
                                                                                        jmp   n322_var_β
#-----------------------------------------------------------------------------------------------------------------------
n325_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052720], rax                    # PAT$8$V1
                        mov              qword ptr [1879052728], rdx
                                                                                        jmp   n326_var_α
#-----------------------------------------------------------------------------------------------------------------------
n326_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # jstring
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n327_assign_α
n326_var_β:
                        add              rsp, 16
                                                                                        jmp   n324_var_β
#-----------------------------------------------------------------------------------------------------------------------
n327_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052704], rax                    # PAT$8$V0
                        mov              qword ptr [1879052712], rdx
                                                                                        jmp   n328_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n329_call_α
n328_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n326_var_β
.Lx499_0:
                        .quad            .Lx499_0_s
.Lx499_0_s:
                        .string          "PAT$8"
#-----------------------------------------------------------------------------------------------------------------------
n329_call_α:
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
                                                                                        jmp   n328_lit_string_β
.Lx500_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n330_assign_α
n329_call_β:
                        add              rsp, 16
                                                                                        jmp   n328_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n330_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # jvalue
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n331_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n331_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n332_statement_begin_α
#=======================================================================================================================
#                 jelement       =  ws *jvalue ws
#-----------------------------------------------------------------------------------------------------------------------
n332_statement_begin_α:
                                                                                        jmp   n333_var_α
n332_statement_begin_β:
                                                                                        jmp   n341_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n333_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n334_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n334_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052784], rax                    # PAT$9$V1
                        mov              qword ptr [1879052792], rdx
                                                                                        jmp   n335_var_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n336_assign_α
n335_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n332_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n336_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052768], rax                    # PAT$9$V0
                        mov              qword ptr [1879052776], rdx
                                                                                        jmp   n337_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n338_call_α
n337_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n335_var_β
.Lx511_0:
                        .quad            .Lx511_0_s
.Lx511_0_s:
                        .string          "PAT$9"
#-----------------------------------------------------------------------------------------------------------------------
n338_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd513:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd513]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx512_240
                        add              rsp, 16
                                                                                        jmp   n337_lit_string_β
.Lx512_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n339_assign_α
n338_call_β:
                        add              rsp, 16
                                                                                        jmp   n337_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n339_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052480], rax                    # jelement
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n340_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n340_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n341_statement_begin_α
#=======================================================================================================================
#                 json           =  POS(0) jelement RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n341_statement_begin_α:
                                                                                        jmp   n342_var_α
n341_statement_begin_β:
                                                                                        jmp   n348_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n342_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052480]                    # jelement
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n343_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n343_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052800], rax                    # PAT$10$V0
                        mov              qword ptr [1879052808], rdx
                                                                                        jmp   n344_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n345_call_α
n344_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n341_statement_begin_β
.Lx521_0:
                        .quad            .Lx521_0_s
.Lx521_0_s:
                        .string          "PAT$10"
#-----------------------------------------------------------------------------------------------------------------------
n345_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd523:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd523]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx522_240
                        add              rsp, 16
                                                                                        jmp   n344_lit_string_β
.Lx522_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n346_assign_α
n345_call_β:
                        add              rsp, 16
                                                                                        jmp   n344_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n346_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052496], rax                    # json
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n347_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n347_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n348_statement_begin_α
#=======================================================================================================================
#                 &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n348_statement_begin_α:
                                                                                        jmp   n349_lit_string_α
n348_statement_begin_β:
                                                                                        jmp   n353_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n350_lit_integer_α
.Lx529_0:
                        .quad            .Lx529_0_s
.Lx529_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n351_call_α
n350_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n348_statement_begin_β
.Lx530_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n351_call_α:
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
.Lrkfnzd532:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd532]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx531_240
                        add              rsp, 16
                                                                                        jmp   n350_lit_integer_β
.Lx531_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n352_statement_end_α
n351_call_β:
                        add              rsp, 16
                                                                                        jmp   n350_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n352_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n353_statement_begin_α
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r1000000]')
#-----------------------------------------------------------------------------------------------------------------------
n353_statement_begin_α:
                                                                                        jmp   n354_lit_string_α
n353_statement_begin_β:
                                                                                        jmp   n360_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n355_call_α
.Lx537_0:
                        .quad            .Lx537_0_s
.Lx537_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n355_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd539:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd539]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx538_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n353_statement_begin_β
.Lx538_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n356_lit_integer_α
n355_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n353_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n357_lit_string_α
n356_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n353_statement_begin_β
.Lx540_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n358_call_α
n357_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n356_lit_integer_β
.Lx541_0:
                        .quad            .Lx541_0_s
.Lx541_0_s:
                        .string          "[-f0 -r1000000]"
#-----------------------------------------------------------------------------------------------------------------------
n358_call_α:
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
.Lbynamefnzd199:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd199]                   # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx542_240
                        add              rsp, 16
                                                                                        jmp   n357_lit_string_β
.Lx542_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n359_statement_end_α
n358_call_β:
                        add              rsp, 16
                                                                                        jmp   n357_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n359_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n360_statement_begin_α
#=======================================================================================================================
#                 src             =   INPUT                       :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n360_statement_begin_α:
                                                                                        jmp   n361_var_α
n360_statement_begin_β:
                                                                                        jmp   n379_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx547_0]                # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx547_240
                        add              rsp, 16
                                                                                        jmp   n360_statement_begin_β
.Lx547_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n362_assign_α
.Lx547_0:
                        .quad            .Lx547_0_s
.Lx547_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n362_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052512], rax                    # src
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n363_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n364_statement_begin_α
#=======================================================================================================================
#                 src             json                            :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n364_statement_begin_α:
                                                                                        jmp   n365_var_α
n364_statement_begin_β:
                                                                                        jmp   n379_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052512]                    # src
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n366_var_α
#-----------------------------------------------------------------------------------------------------------------------
n366_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # json
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n367_assign_α
n366_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n379_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n367_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx555_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n368_match_begin_α
n367_assign_β:
                                                                                        jmp   n366_var_β
.Lx555_0:
                        .quad            .Lx555_0_s
.Lx555_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n368_match_begin_α:
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
.Lx557_0:
                        mov              r14d, dword ptr [rbp + -64]
                                                                                        jmp   n369_match_defer_α
n368_match_begin_β:
                        add              dword ptr [rbp + -64], 1
                        mov              eax, dword ptr [rbp + -64]
                        cmp              eax, r15d
                                                                                        jg    .Lx557_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx557_1
                                                                                        jmp   .Lx557_0
.Lx557_1:
n368_match_begin_af:
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
                                                                                        jmp   n367_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n369_match_defer_α:
                        lea              rdi, [rip + .S20]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx558_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx558_4]
                        lea              rdx, [rip + .Lx558_5]
                                                                                        jmp   rax
.Lx558_4:
                                                                                        jmp   n370_match_end_α
.Lx558_5:
                                                                                        jmp   n368_match_begin_β
.Lx558_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S20]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx558_2:
                        test             rax, rax
                                                                                        je    .Lx558_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx558_7]
                        lea              rdx, [rip + .Lx558_8]
                                                                                        jmp   rax
.Lx558_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx558_2
.Lx558_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx558_2
.Lx558_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n368_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx558_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n370_match_end_α
.Lx558_6:
                        add              rsp, 16
                                                                                        jmp   n368_match_begin_β
n369_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n370_match_end_α:
                        mov              r10, r12
.Lx560_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx560_9
                        mov              rsp, qword ptr [rbp + -56]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx560_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx560_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx560_1:
                        test             rax, rax
                                                                                        je    .Lx560_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx560_3]
                        lea              rdx, [rip + .Lx560_4]
                                                                                        jmp   rax
.Lx560_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx560_1
.Lx560_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx560_1
.Lx560_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx560_10:
                        sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx560_10
                        mov              r13, qword ptr [rbp + -40]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -32]                     # outer_δ
                        mov              r15, qword ptr [rbp + -24]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + -48]                     # old_rbp
                                                                                        jmp   n371_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n371_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n372_statement_begin_α
#=======================================================================================================================
#                 OUTPUT          =  'matched bytes=' SIZE(src)   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n372_statement_begin_α:
                                                                                        jmp   n373_lit_string_α
n372_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n374_var_α
.Lx565_0:
                        .quad            .Lx565_0_s
.Lx565_0_s:
                        .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n374_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052512]                    # src
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n375_call_α
n374_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n372_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n375_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd568:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd568]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx567_240
                        add              rsp, 16
                                                                                        jmp   n374_var_β
.Lx567_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n376_binop_α
n375_call_β:
                        add              rsp, 16
                                                                                        jmp   n374_var_β
#-----------------------------------------------------------------------------------------------------------------------
n376_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # lit_string
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n377_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n377_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx570_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n378_statement_end_α
.Lx570_0:
                        .quad            .Lx570_0_s
.Lx570_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n378_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   main_γ
#=======================================================================================================================
# fail            OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n379_statement_begin_α:
                                                                                        jmp   n380_lit_string_α
n379_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx575_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n381_assign_α
.Lx575_0:
                        .quad            .Lx575_0_s
.Lx575_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n381_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx576_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n382_statement_end_α
.Lx576_0:
                        .quad            .Lx576_0_s
.Lx576_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n382_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n383_goto_α:
                                                                                        jmp   n379_statement_begin_α
n383_goto_β:
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
                        .byte            0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0
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
.C2:
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
.C3:
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
.C4:
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
.C5:
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
