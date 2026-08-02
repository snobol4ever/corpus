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
                                                                                        jmp   n30_match_sequence_α
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
                                                                                        jmp   n30_match_sequence_β
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
n30_match_sequence_α:
                                                                                        jmp   n32_match_lit_α
n30_match_sequence_as:
                                                                                        jmp   n28_match_alternate_s0
n30_match_sequence_β:
                                                                                        jmp   n31_match_span_β
n30_match_sequence_af:
                                                                                        jmp   n28_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n31_match_span_α:
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx73_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx73_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx73_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx73_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx73_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx73_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx73_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx73_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx73_1
                        add              ecx, 1
                                                                                        jmp   .Lx73_0
.Lx73_1:
                        cmp              ecx, r14d
                                                                                        jle   n32_match_lit_β
                        mov              dword ptr [rbp + 196], r14d
                        mov              r14d, ecx
                                                                                        jmp   n28_match_alternate_s0
n31_match_span_β:
                        mov              r14d, dword ptr [rbp + 196]
                                                                                        jmp   n32_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n32_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n28_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 46
                                                                                        jne   n28_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n31_match_span_α
n32_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n28_match_alternate_af
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
                        lea              rax, [rip + .Lx81_21]
                        mov              qword ptr [rbp + 272], rax
                                                                                        jmp   n37_match_span_α
.Lx81_21:
                        lea              rax, [rip + .Lx81_19]
                        mov              qword ptr [rbp + 272], rax
                                                                                        jmp   n36_match_lit_α
n35_match_alternate_s0:
                        lea              rax, [rip + .Lx81_40]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n35_match_alternate_as
n35_match_alternate_s1:
                        lea              rax, [rip + .Lx81_41]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n35_match_alternate_as
.Lx81_40:
                                                                                        jmp   n37_match_span_β
.Lx81_41:
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
.Lx81_19:
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
.Lx85_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx85_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx85_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx85_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx85_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx85_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx85_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx85_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx85_1
                        add              ecx, 1
                                                                                        jmp   .Lx85_0
.Lx85_1:
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
                        lea              rax, [rip + .Lx89_21]
                        mov              qword ptr [rbp + 336], rax
                                                                                        jmp   n41_match_lit_α
.Lx89_21:
                        lea              rax, [rip + .Lx89_19]
                        mov              qword ptr [rbp + 336], rax
                                                                                        jmp   n40_match_lit_α
n39_match_alternate_s0:
                        lea              rax, [rip + .Lx89_40]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n39_match_alternate_as
n39_match_alternate_s1:
                        lea              rax, [rip + .Lx89_41]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n39_match_alternate_as
.Lx89_40:
                                                                                        jmp   n41_match_lit_β
.Lx89_41:
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
.Lx89_19:
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
                                                                                        jne   .Lx94_0
                        mov              ecx, dword ptr [rbp + 376]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx94_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 384], 1
                                                                                        jne   .Lx95_0
                        mov              eax, dword ptr [rbp + 376]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx95_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx95_0
                        mov              dword ptr [rbp + 376], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx95_0:
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
                        sub              rsp, 176
                        mov              qword ptr [rsp + 152], rcx
                        mov              qword ptr [rsp + 160], rdx
                        mov              qword ptr [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 144], r8
                        mov              dword ptr [rsp + 136], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + n96_match_sequence_β]
                        mov              qword ptr [rbp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n96_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n105_match_patref_α
n96_match_sequence_as:
                                                                                        jmp   proc_PAT$3_γ
n96_match_sequence_β:
                                                                                        jmp   n97_match_alternate_β
n96_match_sequence_af:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n97_match_alternate_α:
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx109_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n104_match_any_α
.Lx109_21:
                        lea              rax, [rip + .Lx109_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n98_match_sequence_α
n97_match_alternate_s0:
                        lea              rax, [rip + .Lx109_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n97_match_alternate_as
n97_match_alternate_s1:
                        lea              rax, [rip + .Lx109_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n97_match_alternate_as
.Lx109_40:
                                                                                        jmp   n104_match_any_β
.Lx109_41:
                                                                                        jmp   n98_match_sequence_β
n97_match_alternate_as:
                                                                                        jmp   proc_PAT$3_γ
n97_match_alternate_β:
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n97_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx109_19:
                                                                                        jmp   n105_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n98_match_sequence_α:
                                                                                        jmp   n103_match_lit_α
n98_match_sequence_as:
                                                                                        jmp   n97_match_alternate_s1
n98_match_sequence_β:
                                                                                        jmp   n99_match_any_β
n98_match_sequence_af:
                                                                                        jmp   n97_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n99_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n100_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n100_match_any_β
                        add              r14d, 1
                                                                                        jmp   n97_match_alternate_s1
n99_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n100_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n100_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n101_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n101_match_any_β
                        add              r14d, 1
                                                                                        jmp   n99_match_any_α
n100_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n101_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n101_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n102_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n102_match_any_β
                        add              r14d, 1
                                                                                        jmp   n100_match_any_α
n101_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n102_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n102_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n103_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n103_match_lit_β
                        add              r14d, 1
                                                                                        jmp   n101_match_any_α
n102_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n103_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n103_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n97_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 117
                                                                                        jne   n97_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n102_match_any_α
n103_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n97_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n104_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n97_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C5]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n97_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n97_match_alternate_s0
n104_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n97_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n105_match_patref_α:
                        mov              rax, qword ptr [1879052288]                    # bslash
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx124_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx124_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx124_10
.Lx124_9:
                        xor              eax, eax
.Lx124_10:
                        test             rax, rax
                                                                                        jz    .Lx124_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx124_4]
                        lea              rdx, [rip + .Lx124_5]
                                                                                        jmp   rax
.Lx124_4:
                                                                                        jmp   n97_match_alternate_α
.Lx124_5:
                                                                                        jmp   proc_PAT$3_ω
.Lx124_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx124_2:
                        test             rax, rax
                                                                                        je    .Lx124_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx124_7]
                        lea              rdx, [rip + .Lx124_8]
                                                                                        jmp   rax
.Lx124_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx124_2
.Lx124_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx124_2
.Lx124_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$3_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx124_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n97_match_alternate_α
.Lx124_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$3_ω
n105_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   .Lx125_0
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx125_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   .Lx126_0
                        mov              eax, dword ptr [rbp + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx126_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx126_0
                        mov              dword ptr [rbp + 136], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx126_0:
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
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rcx
                        mov              qword ptr [rsp + 240], rdx
                        mov              qword ptr [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 224], r8
                        mov              dword ptr [rsp + 216], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + n127_match_sequence_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n127_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n134_match_lit_α
n127_match_sequence_as:
                                                                                        jmp   proc_PAT$4_γ
n127_match_sequence_β:
                                                                                        jmp   n128_match_lit_β
n127_match_sequence_af:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n128_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n129_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   n129_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$4_γ
n128_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n129_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n129_match_arbno_α:
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                                                                                        jmp   n128_match_lit_α
n129_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 84]
                        mov              rax, qword ptr [rbp + 96]
                        sub              rsp, 112
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 96], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                                                                                        jmp   n130_match_sequence_α
n129_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n130_match_sequence_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                                                                                        jmp   n128_match_lit_α
n129_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 200]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 88]
                        test             ecx, ecx
                                                                                        jz    .Lx140_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 88], ecx
                        mov              qword ptr [rbp + 96], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n130_match_sequence_β
.Lx140_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   n133_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n130_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n132_match_patref_α
n130_match_sequence_as:
                                                                                        jmp   n129_match_arbno_as
n130_match_sequence_β:
                                                                                        jmp   n131_match_patref_β
n130_match_sequence_af:
                                                                                        jmp   n129_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n131_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx143_11
                        mov              rax, qword ptr [1879052368]                    # jchunk
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 8
                                                                                        jne   .Lx143_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx143_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx143_10
.Lx143_9:
                        xor              eax, eax
.Lx143_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx143_11:
                        test             rax, rax
                                                                                        jz    .Lx143_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx143_4]
                        lea              rdx, [rip + .Lx143_5]
                                                                                        jmp   rax
.Lx143_4:
                                                                                        jmp   n129_match_arbno_as
.Lx143_5:
                                                                                        jmp   n132_match_patref_β
.Lx143_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx143_2:
                        test             rax, rax
                                                                                        je    .Lx143_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx143_7]
                        lea              rdx, [rip + .Lx143_8]
                                                                                        jmp   rax
.Lx143_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx143_2
.Lx143_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx143_2
.Lx143_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n132_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx143_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n129_match_arbno_as
.Lx143_6:
                        add              rsp, 16
                                                                                        jmp   n132_match_patref_β
n131_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n132_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx144_11
                        mov              rax, qword ptr [1879052352]                    # jescape
                        mov              rdx, qword ptr [1879052360]
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
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx144_11:
                        test             rax, rax
                                                                                        jz    .Lx144_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx144_4]
                        lea              rdx, [rip + .Lx144_5]
                                                                                        jmp   rax
.Lx144_4:
                                                                                        jmp   n131_match_patref_α
.Lx144_5:
                                                                                        jmp   n129_match_arbno_af
.Lx144_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
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
                                                                                        js    n129_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx144_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n131_match_patref_α
.Lx144_6:
                        add              rsp, 16
                                                                                        jmp   n129_match_arbno_af
n132_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n133_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx145_11
                        mov              rax, qword ptr [1879052368]                    # jchunk
                        mov              rdx, qword ptr [1879052376]
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
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx145_11:
                        test             rax, rax
                                                                                        jz    .Lx145_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx145_4]
                        lea              rdx, [rip + .Lx145_5]
                                                                                        jmp   rax
.Lx145_4:
                                                                                        jmp   n129_match_arbno_α
.Lx145_5:
                                                                                        jmp   n134_match_lit_β
.Lx145_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
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
                                                                                        js    n134_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx145_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n129_match_arbno_α
.Lx145_6:
                        add              rsp, 16
                                                                                        jmp   n134_match_lit_β
n133_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n134_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$4_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   proc_PAT$4_ω
                        add              r14d, 1
                                                                                        jmp   n133_match_patref_α
n134_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$4_ω
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   .Lx148_0
                        mov              ecx, dword ptr [rbp + 216]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx148_0:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   .Lx149_0
                        mov              eax, dword ptr [rbp + 216]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx149_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx149_0
                        mov              dword ptr [rbp + 216], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
.Lx149_0:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              rbp, qword ptr [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, qword ptr [rbp + 240]
                        lea              rsp, [rbp + 256]
                        mov              rbp, qword ptr [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
                        sub              rsp, 176
                        mov              qword ptr [rsp + 152], rcx
                        mov              qword ptr [rsp + 160], rdx
                        mov              qword ptr [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 144], r8
                        mov              dword ptr [rsp + 136], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
                        lea              rax, [rip + proc_PAT$5_ω]
                        mov              qword ptr [rbp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n150_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n155_match_patref_α
n150_match_sequence_as:
                                                                                        jmp   proc_PAT$5_γ
n150_match_sequence_β:
                                                                                        jmp   n151_match_defer_β
n150_match_sequence_af:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n151_match_defer_α:
                        mov              qword ptr [rbp + 96], rsp
                        mov              rax, qword ptr [1879052480]                    # jelement
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 8
                                                                                        jne   .Lx158_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx158_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx158_10
.Lx158_9:
                        xor              eax, eax
.Lx158_10:
                        test             rax, rax
                                                                                        jz    .Lx158_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx158_4]
                        lea              rdx, [rip + .Lx158_5]
                                                                                        jmp   rax
.Lx158_4:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   proc_PAT$5_γ
.Lx158_5:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n152_match_lit_β
.Lx158_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx158_2:
                        test             rax, rax
                                                                                        je    .Lx158_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx158_7]
                        lea              rdx, [rip + .Lx158_8]
                                                                                        jmp   rax
.Lx158_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx158_2
.Lx158_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx158_2
.Lx158_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n152_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx158_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   proc_PAT$5_γ
.Lx158_6:
                        add              rsp, 16
                                                                                        jmp   n152_match_lit_β
n151_match_defer_β:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n152_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n152_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n153_match_patref_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 58
                                                                                        jne   n153_match_patref_β
                        add              r14d, 1
                                                                                        jmp   n151_match_defer_α
n152_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n153_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n153_match_patref_α:
                        mov              qword ptr [rbp + 64], rsp
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx161_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx161_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx161_10
.Lx161_9:
                        xor              eax, eax
.Lx161_10:
                        test             rax, rax
                                                                                        jz    .Lx161_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx161_4]
                        lea              rdx, [rip + .Lx161_5]
                                                                                        jmp   rax
.Lx161_4:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n152_match_lit_α
.Lx161_5:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n154_match_patref_β
.Lx161_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx161_2:
                        test             rax, rax
                                                                                        je    .Lx161_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx161_7]
                        lea              rdx, [rip + .Lx161_8]
                                                                                        jmp   rax
.Lx161_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx161_2
.Lx161_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx161_2
.Lx161_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n154_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx161_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n152_match_lit_α
.Lx161_6:
                        add              rsp, 16
                                                                                        jmp   n154_match_patref_β
n153_match_patref_β:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n154_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n154_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx162_11
                        mov              rax, qword ptr [1879052384]                    # jstring
                        mov              rdx, qword ptr [1879052392]
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
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx162_11:
                        test             rax, rax
                                                                                        jz    .Lx162_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx162_4]
                        lea              rdx, [rip + .Lx162_5]
                                                                                        jmp   rax
.Lx162_4:
                                                                                        jmp   n153_match_patref_α
.Lx162_5:
                                                                                        jmp   n155_match_patref_β
.Lx162_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]                               # varname
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
                                                                                        js    n155_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx162_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n153_match_patref_α
.Lx162_6:
                        add              rsp, 16
                                                                                        jmp   n155_match_patref_β
n154_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n155_match_patref_α:
                        mov              qword ptr [rbp + 32], rsp
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx163_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx163_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx163_10
.Lx163_9:
                        xor              eax, eax
.Lx163_10:
                        test             rax, rax
                                                                                        jz    .Lx163_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx163_4]
                        lea              rdx, [rip + .Lx163_5]
                                                                                        jmp   rax
.Lx163_4:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   n154_match_patref_α
.Lx163_5:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   proc_PAT$5_ω
.Lx163_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx163_2:
                        test             rax, rax
                                                                                        je    .Lx163_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx163_7]
                        lea              rdx, [rip + .Lx163_8]
                                                                                        jmp   rax
.Lx163_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx163_2
.Lx163_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx163_2
.Lx163_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$5_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx163_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n154_match_patref_α
.Lx163_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_ω
n155_match_patref_β:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   proc_PAT$5_ω
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   .Lx164_0
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx164_0:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   .Lx165_0
                        mov              eax, dword ptr [rbp + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx165_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx165_0
                        mov              dword ptr [rbp + 136], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
.Lx165_0:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_β:
                                                                                        jmp   qword ptr [rbp + 112]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$5_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              rbp, qword ptr [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                        mov              rax, qword ptr [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, qword ptr [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$6_α
proc_PAT$6_α:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 272], r8
                        mov              dword ptr [rsp + 264], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
                        lea              rax, [rip + n166_match_sequence_β]
                        mov              qword ptr [rbp + 240], rax
#-----------------------------------------------------------------------------------------------------------------------
n166_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n176_match_lit_α
n166_match_sequence_as:
                                                                                        jmp   proc_PAT$6_γ
n166_match_sequence_β:
                                                                                        jmp   n167_match_lit_β
n166_match_sequence_af:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
n167_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n168_match_alternate_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 125
                                                                                        jne   n168_match_alternate_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$6_γ
n167_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n168_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n168_match_alternate_α:
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx182_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n170_match_sequence_α
.Lx182_21:
                        lea              rax, [rip + .Lx182_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n169_match_patref_α
n168_match_alternate_s0:
                        lea              rax, [rip + .Lx182_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n168_match_alternate_as
n168_match_alternate_s1:
                        lea              rax, [rip + .Lx182_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n168_match_alternate_as
.Lx182_40:
                                                                                        jmp   n170_match_sequence_β
.Lx182_41:
                                                                                        jmp   n169_match_patref_β
n168_match_alternate_as:
                                                                                        jmp   n167_match_lit_α
n168_match_alternate_β:
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n168_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx182_19:
                                                                                        jmp   n176_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n169_match_patref_α:
                        mov              qword ptr [rbp + 224], rsp
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx183_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx183_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx183_10
.Lx183_9:
                        xor              eax, eax
.Lx183_10:
                        test             rax, rax
                                                                                        jz    .Lx183_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx183_4]
                        lea              rdx, [rip + .Lx183_5]
                                                                                        jmp   rax
.Lx183_4:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n168_match_alternate_s1
.Lx183_5:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n168_match_alternate_af
.Lx183_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx183_2:
                        test             rax, rax
                                                                                        je    .Lx183_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx183_7]
                        lea              rdx, [rip + .Lx183_8]
                                                                                        jmp   rax
.Lx183_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx183_2
.Lx183_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx183_2
.Lx183_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n168_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx183_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n168_match_alternate_s1
.Lx183_6:
                        add              rsp, 16
                                                                                        jmp   n168_match_alternate_af
n169_match_patref_β:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n168_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n170_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n175_match_patref_α
n170_match_sequence_as:
                                                                                        jmp   n168_match_alternate_s0
n170_match_sequence_β:
                                                                                        jmp   n171_match_arbno_β
n170_match_sequence_af:
                                                                                        jmp   n168_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n171_match_arbno_α:
                        mov              dword ptr [rbp + 128], r14d
                        mov              dword ptr [rbp + 132], r14d
                        mov              dword ptr [rbp + 136], 0
                        mov              qword ptr [rbp + 152], rsp
                        mov              qword ptr [rbp + 144], 0
                                                                                        jmp   n168_match_alternate_s0
n171_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 132]
                        mov              rax, qword ptr [rbp + 144]
                        sub              rsp, 224
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 144], rsp
                        mov              rbp, rsp
                        add              rbp, -8
                                                                                        jmp   n172_match_sequence_α
n171_match_arbno_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              r14d, eax
                                                                                        je    n172_match_sequence_β
                        mov              rbp, qword ptr [rbp + 8]
                        mov              eax, dword ptr [rbp + 136]
                        add              eax, 1
                        mov              dword ptr [rbp + 136], eax
                        mov              dword ptr [rbp + 132], r14d
                                                                                        jmp   n168_match_alternate_s0
n171_match_arbno_af:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 8]
                        lea              rsp, [rbp + 232]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 136]
                        test             ecx, ecx
                                                                                        jz    .Lx187_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 136], ecx
                        mov              qword ptr [rbp + 144], rax
                        lea              rbp, [rax + -8]
                                                                                        jmp   n172_match_sequence_β
.Lx187_2:
                        mov              r14d, dword ptr [rbp + 128]
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   n175_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n172_match_sequence_α:
                        mov              dword ptr [rbp + 176], r14d
                                                                                        jmp   n174_match_lit_α
n172_match_sequence_as:
                                                                                        jmp   n171_match_arbno_as
n172_match_sequence_β:
                                                                                        jmp   n173_match_patref_β
n172_match_sequence_af:
                                                                                        jmp   n171_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n173_match_patref_α:
                        mov              qword ptr [rbp + 208], rsp
                        mov              rax, qword ptr [1879052416]                    # jmember
                        mov              rdx, qword ptr [1879052424]
                        cmp              eax, 8
                                                                                        jne   .Lx190_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx190_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx190_10
.Lx190_9:
                        xor              eax, eax
.Lx190_10:
                        test             rax, rax
                                                                                        jz    .Lx190_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx190_4]
                        lea              rdx, [rip + .Lx190_5]
                                                                                        jmp   rax
.Lx190_4:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n171_match_arbno_as
.Lx190_5:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n174_match_lit_β
.Lx190_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx190_2:
                        test             rax, rax
                                                                                        je    .Lx190_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx190_7]
                        lea              rdx, [rip + .Lx190_8]
                                                                                        jmp   rax
.Lx190_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx190_2
.Lx190_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx190_2
.Lx190_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n174_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx190_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n171_match_arbno_as
.Lx190_6:
                        add              rsp, 16
                                                                                        jmp   n174_match_lit_β
n173_match_patref_β:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n174_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n174_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n171_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n171_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n173_match_patref_α
n174_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n171_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n175_match_patref_α:
                        mov              qword ptr [rbp + 96], rsp
                        mov              rax, qword ptr [1879052416]                    # jmember
                        mov              rdx, qword ptr [1879052424]
                        cmp              eax, 8
                                                                                        jne   .Lx193_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx193_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx193_10
.Lx193_9:
                        xor              eax, eax
.Lx193_10:
                        test             rax, rax
                                                                                        jz    .Lx193_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx193_4]
                        lea              rdx, [rip + .Lx193_5]
                                                                                        jmp   rax
.Lx193_4:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n171_match_arbno_α
.Lx193_5:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n168_match_alternate_af
.Lx193_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx193_2:
                        test             rax, rax
                                                                                        je    .Lx193_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx193_7]
                        lea              rdx, [rip + .Lx193_8]
                                                                                        jmp   rax
.Lx193_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx193_2
.Lx193_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx193_2
.Lx193_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n168_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx193_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n171_match_arbno_α
.Lx193_6:
                        add              rsp, 16
                                                                                        jmp   n168_match_alternate_af
n175_match_patref_β:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n168_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n176_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$6_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 123
                                                                                        jne   proc_PAT$6_ω
                        add              r14d, 1
                                                                                        jmp   n168_match_alternate_α
n176_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$6_ω
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 272], 1
                                                                                        jne   .Lx196_0
                        mov              ecx, dword ptr [rbp + 264]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx196_0:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 272], 1
                                                                                        jne   .Lx197_0
                        mov              eax, dword ptr [rbp + 264]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx197_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx197_0
                        mov              dword ptr [rbp + 264], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_attempt
.Lx197_0:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_β:
                                                                                        jmp   qword ptr [rbp + 240]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$6_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                        mov              rax, qword ptr [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$7_α
proc_PAT$7_α:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 272], r8
                        mov              dword ptr [rsp + 264], r14d
proc_PAT$7_attempt:
proc_PAT$7_α_body:
                        lea              rax, [rip + n198_match_sequence_β]
                        mov              qword ptr [rbp + 240], rax
#-----------------------------------------------------------------------------------------------------------------------
n198_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n208_match_lit_α
n198_match_sequence_as:
                                                                                        jmp   proc_PAT$7_γ
n198_match_sequence_β:
                                                                                        jmp   n199_match_lit_β
n198_match_sequence_af:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n199_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n200_match_alternate_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 93
                                                                                        jne   n200_match_alternate_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$7_γ
n199_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n200_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n200_match_alternate_α:
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx214_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n202_match_sequence_α
.Lx214_21:
                        lea              rax, [rip + .Lx214_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n201_match_patref_α
n200_match_alternate_s0:
                        lea              rax, [rip + .Lx214_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n200_match_alternate_as
n200_match_alternate_s1:
                        lea              rax, [rip + .Lx214_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n200_match_alternate_as
.Lx214_40:
                                                                                        jmp   n202_match_sequence_β
.Lx214_41:
                                                                                        jmp   n201_match_patref_β
n200_match_alternate_as:
                                                                                        jmp   n199_match_lit_α
n200_match_alternate_β:
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n200_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx214_19:
                                                                                        jmp   n208_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n201_match_patref_α:
                        mov              qword ptr [rbp + 224], rsp
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
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
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n200_match_alternate_s1
.Lx215_5:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n200_match_alternate_af
.Lx215_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
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
                                                                                        js    n200_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx215_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n200_match_alternate_s1
.Lx215_6:
                        add              rsp, 16
                                                                                        jmp   n200_match_alternate_af
n201_match_patref_β:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n200_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n202_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n207_match_defer_α
n202_match_sequence_as:
                                                                                        jmp   n200_match_alternate_s0
n202_match_sequence_β:
                                                                                        jmp   n203_match_arbno_β
n202_match_sequence_af:
                                                                                        jmp   n200_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n203_match_arbno_α:
                        mov              dword ptr [rbp + 128], r14d
                        mov              dword ptr [rbp + 132], r14d
                        mov              dword ptr [rbp + 136], 0
                        mov              qword ptr [rbp + 152], rsp
                        mov              qword ptr [rbp + 144], 0
                                                                                        jmp   n200_match_alternate_s0
n203_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 132]
                        mov              rax, qword ptr [rbp + 144]
                        sub              rsp, 224
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 144], rsp
                        mov              rbp, rsp
                        add              rbp, -8
                                                                                        jmp   n204_match_sequence_α
n203_match_arbno_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              r14d, eax
                                                                                        je    n204_match_sequence_β
                        mov              rbp, qword ptr [rbp + 8]
                        mov              eax, dword ptr [rbp + 136]
                        add              eax, 1
                        mov              dword ptr [rbp + 136], eax
                        mov              dword ptr [rbp + 132], r14d
                                                                                        jmp   n200_match_alternate_s0
n203_match_arbno_af:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 8]
                        lea              rsp, [rbp + 232]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 136]
                        test             ecx, ecx
                                                                                        jz    .Lx219_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 136], ecx
                        mov              qword ptr [rbp + 144], rax
                        lea              rbp, [rax + -8]
                                                                                        jmp   n204_match_sequence_β
.Lx219_2:
                        mov              r14d, dword ptr [rbp + 128]
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   n207_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n204_match_sequence_α:
                        mov              dword ptr [rbp + 176], r14d
                                                                                        jmp   n206_match_lit_α
n204_match_sequence_as:
                                                                                        jmp   n203_match_arbno_as
n204_match_sequence_β:
                                                                                        jmp   n205_match_defer_β
n204_match_sequence_af:
                                                                                        jmp   n203_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n205_match_defer_α:
                        mov              qword ptr [rbp + 208], rsp
                        mov              rax, qword ptr [1879052480]                    # jelement
                        mov              rdx, qword ptr [1879052488]
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
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n203_match_arbno_as
.Lx222_5:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n206_match_lit_β
.Lx222_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
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
                                                                                        js    n206_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx222_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n203_match_arbno_as
.Lx222_6:
                        add              rsp, 16
                                                                                        jmp   n206_match_lit_β
n205_match_defer_β:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n206_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n206_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n203_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n203_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n205_match_defer_α
n206_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n203_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n207_match_defer_α:
                        mov              qword ptr [rbp + 96], rsp
                        mov              rax, qword ptr [1879052480]                    # jelement
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 8
                                                                                        jne   .Lx225_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx225_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx225_10
.Lx225_9:
                        xor              eax, eax
.Lx225_10:
                        test             rax, rax
                                                                                        jz    .Lx225_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx225_4]
                        lea              rdx, [rip + .Lx225_5]
                                                                                        jmp   rax
.Lx225_4:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n203_match_arbno_α
.Lx225_5:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n200_match_alternate_af
.Lx225_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx225_2:
                        test             rax, rax
                                                                                        je    .Lx225_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx225_7]
                        lea              rdx, [rip + .Lx225_8]
                                                                                        jmp   rax
.Lx225_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx225_2
.Lx225_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx225_2
.Lx225_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n200_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx225_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n203_match_arbno_α
.Lx225_6:
                        add              rsp, 16
                                                                                        jmp   n200_match_alternate_af
n207_match_defer_β:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n200_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n208_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$7_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 91
                                                                                        jne   proc_PAT$7_ω
                        add              r14d, 1
                                                                                        jmp   n200_match_alternate_α
n208_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$7_ω
proc_PAT$7_scanhit:
                        cmp              qword ptr [rbp + 272], 1
                                                                                        jne   .Lx228_0
                        mov              ecx, dword ptr [rbp + 264]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx228_0:
                                                                                        jmp   proc_PAT$7_γ
proc_PAT$7_scanfail:
                        cmp              qword ptr [rbp + 272], 1
                                                                                        jne   .Lx229_0
                        mov              eax, dword ptr [rbp + 264]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx229_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx229_0
                        mov              dword ptr [rbp + 264], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$7_attempt
.Lx229_0:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_β:
                                                                                        jmp   qword ptr [rbp + 240]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$7_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_ω:
                        mov              rax, qword ptr [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, qword ptr [rbp + 296]
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
                        lea              rax, [rip + n230_match_alternate_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n230_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx239_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n237_match_patref_α
.Lx239_21:
                        lea              rax, [rip + .Lx239_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n236_match_patref_α
.Lx239_22:
                        lea              rax, [rip + .Lx239_23]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n235_match_patref_α
.Lx239_23:
                        lea              rax, [rip + .Lx239_24]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n234_match_patref_α
.Lx239_24:
                        lea              rax, [rip + .Lx239_25]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n233_match_lit_α
.Lx239_25:
                        lea              rax, [rip + .Lx239_26]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n232_match_lit_α
.Lx239_26:
                        lea              rax, [rip + .Lx239_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n231_match_lit_α
n230_match_alternate_s0:
                        lea              rax, [rip + .Lx239_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n230_match_alternate_as
n230_match_alternate_s1:
                        lea              rax, [rip + .Lx239_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n230_match_alternate_as
n230_match_alternate_s2:
                        lea              rax, [rip + .Lx239_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n230_match_alternate_as
n230_match_alternate_s3:
                        lea              rax, [rip + .Lx239_43]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n230_match_alternate_as
n230_match_alternate_s4:
                        lea              rax, [rip + .Lx239_44]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n230_match_alternate_as
n230_match_alternate_s5:
                        lea              rax, [rip + .Lx239_45]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n230_match_alternate_as
n230_match_alternate_s6:
                        lea              rax, [rip + .Lx239_46]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n230_match_alternate_as
.Lx239_40:
                                                                                        jmp   n237_match_patref_β
.Lx239_41:
                                                                                        jmp   n236_match_patref_β
.Lx239_42:
                                                                                        jmp   n235_match_patref_β
.Lx239_43:
                                                                                        jmp   n234_match_patref_β
.Lx239_44:
                                                                                        jmp   n233_match_lit_β
.Lx239_45:
                                                                                        jmp   n232_match_lit_β
.Lx239_46:
                                                                                        jmp   n231_match_lit_β
n230_match_alternate_as:
                                                                                        jmp   proc_PAT$8_γ
n230_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n230_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx239_19:
                                                                                        jmp   proc_PAT$8_ω
#-----------------------------------------------------------------------------------------------------------------------
n231_match_lit_α:
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d
                                                                                        jg    n230_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819047278
                                                                                        jne   n230_match_alternate_af
                        add              r14d, 4
                                                                                        jmp   n230_match_alternate_s6
n231_match_lit_β:
                        sub              r14d, 4
                                                                                        jmp   n230_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n232_match_lit_α:
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d
                                                                                        jg    n230_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1936482662
                                                                                        jne   n230_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101
                                                                                        jne   n230_match_alternate_af
                        add              r14d, 5
                                                                                        jmp   n230_match_alternate_s5
n232_match_lit_β:
                        sub              r14d, 5
                                                                                        jmp   n230_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n233_match_lit_α:
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d
                                                                                        jg    n230_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1702195828
                                                                                        jne   n230_match_alternate_af
                        add              r14d, 4
                                                                                        jmp   n230_match_alternate_s4
n233_match_lit_β:
                        sub              r14d, 4
                                                                                        jmp   n230_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n234_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx246_11
                        mov              rax, qword ptr [1879052448]                    # jarray
                        mov              rdx, qword ptr [1879052456]
                        cmp              eax, 8
                                                                                        jne   .Lx246_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx246_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx246_10
.Lx246_9:
                        xor              eax, eax
.Lx246_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx246_11:
                        test             rax, rax
                                                                                        jz    .Lx246_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx246_4]
                        lea              rdx, [rip + .Lx246_5]
                                                                                        jmp   rax
.Lx246_4:
                                                                                        jmp   n230_match_alternate_s3
.Lx246_5:
                                                                                        jmp   n230_match_alternate_af
.Lx246_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx246_2:
                        test             rax, rax
                                                                                        je    .Lx246_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx246_7]
                        lea              rdx, [rip + .Lx246_8]
                                                                                        jmp   rax
.Lx246_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx246_2
.Lx246_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx246_2
.Lx246_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n230_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx246_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n230_match_alternate_s3
.Lx246_6:
                        add              rsp, 16
                                                                                        jmp   n230_match_alternate_af
n234_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n235_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx247_11
                        mov              rax, qword ptr [1879052432]                    # jobject
                        mov              rdx, qword ptr [1879052440]
                        cmp              eax, 8
                                                                                        jne   .Lx247_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx247_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx247_10
.Lx247_9:
                        xor              eax, eax
.Lx247_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx247_11:
                        test             rax, rax
                                                                                        jz    .Lx247_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx247_4]
                        lea              rdx, [rip + .Lx247_5]
                                                                                        jmp   rax
.Lx247_4:
                                                                                        jmp   n230_match_alternate_s2
.Lx247_5:
                                                                                        jmp   n230_match_alternate_af
.Lx247_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx247_2:
                        test             rax, rax
                                                                                        je    .Lx247_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx247_7]
                        lea              rdx, [rip + .Lx247_8]
                                                                                        jmp   rax
.Lx247_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx247_2
.Lx247_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx247_2
.Lx247_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n230_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx247_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n230_match_alternate_s2
.Lx247_6:
                        add              rsp, 16
                                                                                        jmp   n230_match_alternate_af
n235_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n236_match_patref_α:
                        mov              qword ptr [rbp + 64], rsp
                        mov              rax, qword ptr [1879052400]                    # jnumber
                        mov              rdx, qword ptr [1879052408]
                        cmp              eax, 8
                                                                                        jne   .Lx248_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx248_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx248_10
.Lx248_9:
                        xor              eax, eax
.Lx248_10:
                        test             rax, rax
                                                                                        jz    .Lx248_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx248_4]
                        lea              rdx, [rip + .Lx248_5]
                                                                                        jmp   rax
.Lx248_4:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n230_match_alternate_s1
.Lx248_5:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n230_match_alternate_af
.Lx248_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx248_2:
                        test             rax, rax
                                                                                        je    .Lx248_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx248_7]
                        lea              rdx, [rip + .Lx248_8]
                                                                                        jmp   rax
.Lx248_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx248_2
.Lx248_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx248_2
.Lx248_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n230_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx248_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n230_match_alternate_s1
.Lx248_6:
                        add              rsp, 16
                                                                                        jmp   n230_match_alternate_af
n236_match_patref_β:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n230_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n237_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx249_11
                        mov              rax, qword ptr [1879052384]                    # jstring
                        mov              rdx, qword ptr [1879052392]
                        cmp              eax, 8
                                                                                        jne   .Lx249_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx249_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx249_10
.Lx249_9:
                        xor              eax, eax
.Lx249_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx249_11:
                        test             rax, rax
                                                                                        jz    .Lx249_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx249_4]
                        lea              rdx, [rip + .Lx249_5]
                                                                                        jmp   rax
.Lx249_4:
                                                                                        jmp   n230_match_alternate_s0
.Lx249_5:
                                                                                        jmp   n230_match_alternate_af
.Lx249_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx249_2:
                        test             rax, rax
                                                                                        je    .Lx249_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx249_7]
                        lea              rdx, [rip + .Lx249_8]
                                                                                        jmp   rax
.Lx249_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx249_2
.Lx249_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx249_2
.Lx249_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n230_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx249_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n230_match_alternate_s0
.Lx249_6:
                        add              rsp, 16
                                                                                        jmp   n230_match_alternate_af
n237_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$8_scanhit:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx250_0
                        mov              ecx, dword ptr [rbp + 152]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx250_0:
                                                                                        jmp   proc_PAT$8_γ
proc_PAT$8_scanfail:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx251_0
                        mov              eax, dword ptr [rbp + 152]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx251_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx251_0
                        mov              dword ptr [rbp + 152], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$8_attempt
.Lx251_0:
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
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$9_attempt:
proc_PAT$9_α_body:
                        lea              rax, [rip + proc_PAT$9_ω]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n252_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n255_match_patref_α
n252_match_sequence_as:
                                                                                        jmp   proc_PAT$9_γ
n252_match_sequence_β:
                                                                                        jmp   n253_match_patref_β
n252_match_sequence_af:
                                                                                        jmp   proc_PAT$9_ω
#-----------------------------------------------------------------------------------------------------------------------
n253_match_patref_α:
                        mov              qword ptr [rbp + 64], rsp
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx258_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx258_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx258_10
.Lx258_9:
                        xor              eax, eax
.Lx258_10:
                        test             rax, rax
                                                                                        jz    .Lx258_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx258_4]
                        lea              rdx, [rip + .Lx258_5]
                                                                                        jmp   rax
.Lx258_4:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   proc_PAT$9_γ
.Lx258_5:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n254_match_defer_β
.Lx258_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx258_2:
                        test             rax, rax
                                                                                        je    .Lx258_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx258_7]
                        lea              rdx, [rip + .Lx258_8]
                                                                                        jmp   rax
.Lx258_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx258_2
.Lx258_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx258_2
.Lx258_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n254_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx258_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   proc_PAT$9_γ
.Lx258_6:
                        add              rsp, 16
                                                                                        jmp   n254_match_defer_β
n253_match_patref_β:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n254_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n254_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx259_11
                        mov              rax, qword ptr [1879052464]                    # jvalue
                        mov              rdx, qword ptr [1879052472]
                        cmp              eax, 8
                                                                                        jne   .Lx259_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx259_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx259_10
.Lx259_9:
                        xor              eax, eax
.Lx259_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx259_11:
                        test             rax, rax
                                                                                        jz    .Lx259_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx259_4]
                        lea              rdx, [rip + .Lx259_5]
                                                                                        jmp   rax
.Lx259_4:
                                                                                        jmp   n253_match_patref_α
.Lx259_5:
                                                                                        jmp   n255_match_patref_β
.Lx259_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx259_2:
                        test             rax, rax
                                                                                        je    .Lx259_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx259_7]
                        lea              rdx, [rip + .Lx259_8]
                                                                                        jmp   rax
.Lx259_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx259_2
.Lx259_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx259_2
.Lx259_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n255_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx259_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n253_match_patref_α
.Lx259_6:
                        add              rsp, 16
                                                                                        jmp   n255_match_patref_β
n254_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n255_match_patref_α:
                        mov              qword ptr [rbp + 32], rsp
                        mov              rax, qword ptr [1879052304]                    # ws
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx260_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx260_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx260_10
.Lx260_9:
                        xor              eax, eax
.Lx260_10:
                        test             rax, rax
                                                                                        jz    .Lx260_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx260_4]
                        lea              rdx, [rip + .Lx260_5]
                                                                                        jmp   rax
.Lx260_4:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   n254_match_defer_α
.Lx260_5:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   proc_PAT$9_ω
.Lx260_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx260_2:
                        test             rax, rax
                                                                                        je    .Lx260_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx260_7]
                        lea              rdx, [rip + .Lx260_8]
                                                                                        jmp   rax
.Lx260_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx260_2
.Lx260_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx260_2
.Lx260_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$9_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx260_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n254_match_defer_α
.Lx260_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$9_ω
n255_match_patref_β:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   proc_PAT$9_ω
proc_PAT$9_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx261_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx261_0:
                                                                                        jmp   proc_PAT$9_γ
proc_PAT$9_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx262_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx262_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx262_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$9_attempt
.Lx262_0:
                                                                                        jmp   proc_PAT$9_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$9_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$9_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$9_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$9_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$9_ω:
                        mov              rax, qword ptr [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$10_α
proc_PAT$10_α:
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rcx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 152], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 128], r8
                        mov              dword ptr [rsp + 120], r14d
proc_PAT$10_attempt:
proc_PAT$10_α_body:
                        lea              rax, [rip + n263_match_sequence_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n263_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n267_lit_integer_α
n263_match_sequence_as:
                                                                                        jmp   proc_PAT$10_γ
n263_match_sequence_β:
                                                                                        jmp   n265_match_rpos_β
n263_match_sequence_af:
                                                                                        jmp   proc_PAT$10_ω
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_integer_α:
                        mov              qword ptr [rbp + 80], 3                        # result
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n265_match_rpos_α
n264_lit_integer_β:
                                                                                        jmp   n266_match_patref_β
.Lx271_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n265_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n266_match_patref_β
                                                                                        jmp   proc_PAT$10_γ
n265_match_rpos_β:
                                                                                        jmp   n266_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n266_match_patref_α:
                        mov              qword ptr [rbp + 64], rsp
                        mov              rax, qword ptr [1879052480]                    # jelement
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 8
                                                                                        jne   .Lx273_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx273_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx273_10
.Lx273_9:
                        xor              eax, eax
.Lx273_10:
                        test             rax, rax
                                                                                        jz    .Lx273_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx273_4]
                        lea              rdx, [rip + .Lx273_5]
                                                                                        jmp   rax
.Lx273_4:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n264_lit_integer_α
.Lx273_5:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   proc_PAT$10_ω
.Lx273_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx273_2:
                        test             rax, rax
                                                                                        je    .Lx273_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx273_7]
                        lea              rdx, [rip + .Lx273_8]
                                                                                        jmp   rax
.Lx273_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx273_2
.Lx273_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx273_2
.Lx273_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$10_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx273_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n264_lit_integer_α
.Lx273_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$10_ω
n266_match_patref_β:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   proc_PAT$10_ω
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_integer_α:
                        mov              qword ptr [rbp + 48], 3                        # result
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n268_match_pos_α
n267_lit_integer_β:
                                                                                        jmp   proc_PAT$10_ω
.Lx274_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n268_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$10_ω
                                                                                        jmp   n266_match_patref_α
n268_match_pos_β:
                                                                                        jmp   proc_PAT$10_ω
proc_PAT$10_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx276_0
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx276_0:
                                                                                        jmp   proc_PAT$10_γ
proc_PAT$10_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx277_0
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx277_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx277_0
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$10_attempt
.Lx277_0:
                                                                                        jmp   proc_PAT$10_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$10_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$10_β:
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$10_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$10_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$10_ω:
                        mov              rax, qword ptr [rbp + 144]
                        lea              rsp, [rbp + 160]
                        mov              rbp, qword ptr [rbp + 152]
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
                        mov              esi, 128
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
                        mov              esi, 208
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
                        mov              esi, 128
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
                        mov              esi, 256
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
                        mov              esi, 256
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
                        mov              esi, 96
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
                        mov              esi, 112
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
n278_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n279_call_α
.Lx360_0:
                        .quad            92
#-----------------------------------------------------------------------------------------------------------------------
n279_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd96:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd96]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx361_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n282_lit_string_α
.Lx361_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n280_assign_α
n279_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n282_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n280_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # bslash
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n281_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n281_statement_α:
                        add              rsp, 32
                                                                                        jmp   n282_lit_string_α
#=======================================================================================================================
#                 ws             =  FENCE(SPAN(' ' CHAR(9) CHAR(10) CHAR(13)) | '')
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n283_call_α
.Lx365_0:
                        .quad            .Lx365_0_s
.Lx365_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n283_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd367:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd367]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx366_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n286_lit_string_α
.Lx366_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n284_assign_α
n283_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n286_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n284_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # ws
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n285_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n285_statement_α:
                        add              rsp, 32
                                                                                        jmp   n286_lit_string_α
#=======================================================================================================================
#                 hex            =  '0123456789abcdefABCDEF'
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n287_assign_α
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
                        .string          "0123456789abcdefABCDEF"
#-----------------------------------------------------------------------------------------------------------------------
n287_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # hex
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n288_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n288_statement_α:
                        add              rsp, 16
                                                                                        jmp   n289_lit_string_α
#=======================================================================================================================
#                 dig            =  '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n290_assign_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n290_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # dig
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n291_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n291_statement_α:
                        add              rsp, 16
                                                                                        jmp   n292_lit_string_α
#=======================================================================================================================
#                 jescape        =  bslash
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n293_call_α
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n293_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd381:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd381]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx380_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n296_lit_string_α
.Lx380_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n294_assign_α
n293_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n296_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n294_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # jescape
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n295_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n295_statement_α:
                        add              rsp, 32
                                                                                        jmp   n296_lit_string_α
#=======================================================================================================================
#                 jchunk         =  BREAK('"\' CHAR(10) CHAR(13))
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n297_call_α
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n297_call_α:
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
                                                                                        jmp   n300_lit_string_α
.Lx386_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n298_assign_α
n297_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n300_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n298_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # jchunk
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n299_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n299_statement_α:
                        add              rsp, 32
                                                                                        jmp   n300_lit_string_α
#=======================================================================================================================
#                 jstring        =  '"' jchunk ARBNO(jescape jchunk) '"'
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n301_call_α
.Lx391_0:
                        .quad            .Lx391_0_s
.Lx391_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n301_call_α:
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
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n304_lit_string_α
.Lx392_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n302_assign_α
n301_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n304_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n302_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # jstring
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n303_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n303_statement_α:
                        add              rsp, 32
                                                                                        jmp   n304_lit_string_α
#=======================================================================================================================
#                 jnumber        =  FENCE('-' | '')
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n305_call_α
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n305_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd399:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd399]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx398_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n308_lit_string_α
.Lx398_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n306_assign_α
n305_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n308_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n306_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # jnumber
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n307_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n307_statement_α:
                        add              rsp, 32
                                                                                        jmp   n308_lit_string_α
#=======================================================================================================================
#                 jmember        =  ws jstring ws ':' *jelement
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n309_call_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n309_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd405:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd405]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx404_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n312_lit_string_α
.Lx404_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n310_assign_α
n309_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n312_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n310_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # jmember
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n311_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n311_statement_α:
                        add              rsp, 32
                                                                                        jmp   n312_lit_string_α
#=======================================================================================================================
#                 jobject        =  '{' ( jmember ARBNO(',' jmember) | ws ) '}'
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n313_call_α
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n313_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd411:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd411]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx410_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n316_lit_string_α
.Lx410_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n314_assign_α
n313_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n316_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n314_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # jobject
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n315_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n315_statement_α:
                        add              rsp, 32
                                                                                        jmp   n316_lit_string_α
#=======================================================================================================================
#                 jarray         =  '[' ( *jelement ARBNO(',' *jelement) | ws ) ']'
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n317_call_α
.Lx415_0:
                        .quad            .Lx415_0_s
.Lx415_0_s:
                        .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n317_call_α:
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
                        add              rsp, 16
                                                                                        jmp   n320_lit_string_α
.Lx416_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n318_assign_α
n317_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n320_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n318_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # jarray
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n319_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n319_statement_α:
                        add              rsp, 32
                                                                                        jmp   n320_lit_string_α
#=======================================================================================================================
#                 jvalue         =  jstring | jnumber | jobject | jarray
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n321_call_α
.Lx421_0:
                        .quad            .Lx421_0_s
.Lx421_0_s:
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
.Lrkfnzd423:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd423]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx422_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n324_lit_string_α
.Lx422_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n322_assign_α
n321_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n324_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n322_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # jvalue
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n323_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n323_statement_α:
                        add              rsp, 32
                                                                                        jmp   n324_lit_string_α
#=======================================================================================================================
#                 jelement       =  ws *jvalue ws
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n325_call_α
.Lx427_0:
                        .quad            .Lx427_0_s
.Lx427_0_s:
                        .string          "PAT$9"
#-----------------------------------------------------------------------------------------------------------------------
n325_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd429:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd429]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx428_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n328_lit_string_α
.Lx428_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n326_assign_α
n325_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n328_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n326_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052480], rax                    # jelement
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n327_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n327_statement_α:
                        add              rsp, 32
                                                                                        jmp   n328_lit_string_α
#=======================================================================================================================
#                 json           =  POS(0) jelement RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n329_call_α
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
                        .string          "PAT$10"
#-----------------------------------------------------------------------------------------------------------------------
n329_call_α:
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
                                                                                        jmp   n332_lit_string_α
.Lx434_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n330_assign_α
n329_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n332_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n330_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052496], rax                    # json
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n331_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n331_statement_α:
                        add              rsp, 32
                                                                                        jmp   n332_lit_string_α
#=======================================================================================================================
#                 &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n333_lit_integer_α
.Lx439_0:
                        .quad            .Lx439_0_s
.Lx439_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n334_call_α
.Lx440_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n334_call_α:
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
.Lrkfnzd442:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd442]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx441_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n336_lit_string_α
.Lx441_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n335_statement_α
n334_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n336_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n335_statement_α:
                        add              rsp, 48
                                                                                        jmp   n336_lit_string_α
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r1000000]')
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n337_call_α
.Lx445_0:
                        .quad            .Lx445_0_s
.Lx445_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n337_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd447:            .string          "SNO$NAME"
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
                                                                                        jmp   n342_var_α
.Lx446_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n338_lit_integer_α
n337_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n342_var_α
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n339_lit_string_α
.Lx448_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n340_call_α
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "[-f0 -r1000000]"
#-----------------------------------------------------------------------------------------------------------------------
n340_call_α:
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
.Lbynamefnzd157:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd157]                   # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx450_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n342_var_α
.Lx450_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n341_statement_α
n340_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n342_var_α
#-----------------------------------------------------------------------------------------------------------------------
n341_statement_α:
                        add              rsp, 80
                                                                                        jmp   n342_var_α
#=======================================================================================================================
#                 src             =   INPUT                       :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n342_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx453_0]                # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx453_240
                        add              rsp, 16
                                                                                        jmp   n356_lit_string_α
.Lx453_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n343_assign_α
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n343_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052512], rax                    # src
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n344_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n344_statement_α:
                        add              rsp, 16
                                                                                        jmp   n345_var_α
#=======================================================================================================================
#                 src             json                            :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:
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
                                                                                        jmp   n346_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n346_match_begin_α:
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
.Lx459_0:
                        mov              r14d, dword ptr [rbp + 16]
                                                                                        jmp   n347_match_patref_α
n346_match_begin_β:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, r15d
                                                                                        jg    .Lx459_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx459_1
                                                                                        jmp   .Lx459_0
.Lx459_1:
                        mov              rax, qword ptr [rbp + 24]                      # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        mov              r10, qword ptr [1879048192]
.Lx459_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx459_2
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
                                                                                        jmp   n356_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n347_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx460_11
                        mov              rax, qword ptr [1879052496]                    # json
                        mov              rdx, qword ptr [1879052504]
                        cmp              eax, 8
                                                                                        jne   .Lx460_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx460_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx460_10
.Lx460_9:
                        xor              eax, eax
.Lx460_10:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rax
.Lx460_11:
                        test             rax, rax
                                                                                        jz    .Lx460_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx460_4]
                        lea              rdx, [rip + .Lx460_5]
                                                                                        jmp   rax
.Lx460_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 16], eax
                                                                                        jmp   n348_match_end_α
.Lx460_5:
                                                                                        jmp   n346_match_begin_β
.Lx460_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S11]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx460_2:
                        test             rax, rax
                                                                                        je    .Lx460_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx460_7]
                        lea              rdx, [rip + .Lx460_8]
                                                                                        jmp   rax
.Lx460_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx460_2
.Lx460_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx460_2
.Lx460_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n346_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx460_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n348_match_end_α
.Lx460_6:
                        add              rsp, 16
                                                                                        jmp   n346_match_begin_β
n347_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n348_match_end_α:
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
.Lx462_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx462_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx462_1:
                        test             rax, rax
                                                                                        je    .Lx462_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx462_3]
                        lea              rdx, [rip + .Lx462_4]
                                                                                        jmp   rax
.Lx462_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx462_1
.Lx462_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx462_1
.Lx462_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx462_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx462_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 72]                      # outer_δ
                        mov              r15, qword ptr [rbp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n349_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n349_statement_α:
                        mov              rbp, qword ptr [rbp + 56]                      # old_rbp
                        add              rsp, 128
                                                                                        jmp   n350_lit_string_α
#=======================================================================================================================
#                 OUTPUT          =  'matched bytes=' SIZE(src)   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n351_var_α
.Lx465_0:
                        .quad            .Lx465_0_s
.Lx465_0_s:
                        .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n351_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052512]                    # src
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n352_call_α
#-----------------------------------------------------------------------------------------------------------------------
n352_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd468:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd468]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx467_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
.Lx467_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n353_binop_α
n352_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n353_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # lit_string
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n354_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n354_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx470_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n355_statement_α
.Lx470_0:
                        .quad            .Lx470_0_s
.Lx470_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n355_statement_α:
                        add              rsp, 64
                                                                                        jmp   main_γ
#=======================================================================================================================
# fail            OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n357_assign_α
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n357_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx474_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n358_statement_α
.Lx474_0:
                        .quad            .Lx474_0_s
.Lx474_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n358_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n359_goto_α:
                                                                                        jmp   n356_lit_string_α
n359_goto_β:
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
.S3:                    .string          "jelement"
.S4:                    .string          "ws"
.S5:                    .string          "jstring"
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
