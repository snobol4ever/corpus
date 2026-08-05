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
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanhit
n11_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   .Lx14_0
                        mov              ecx, dword ptr [rbp + 40]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx14_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   .Lx15_0
                        mov              eax, dword ptr [rbp + 40]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx15_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx15_0
                        mov              dword ptr [rbp + 40], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
.Lx15_0:
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
                        sub              rsp, 416
                        mov              qword ptr [rsp + 392], rcx
                        mov              qword ptr [rsp + 400], rdx
                        mov              qword ptr [rsp + 408], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 384], r8
                        mov              dword ptr [rsp + 376], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + proc_PAT$2_ω]
                        mov              qword ptr [rbp + 352], rax
#-----------------------------------------------------------------------------------------------------------------------
n16_match_fence1_α:
                        mov              qword ptr [rbp + 304], rsp
                                                                                        jmp   n39_match_alternate_α
n16_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 304], rbp
                                                                                        jmp   n17_match_alternate_α
n16_match_fence1_β:
n16_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 304]
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_match_alternate_α:
                        mov              dword ptr [rbp + 208], r14d
                        lea              rax, [rip + .Lx45_21]
                        mov              qword ptr [rbp + 224], rax
                                                                                        jmp   n38_match_lit_α
.Lx45_21:
                        lea              rax, [rip + .Lx45_19]
                        mov              qword ptr [rbp + 224], rax
                                                                                        jmp   n33_match_any_α
n17_match_alternate_s0:
                        lea              rax, [rip + .Lx45_40]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n17_match_alternate_as
n17_match_alternate_s1:
                        lea              rax, [rip + .Lx45_41]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n17_match_alternate_as
.Lx45_40:
                                                                                        jmp   n38_match_lit_β
.Lx45_41:
                                                                                        jmp   n34_match_fence1_β
n17_match_alternate_as:
                                                                                        jmp   n18_match_fence1_α
n17_match_alternate_β:
                        mov              rax, qword ptr [rbp + 216]
                                                                                        jmp   rax
n17_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 208]
                        mov              rax, qword ptr [rbp + 224]
                                                                                        jmp   rax
.Lx45_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n18_match_fence1_α:
                        mov              qword ptr [rbp + 128], rsp
                                                                                        jmp   n28_match_alternate_α
n18_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 128], rbp
                                                                                        jmp   n19_match_fence1_α
n18_match_fence1_β:
n18_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_match_fence1_α:
                        mov              qword ptr [rbp + 16], rsp
                                                                                        jmp   n20_match_alternate_α
n19_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 16], rbp
                                                                                        jmp   proc_PAT$2_γ
n19_match_fence1_β:
n19_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 16]
                                                                                        jmp   proc_PAT$2_ω
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
                                                                                        jmp   n25_match_alternate_α
n23_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 64], rbp
                                                                                        jmp   n24_match_span_α
n23_match_fence1_β:
n23_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n20_match_alternate_af
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
                                                                                        jmp   proc_PAT$2_scanfail
.Lx59_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n20_match_alternate_s0
n24_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   proc_PAT$2_scanfail
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
                        mov              dword ptr [rbp + 196], r14d
                        mov              r14d, ecx
                                                                                        jmp   n28_match_alternate_s0
n32_match_span_β:
                        mov              r14d, dword ptr [rbp + 196]
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
                        mov              qword ptr [rbp + 240], rsp
                                                                                        jmp   n35_match_alternate_α
n34_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 240], rbp
                                                                                        jmp   n17_match_alternate_s1
n34_match_fence1_β:
n34_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 240]
                                                                                        jmp   n17_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n35_match_alternate_α:
                        mov              dword ptr [rbp + 256], r14d
                        lea              rax, [rip + .Lx80_21]
                        mov              qword ptr [rbp + 272], rax
                                                                                        jmp   n37_match_span_α
.Lx80_21:
                        lea              rax, [rip + .Lx80_19]
                        mov              qword ptr [rbp + 272], rax
                                                                                        jmp   n36_match_lit_α
n35_match_alternate_s0:
                        lea              rax, [rip + .Lx80_40]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n35_match_alternate_as
n35_match_alternate_s1:
                        lea              rax, [rip + .Lx80_41]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n35_match_alternate_as
.Lx80_40:
                                                                                        jmp   n37_match_span_β
.Lx80_41:
                                                                                        jmp   n36_match_lit_β
n35_match_alternate_as:
                                                                                        jmp   n34_match_fence1_as
n35_match_alternate_β:
                        mov              rax, qword ptr [rbp + 264]
                                                                                        jmp   rax
n35_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 256]
                        mov              rax, qword ptr [rbp + 272]
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
                        mov              dword ptr [rbp + 292], r14d
                        mov              r14d, ecx
                                                                                        jmp   n35_match_alternate_s0
n37_match_span_β:
                        mov              r14d, dword ptr [rbp + 292]
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
                        mov              dword ptr [rbp + 320], r14d
                        lea              rax, [rip + .Lx88_21]
                        mov              qword ptr [rbp + 336], rax
                                                                                        jmp   n41_match_lit_α
.Lx88_21:
                        lea              rax, [rip + .Lx88_19]
                        mov              qword ptr [rbp + 336], rax
                                                                                        jmp   n40_match_lit_α
n39_match_alternate_s0:
                        lea              rax, [rip + .Lx88_40]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n39_match_alternate_as
n39_match_alternate_s1:
                        lea              rax, [rip + .Lx88_41]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n39_match_alternate_as
.Lx88_40:
                                                                                        jmp   n41_match_lit_β
.Lx88_41:
                                                                                        jmp   n40_match_lit_β
n39_match_alternate_as:
                                                                                        jmp   n16_match_fence1_as
n39_match_alternate_β:
                        mov              rax, qword ptr [rbp + 328]
                                                                                        jmp   rax
n39_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 320]
                        mov              rax, qword ptr [rbp + 336]
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
                        cmp              qword ptr [rbp + 384], 1
                                                                                        jne   .Lx93_0
                        mov              ecx, dword ptr [rbp + 376]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx93_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 384], 1
                                                                                        jne   .Lx94_0
                        mov              eax, dword ptr [rbp + 376]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx94_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx94_0
                        mov              dword ptr [rbp + 376], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx94_0:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 352]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              rbp, qword ptr [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, qword ptr [rbp + 400]
                        lea              rsp, [rbp + 416]
                        mov              rbp, qword ptr [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rcx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 152], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 128], r8
                        mov              dword ptr [rsp + 120], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + proc_PAT$3_ω]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n95_match_patref_α:
                        sub              rsp, 80
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
                        mov              rax, qword ptr [1879052288]                    # bslash
                        mov              rdx, qword ptr [1879052296]
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
                        add              rsp, 80
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
                        add              rsp, 80
                                                                                        jmp   proc_PAT$3_scanfail
.Lx104_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx104_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n96_match_alternate_α
.Lx104_6:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   proc_PAT$3_scanfail
n95_match_patref_β:
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
                                                                                        jmp   n95_match_patref_β
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
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx120_0
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx120_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx121_0
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx121_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx121_0
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx121_0:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, qword ptr [rbp + 144]
                        lea              rsp, [rbp + 160]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
                        sub              rsp, 224
                        mov              qword ptr [rsp + 200], rcx
                        mov              qword ptr [rsp + 208], rdx
                        mov              qword ptr [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 192], r8
                        mov              dword ptr [rsp + 184], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + proc_PAT$4_ω]
                        mov              qword ptr [rbp + 160], rax
#-----------------------------------------------------------------------------------------------------------------------
n122_match_lit_α:
                        sub              rsp, 144
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
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx129_239
                        add              rsp, 144
                                                                                        jmp   proc_PAT$4_scanfail
.Lx129_239:
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        je    .Lx129_240
                        add              rsp, 144
                                                                                        jmp   proc_PAT$4_scanfail
.Lx129_240:
                        add              r14d, 1
                                                                                        jmp   n123_match_patref_α
n122_match_lit_β:
                        sub              r14d, 1
                        add              rsp, 144
                                                                                        jmp   proc_PAT$4_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n123_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx130_11
                        mov              rax, qword ptr [1879052368]                    # jchunk
                        mov              rdx, qword ptr [1879052376]
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
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx130_11:
                        test             rax, rax
                                                                                        jz    .Lx130_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx130_4]
                        lea              rdx, [rip + .Lx130_5]
                                                                                        jmp   rax
.Lx130_4:
                                                                                        jmp   n124_match_arbno_α
.Lx130_5:
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
                                                                                        js    n122_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx130_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n124_match_arbno_α
.Lx130_6:
                        add              rsp, 16
                                                                                        jmp   n122_match_lit_β
n123_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n124_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   n125_match_lit_α
n124_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 68]
                        mov              rax, qword ptr [rbp + 80]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -104
                                                                                        jmp   n126_match_patref_α
n124_match_arbno_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              r14d, eax
                                                                                        je    n127_match_patref_β
                        mov              rbp, qword ptr [rbp + 104]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   n125_match_lit_α
n124_match_arbno_af:
                        mov              rax, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 104]
                        lea              rsp, [rbp + 168]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx132_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -104]
                                                                                        jmp   n127_match_patref_β
.Lx132_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n123_match_patref_β
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
                        add              rsp, 144
                                                                                        jmp   proc_PAT$4_scanhit
n125_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n124_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n126_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx135_11
                        mov              rax, qword ptr [1879052352]                    # jescape
                        mov              rdx, qword ptr [1879052360]
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
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx135_11:
                        test             rax, rax
                                                                                        jz    .Lx135_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx135_4]
                        lea              rdx, [rip + .Lx135_5]
                                                                                        jmp   rax
.Lx135_4:
                                                                                        jmp   n127_match_patref_α
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
                                                                                        jmp   n127_match_patref_α
.Lx135_6:
                        add              rsp, 16
                                                                                        jmp   n124_match_arbno_af
n126_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n127_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx136_11
                        mov              rax, qword ptr [1879052368]                    # jchunk
                        mov              rdx, qword ptr [1879052376]
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
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx136_11:
                        test             rax, rax
                                                                                        jz    .Lx136_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx136_4]
                        lea              rdx, [rip + .Lx136_5]
                                                                                        jmp   rax
.Lx136_4:
                                                                                        jmp   n124_match_arbno_as
.Lx136_5:
                                                                                        jmp   n126_match_patref_β
.Lx136_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
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
                                                                                        js    n126_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx136_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n124_match_arbno_as
.Lx136_6:
                        add              rsp, 16
                                                                                        jmp   n126_match_patref_β
n127_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 192], 1
                                                                                        jne   .Lx137_0
                        mov              ecx, dword ptr [rbp + 184]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx137_0:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 192], 1
                                                                                        jne   .Lx138_0
                        mov              eax, dword ptr [rbp + 184]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx138_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx138_0
                        mov              dword ptr [rbp + 184], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
.Lx138_0:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rbp + 160]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              rbp, qword ptr [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, qword ptr [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, qword ptr [rbp + 216]
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
n139_match_patref_α:
                        sub              rsp, 80
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
                        mov              qword ptr [rbp + 16], rsp
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
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
                        mov              rsp, qword ptr [rbp + 16]
                                                                                        jmp   n140_match_patref_α
.Lx144_5:
                        mov              rsp, qword ptr [rbp + 16]
                        add              rsp, 80
                                                                                        jmp   proc_PAT$5_scanfail
.Lx144_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
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
                        add              rsp, 80
                                                                                        jmp   proc_PAT$5_scanfail
.Lx144_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx144_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n140_match_patref_α
.Lx144_6:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   proc_PAT$5_scanfail
n139_match_patref_β:
                        mov              rsp, qword ptr [rbp + 16]
                        add              rsp, 80
                                                                                        jmp   proc_PAT$5_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n140_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx145_11
                        mov              rax, qword ptr [1879052384]                    # jstring
                        mov              rdx, qword ptr [1879052392]
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
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx145_11:
                        test             rax, rax
                                                                                        jz    .Lx145_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx145_4]
                        lea              rdx, [rip + .Lx145_5]
                                                                                        jmp   rax
.Lx145_4:
                                                                                        jmp   n141_match_patref_α
.Lx145_5:
                                                                                        jmp   n139_match_patref_β
.Lx145_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
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
                                                                                        js    n139_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx145_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n141_match_patref_α
.Lx145_6:
                        add              rsp, 16
                                                                                        jmp   n139_match_patref_β
n140_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n141_match_patref_α:
                        mov              qword ptr [rbp + 48], rsp
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
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
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n142_match_lit_α
.Lx146_5:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n140_match_patref_β
.Lx146_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
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
                                                                                        js    n140_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx146_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n142_match_lit_α
.Lx146_6:
                        add              rsp, 16
                                                                                        jmp   n140_match_patref_β
n141_match_patref_β:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n140_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n142_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n141_match_patref_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 58
                                                                                        jne   n141_match_patref_β
                        add              r14d, 1
                                                                                        jmp   n143_match_defer_α
n142_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n141_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n143_match_defer_α:
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
                        add              rsp, 80
                                                                                        jmp   proc_PAT$5_scanhit
.Lx149_5:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n142_match_lit_β
.Lx149_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]                               # varname
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
                                                                                        js    n142_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx149_6]
                        sub              rsp, 8
                        push             rax
                        add              rsp, 80
                                                                                        jmp   proc_PAT$5_scanhit
.Lx149_6:
                        add              rsp, 16
                                                                                        jmp   n142_match_lit_β
n143_match_defer_β:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n142_match_lit_β
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx150_0
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx150_0:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx151_0
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx151_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx151_0
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
.Lx151_0:
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
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rcx
                        mov              qword ptr [rsp + 240], rdx
                        mov              qword ptr [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 224], r8
                        mov              dword ptr [rsp + 216], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
                        lea              rax, [rip + proc_PAT$6_ω]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n152_match_lit_α:
                        sub              rsp, 176
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
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx162_239
                        add              rsp, 176
                                                                                        jmp   proc_PAT$6_scanfail
.Lx162_239:
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 123
                                                                                        je    .Lx162_240
                        add              rsp, 176
                                                                                        jmp   proc_PAT$6_scanfail
.Lx162_240:
                        add              r14d, 1
                                                                                        jmp   n153_match_alternate_α
n152_match_lit_β:
                        sub              r14d, 1
                        add              rsp, 176
                                                                                        jmp   proc_PAT$6_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n153_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx164_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n157_match_patref_α
.Lx164_21:
                        lea              rax, [rip + .Lx164_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n155_match_patref_α
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
                                                                                        jmp   n155_match_patref_β
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
                        add              rsp, 176
                                                                                        jmp   proc_PAT$6_scanhit
n154_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n153_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n155_match_patref_α:
                        mov              qword ptr [rbp + 176], rsp
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
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
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n153_match_alternate_s1
.Lx167_5:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n153_match_alternate_af
.Lx167_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
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
n155_match_patref_β:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n153_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n156_goto_α:
                                                                                        jmp   n153_match_alternate_af
n156_goto_β:
                                                                                        jmp   n153_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n157_match_patref_α:
                        mov              qword ptr [rbp + 64], rsp
                        mov              rax, qword ptr [1879052416]                    # jmember
                        mov              rdx, qword ptr [1879052424]
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
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n158_match_arbno_α
.Lx169_5:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n153_match_alternate_af
.Lx169_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
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
n157_match_patref_β:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n153_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n158_match_arbno_α:
                        mov              dword ptr [rbp + 96], r14d
                        mov              dword ptr [rbp + 100], r14d
                        mov              dword ptr [rbp + 104], 0
                        mov              qword ptr [rbp + 120], rsp
                        mov              qword ptr [rbp + 112], 0
                                                                                        jmp   n153_match_alternate_s0
n158_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 100]
                        mov              rax, qword ptr [rbp + 112]
                        sub              rsp, 64
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
                                                                                        je    n160_match_patref_β
                        mov              rbp, qword ptr [rbp + 120]
                        mov              eax, dword ptr [rbp + 104]
                        add              eax, 1
                        mov              dword ptr [rbp + 104], eax
                        mov              dword ptr [rbp + 100], r14d
                                                                                        jmp   n153_match_alternate_s0
n158_match_arbno_af:
                        mov              rax, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 120]
                        lea              rsp, [rbp + 184]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 104]
                        test             ecx, ecx
                                                                                        jz    .Lx171_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 104], ecx
                        mov              qword ptr [rbp + 112], rax
                        lea              rbp, [rax + -120]
                                                                                        jmp   n160_match_patref_β
.Lx171_2:
                        mov              r14d, dword ptr [rbp + 96]
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   n157_match_patref_β
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
                                                                                        jmp   n160_match_patref_α
n159_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n158_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n160_match_patref_α:
                        mov              qword ptr [rbp + 160], rsp
                        mov              rax, qword ptr [1879052416]                    # jmember
                        mov              rdx, qword ptr [1879052424]
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
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n158_match_arbno_as
.Lx174_5:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n159_match_lit_β
.Lx174_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
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
n160_match_patref_β:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n159_match_lit_β
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   .Lx175_0
                        mov              ecx, dword ptr [rbp + 216]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx175_0:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   .Lx176_0
                        mov              eax, dword ptr [rbp + 216]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx176_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx176_0
                        mov              dword ptr [rbp + 216], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_attempt
.Lx176_0:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$6_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              rbp, qword ptr [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                        mov              rax, qword ptr [rbp + 240]
                        lea              rsp, [rbp + 256]
                        mov              rbp, qword ptr [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$7_α
proc_PAT$7_α:
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rcx
                        mov              qword ptr [rsp + 240], rdx
                        mov              qword ptr [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 224], r8
                        mov              dword ptr [rsp + 216], r14d
proc_PAT$7_attempt:
proc_PAT$7_α_body:
                        lea              rax, [rip + proc_PAT$7_ω]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n177_match_lit_α:
                        sub              rsp, 176
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
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx187_239
                        add              rsp, 176
                                                                                        jmp   proc_PAT$7_scanfail
.Lx187_239:
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 91
                                                                                        je    .Lx187_240
                        add              rsp, 176
                                                                                        jmp   proc_PAT$7_scanfail
.Lx187_240:
                        add              r14d, 1
                                                                                        jmp   n178_match_alternate_α
n177_match_lit_β:
                        sub              r14d, 1
                        add              rsp, 176
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
                                                                                        jmp   n180_match_patref_α
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
                                                                                        jmp   n180_match_patref_β
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
                        add              rsp, 176
                                                                                        jmp   proc_PAT$7_scanhit
n179_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n178_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n180_match_patref_α:
                        mov              qword ptr [rbp + 176], rsp
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
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
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n178_match_alternate_s1
.Lx192_5:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n178_match_alternate_af
.Lx192_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
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
n180_match_patref_β:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n178_match_alternate_af
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
                        lea              rdi, [rip + .S5]                               # varname
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
                        mov              qword ptr [rbp + 112], 0
                                                                                        jmp   n178_match_alternate_s0
n183_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 100]
                        mov              rax, qword ptr [rbp + 112]
                        sub              rsp, 64
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
                                                                                        je    n185_match_defer_β
                        mov              rbp, qword ptr [rbp + 120]
                        mov              eax, dword ptr [rbp + 104]
                        add              eax, 1
                        mov              dword ptr [rbp + 104], eax
                        mov              dword ptr [rbp + 100], r14d
                                                                                        jmp   n178_match_alternate_s0
n183_match_arbno_af:
                        mov              rax, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 120]
                        lea              rsp, [rbp + 184]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 104]
                        test             ecx, ecx
                                                                                        jz    .Lx196_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 104], ecx
                        mov              qword ptr [rbp + 112], rax
                        lea              rbp, [rax + -120]
                                                                                        jmp   n185_match_defer_β
.Lx196_2:
                        mov              r14d, dword ptr [rbp + 96]
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
                        mov              qword ptr [rbp + 160], rsp
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
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n183_match_arbno_as
.Lx199_5:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n184_match_lit_β
.Lx199_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]                               # varname
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
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n184_match_lit_β
proc_PAT$7_scanhit:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   .Lx200_0
                        mov              ecx, dword ptr [rbp + 216]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx200_0:
                                                                                        jmp   proc_PAT$7_γ
proc_PAT$7_scanfail:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   .Lx201_0
                        mov              eax, dword ptr [rbp + 216]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx201_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx201_0
                        mov              dword ptr [rbp + 216], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$7_attempt
.Lx201_0:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$7_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              rbp, qword ptr [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_ω:
                        mov              rax, qword ptr [rbp + 240]
                        lea              rsp, [rbp + 256]
                        mov              rbp, qword ptr [rbp + 248]
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
                        lea              rax, [rip + n202_match_alternate_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n202_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx211_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n209_match_patref_α
.Lx211_21:
                        lea              rax, [rip + .Lx211_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n208_match_patref_α
.Lx211_22:
                        lea              rax, [rip + .Lx211_23]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n207_match_patref_α
.Lx211_23:
                        lea              rax, [rip + .Lx211_24]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n206_match_patref_α
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
                                                                                        jmp   n209_match_patref_β
.Lx211_41:
                                                                                        jmp   n208_match_patref_β
.Lx211_42:
                                                                                        jmp   n207_match_patref_β
.Lx211_43:
                                                                                        jmp   n206_match_patref_β
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
n206_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx218_11
                        mov              rax, qword ptr [1879052448]                    # jarray
                        mov              rdx, qword ptr [1879052456]
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
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx218_11:
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
                        lea              rdi, [rip + .S7]                               # varname
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
n206_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n207_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx219_11
                        mov              rax, qword ptr [1879052432]                    # jobject
                        mov              rdx, qword ptr [1879052440]
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
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx219_11:
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
                        lea              rdi, [rip + .S8]                               # varname
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
n207_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n208_match_patref_α:
                        mov              qword ptr [rbp + 64], rsp
                        mov              rax, qword ptr [1879052400]                    # jnumber
                        mov              rdx, qword ptr [1879052408]
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
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n202_match_alternate_s1
.Lx220_5:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n202_match_alternate_af
.Lx220_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]                               # varname
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
n208_match_patref_β:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n202_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n209_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx221_11
                        mov              rax, qword ptr [1879052384]                    # jstring
                        mov              rdx, qword ptr [1879052392]
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
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx221_11:
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
                        lea              rdi, [rip + .S4]                               # varname
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
n209_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$8_scanhit:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx222_0
                        mov              ecx, dword ptr [rbp + 152]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx222_0:
                                                                                        jmp   proc_PAT$8_γ
proc_PAT$8_scanfail:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx223_0
                        mov              eax, dword ptr [rbp + 152]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx223_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx223_0
                        mov              dword ptr [rbp + 152], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$8_attempt
.Lx223_0:
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
n224_match_patref_α:
                        sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rbp + 16], rsp
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
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
                        mov              rsp, qword ptr [rbp + 16]
                                                                                        jmp   n225_match_defer_α
.Lx227_5:
                        mov              rsp, qword ptr [rbp + 16]
                        add              rsp, 48
                                                                                        jmp   proc_PAT$9_scanfail
.Lx227_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
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
                        add              rsp, 48
                                                                                        jmp   proc_PAT$9_scanfail
.Lx227_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx227_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n225_match_defer_α
.Lx227_6:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   proc_PAT$9_scanfail
n224_match_patref_β:
                        mov              rsp, qword ptr [rbp + 16]
                        add              rsp, 48
                                                                                        jmp   proc_PAT$9_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n225_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
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
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx228_11:
                        test             rax, rax
                                                                                        jz    .Lx228_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx228_4]
                        lea              rdx, [rip + .Lx228_5]
                                                                                        jmp   rax
.Lx228_4:
                                                                                        jmp   n226_match_patref_α
.Lx228_5:
                                                                                        jmp   n224_match_patref_β
.Lx228_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]                              # varname
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
                                                                                        js    n224_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx228_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n226_match_patref_α
.Lx228_6:
                        add              rsp, 16
                                                                                        jmp   n224_match_patref_β
n225_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n226_match_patref_α:
                        mov              qword ptr [rbp + 48], rsp
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
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
                        mov              rsp, qword ptr [rbp + 48]
                        add              rsp, 48
                                                                                        jmp   proc_PAT$9_scanhit
.Lx229_5:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n225_match_defer_β
.Lx229_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
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
                                                                                        js    n225_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx229_6]
                        sub              rsp, 8
                        push             rax
                        add              rsp, 48
                                                                                        jmp   proc_PAT$9_scanhit
.Lx229_6:
                        add              rsp, 16
                                                                                        jmp   n225_match_defer_β
n226_match_patref_β:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n225_match_defer_β
proc_PAT$9_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx230_0
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx230_0:
                                                                                        jmp   proc_PAT$9_γ
proc_PAT$9_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx231_0
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx231_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx231_0
                        mov              dword ptr [rbp + 88], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$9_attempt
.Lx231_0:
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
n232_lit_integer_α:
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rbp + 32], 3                        # result
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n233_match_pos_α
.Lx237_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n233_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        je    .Lx238_240
                        add              rsp, 64
                                                                                        jmp   proc_PAT$10_scanfail
.Lx238_240:
                                                                                        jmp   n234_match_patref_α
n233_match_pos_β:
                        add              rsp, 64
                                                                                        jmp   proc_PAT$10_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n234_match_patref_α:
                        mov              qword ptr [rbp + 48], rsp
                        mov              rax, qword ptr [1879052480]                    # jelement
                        mov              rdx, qword ptr [1879052488]
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
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n235_lit_integer_α
.Lx239_5:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   proc_PAT$10_scanfail
.Lx239_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]                               # varname
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
                                                                                        js    proc_PAT$10_scanfail
                        mov              r14d, eax
                        lea              rax, [rip + .Lx239_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n235_lit_integer_α
.Lx239_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$10_scanfail
n234_match_patref_β:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   proc_PAT$10_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n236_match_rpos_α
.Lx240_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n236_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n234_match_patref_β
                        add              rsp, 64
                                                                                        jmp   proc_PAT$10_scanhit
proc_PAT$10_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx242_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx242_0:
                                                                                        jmp   proc_PAT$10_γ
proc_PAT$10_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx243_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx243_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx243_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$10_attempt
.Lx243_0:
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
                        mov              esi, 368
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
                        mov              esi, 112
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
                        mov              esi, 176
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
                        mov              esi, 208
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
                        mov              esi, 208
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
#                 bslash         =  CHAR(92)
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_begin_α:
                                                                                        jmp   n245_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n246_call_α
.Lx348_0:
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
                                                                                        jne   .Lx349_240
                                                                                        jmp   n248_statement_end_α
.Lx349_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n247_assign_α
n246_call_β:
                                                                                        jmp   n248_statement_end_α
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
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n251_call_α
.Lx355_0:
                        .quad            .Lx355_0_s
.Lx355_0_s:
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
.Lrkfnzd357:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd357]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx356_240
                                                                                        jmp   n253_statement_end_α
.Lx356_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n252_assign_α
n251_call_β:
                                                                                        jmp   n253_statement_end_α
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
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n256_assign_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
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
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n260_assign_α
.Lx369_0:
                        .quad            .Lx369_0_s
.Lx369_0_s:
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
                                                                                        jmp   n263_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n264_call_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n264_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd377:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd377]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx376_240
                                                                                        jmp   n266_statement_end_α
.Lx376_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n265_assign_α
n264_call_β:
                                                                                        jmp   n266_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n265_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # jescape
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n266_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n266_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n267_statement_begin_α
#=======================================================================================================================
#                 jchunk         =  BREAK('"\' CHAR(10) CHAR(13))
#-----------------------------------------------------------------------------------------------------------------------
n267_statement_begin_α:
                                                                                        jmp   n268_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n269_call_α
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n269_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd385:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd385]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx384_240
                                                                                        jmp   n271_statement_end_α
.Lx384_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n270_assign_α
n269_call_β:
                                                                                        jmp   n271_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n270_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # jchunk
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n271_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n271_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n272_statement_begin_α
#=======================================================================================================================
#                 jstring        =  '"' jchunk ARBNO(jescape jchunk) '"'
#-----------------------------------------------------------------------------------------------------------------------
n272_statement_begin_α:
                                                                                        jmp   n273_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n274_call_α
.Lx391_0:
                        .quad            .Lx391_0_s
.Lx391_0_s:
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
.Lrkfnzd393:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd393]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx392_240
                                                                                        jmp   n276_statement_end_α
.Lx392_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n275_assign_α
n274_call_β:
                                                                                        jmp   n276_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n275_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # jstring
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n276_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n276_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n277_statement_begin_α
#=======================================================================================================================
#                 jnumber        =  FENCE('-' | '')
#-----------------------------------------------------------------------------------------------------------------------
n277_statement_begin_α:
                                                                                        jmp   n278_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n279_call_α
.Lx399_0:
                        .quad            .Lx399_0_s
.Lx399_0_s:
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
.Lrkfnzd401:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd401]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx400_240
                                                                                        jmp   n281_statement_end_α
.Lx400_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n280_assign_α
n279_call_β:
                                                                                        jmp   n281_statement_end_α
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
                                                                                        jmp   n283_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n284_call_α
.Lx407_0:
                        .quad            .Lx407_0_s
.Lx407_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n284_call_α:
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
                                                                                        jmp   n286_statement_end_α
.Lx408_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n285_assign_α
n284_call_β:
                                                                                        jmp   n286_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n285_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # jmember
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n286_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n286_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n287_statement_begin_α
#=======================================================================================================================
#                 jobject        =  '{' ( jmember ARBNO(',' jmember) | ws ) '}'
#-----------------------------------------------------------------------------------------------------------------------
n287_statement_begin_α:
                                                                                        jmp   n288_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n289_call_α
.Lx415_0:
                        .quad            .Lx415_0_s
.Lx415_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n289_call_α:
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
                                                                                        jmp   n291_statement_end_α
.Lx416_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n290_assign_α
n289_call_β:
                                                                                        jmp   n291_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n290_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # jobject
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n291_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n291_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n292_statement_begin_α
#=======================================================================================================================
#                 jarray         =  '[' ( *jelement ARBNO(',' *jelement) | ws ) ']'
#-----------------------------------------------------------------------------------------------------------------------
n292_statement_begin_α:
                                                                                        jmp   n293_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n294_call_α
.Lx423_0:
                        .quad            .Lx423_0_s
.Lx423_0_s:
                        .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n294_call_α:
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
                                                                                        jmp   n296_statement_end_α
.Lx424_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n295_assign_α
n294_call_β:
                                                                                        jmp   n296_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n295_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # jarray
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n296_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n296_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n297_statement_begin_α
#=======================================================================================================================
#                 jvalue         =  jstring | jnumber | jobject | jarray
#-----------------------------------------------------------------------------------------------------------------------
n297_statement_begin_α:
                                                                                        jmp   n298_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n299_call_α
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "PAT$8"
#-----------------------------------------------------------------------------------------------------------------------
n299_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd433:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd433]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx432_240
                                                                                        jmp   n301_statement_end_α
.Lx432_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n300_assign_α
n299_call_β:
                                                                                        jmp   n301_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n300_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # jvalue
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n301_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n301_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n302_statement_begin_α
#=======================================================================================================================
#                 jelement       =  ws *jvalue ws
#-----------------------------------------------------------------------------------------------------------------------
n302_statement_begin_α:
                                                                                        jmp   n303_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n304_call_α
.Lx439_0:
                        .quad            .Lx439_0_s
.Lx439_0_s:
                        .string          "PAT$9"
#-----------------------------------------------------------------------------------------------------------------------
n304_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd441:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd441]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx440_240
                                                                                        jmp   n306_statement_end_α
.Lx440_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n305_assign_α
n304_call_β:
                                                                                        jmp   n306_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n305_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052480], rax                    # jelement
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n306_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n306_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n307_statement_begin_α
#=======================================================================================================================
#                 json           =  POS(0) jelement RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n307_statement_begin_α:
                                                                                        jmp   n308_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n309_call_α
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "PAT$10"
#-----------------------------------------------------------------------------------------------------------------------
n309_call_α:
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
                                                                                        jmp   n311_statement_end_α
.Lx448_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n310_assign_α
n309_call_β:
                                                                                        jmp   n311_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n310_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052496], rax                    # json
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n311_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n311_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n312_statement_begin_α
#=======================================================================================================================
#                 &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n312_statement_begin_α:
                                                                                        jmp   n313_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n314_lit_integer_α
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n314_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n315_call_α
n314_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n317_statement_begin_α
.Lx456_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n315_call_α:
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
.Lrkfnzd458:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd458]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx457_240
                        add              rsp, 16
                                                                                        jmp   n314_lit_integer_β
.Lx457_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n316_statement_end_α
n315_call_β:
                        add              rsp, 16
                                                                                        jmp   n314_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n316_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n317_statement_begin_α
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r1000000]')
#-----------------------------------------------------------------------------------------------------------------------
n317_statement_begin_α:
                                                                                        jmp   n318_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n319_call_α
.Lx463_0:
                        .quad            .Lx463_0_s
.Lx463_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n319_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd465:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd465]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx464_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n324_statement_begin_α
.Lx464_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n320_lit_integer_α
n319_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n324_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n321_lit_string_α
n320_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n324_statement_begin_α
.Lx466_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n322_call_α
n321_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n320_lit_integer_β
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "[-f0 -r1000000]"
#-----------------------------------------------------------------------------------------------------------------------
n322_call_α:
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
.Lbynamefnzd163:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd163]                   # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx468_240
                        add              rsp, 16
                                                                                        jmp   n321_lit_string_β
.Lx468_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n323_statement_end_α
n322_call_β:
                        add              rsp, 16
                                                                                        jmp   n321_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n323_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n324_statement_begin_α
#=======================================================================================================================
#                 src             =   INPUT                       :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n324_statement_begin_α:
                                                                                        jmp   n325_var_α
#-----------------------------------------------------------------------------------------------------------------------
n325_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx473_0]                # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx473_240
                        add              rsp, 16
                                                                                        jmp   n341_statement_begin_α
.Lx473_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n326_assign_α
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n326_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052512], rax                    # src
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n327_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n327_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n328_statement_begin_α
#=======================================================================================================================
#                 src             json                            :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n328_statement_begin_α:
                                                                                        jmp   n329_var_α
#-----------------------------------------------------------------------------------------------------------------------
n329_var_α:
                        sub              rsp, 128
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052512]                    # src
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n330_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n330_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 56], rbp                      # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 64], r13                      # outer_Σ
                        mov              qword ptr [rbp + 72], r14                      # outer_δ
                        mov              qword ptr [rbp + 80], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 88], rax                      # cap_gen
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
                        mov              qword ptr [rbp + 32], rsp                      # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 24], rax                      # patstk_mark
                        mov              dword ptr [rbp + 16], 0                        # start_δ
.Lx481_0:
                        mov              r14d, dword ptr [rbp + 16]
                                                                                        jmp   n331_match_patref_α
n330_match_begin_β:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, r15d
                                                                                        jg    .Lx481_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx481_1
                                                                                        jmp   .Lx481_0
.Lx481_1:
                        mov              rax, qword ptr [rbp + 24]                      # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        mov              r10, qword ptr [1879048192]
.Lx481_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx481_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 72]                      # outer_δ
                        mov              r15, qword ptr [rbp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]                      # old_rbp
                        add              rsp, 128
                                                                                        jmp   n341_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n331_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx482_11
                        mov              rax, qword ptr [1879052496]                    # json
                        mov              rdx, qword ptr [1879052504]
                        cmp              eax, 8
                                                                                        jne   .Lx482_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx482_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx482_10
.Lx482_9:
                        xor              eax, eax
.Lx482_10:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rax
.Lx482_11:
                        test             rax, rax
                                                                                        jz    .Lx482_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx482_4]
                        lea              rdx, [rip + .Lx482_5]
                                                                                        jmp   rax
.Lx482_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 16], eax
                                                                                        jmp   n332_match_end_α
.Lx482_5:
                                                                                        jmp   n330_match_begin_β
.Lx482_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S11]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx482_2:
                        test             rax, rax
                                                                                        je    .Lx482_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx482_7]
                        lea              rdx, [rip + .Lx482_8]
                                                                                        jmp   rax
.Lx482_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx482_2
.Lx482_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx482_2
.Lx482_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n330_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx482_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n332_match_end_α
.Lx482_6:
                        add              rsp, 16
                                                                                        jmp   n330_match_begin_β
n331_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n332_match_end_α:
                        mov              rax, qword ptr [rbp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx484_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx484_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx484_1:
                        test             rax, rax
                                                                                        je    .Lx484_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx484_3]
                        lea              rdx, [rip + .Lx484_4]
                                                                                        jmp   rax
.Lx484_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx484_1
.Lx484_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx484_1
.Lx484_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx484_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx484_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 72]                      # outer_δ
                        mov              r15, qword ptr [rbp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n333_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n333_statement_end_α:
                        mov              rbp, qword ptr [rbp + 56]                      # old_rbp
                        add              rsp, 128
                                                                                        jmp   n334_statement_begin_α
#=======================================================================================================================
#                 OUTPUT          =  'matched bytes=' SIZE(src)   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n334_statement_begin_α:
                                                                                        jmp   n335_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n336_var_α
.Lx489_0:
                        .quad            .Lx489_0_s
.Lx489_0_s:
                        .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052512]                    # src
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n337_call_α
n336_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n337_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd492:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd492]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx491_240
                        add              rsp, 16
                                                                                        jmp   n336_var_β
.Lx491_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n338_binop_α
n337_call_β:
                        add              rsp, 16
                                                                                        jmp   n336_var_β
#-----------------------------------------------------------------------------------------------------------------------
n338_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # lit_string
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n339_assign_α
n338_binop_β:
                        add              rsp, 32
                                                                                        jmp   n336_var_β
#-----------------------------------------------------------------------------------------------------------------------
n339_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx494_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n340_statement_end_α
.Lx494_0:
                        .quad            .Lx494_0_s
.Lx494_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n340_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   main_γ
#=======================================================================================================================
# fail            OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n341_statement_begin_α:
                                                                                        jmp   n342_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n343_assign_α
.Lx499_0:
                        .quad            .Lx499_0_s
.Lx499_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n343_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx500_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n344_statement_end_α
.Lx500_0:
                        .quad            .Lx500_0_s
.Lx500_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n344_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n345_goto_α:
                                                                                        jmp   n341_statement_begin_α
n345_goto_β:
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
.S0:                    .string          "bslash"
.S1:                    .string          "jchunk"
.S2:                    .string          "jescape"
.S3:                    .string          "ws"
.S4:                    .string          "jstring"
.S5:                    .string          "jelement"
.S6:                    .string          "jmember"
.S7:                    .string          "jarray"
.S8:                    .string          "jobject"
.S9:                    .string          "jnumber"
.S10:                   .string          "jvalue"
.S11:                   .string          "json"
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
