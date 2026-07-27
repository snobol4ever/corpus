                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        .global          proc_PAT$0_α
                        .global          proc_PAT$0_β
                        .global          proc_PAT$0_γ
                        .global          proc_PAT$0_ω
                        sub              rsp, 96
                        mov              [rsp + 72], rcx
                        mov              [rsp + 80], rdx
                        mov              [rsp + 88], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rbp + 64], r8
                        mov              dword ptr [rbp + 56], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + proc_PAT$0_ω]
                        mov              qword ptr [rsp + 48], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], 0
                                                                                        jmp   n1_match_span_α
n0_match_alternate_s0:
                                                                                        jmp   n0_match_alternate_as
n0_match_alternate_s1:
                        sub              rsp, 16
                                                                                        jmp   n0_match_alternate_as
n0_match_alternate_as:
                                                                                        jmp   proc_PAT$0_γ
n0_match_alternate_β:
                        mov              eax, dword ptr [rsp + 20]
                        cmp              eax, 0
                                                                                        je    n1_match_span_β
                        add              rsp, 16
                                                                                        jmp   n2_match_lit_β
n0_match_alternate_af:
                        add              dword ptr [rsp + 4], 1
                        mov              r14d, dword ptr [rsp + 0]
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 1
                                                                                        je    n2_match_lit_α
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx6_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx6_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx6_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx6_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx6_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx6_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx6_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx6_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx6_1
                        add              ecx, 1
                                                                                        jmp   .Lx6_0
.Lx6_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx6_240
                        add              rsp, 16
                                                                                        jmp   n0_match_alternate_af
.Lx6_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n0_match_alternate_s0
n1_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n2_match_lit_α:
                                                                                        jmp   n0_match_alternate_s1
n2_match_lit_β:
                                                                                        jmp   n0_match_alternate_af
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 56]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 56]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 56], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
8:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rsp + 48]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, [rbp + 72]
                        mov              rbp, [rbp + 88]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, [rbp + 80]
                        lea              rsp, [rbp + 96]
                        mov              rbp, [rbp + 88]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        .global          proc_PAT$1_α
                        .global          proc_PAT$1_β
                        .global          proc_PAT$1_γ
                        .global          proc_PAT$1_ω
                        sub              rsp, 64
                        mov              [rsp + 40], rcx
                        mov              [rsp + 48], rdx
                        mov              [rsp + 56], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rbp + 32], r8
                        mov              dword ptr [rbp + 24], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n9_match_break_β]
                        mov              qword ptr [rsp + 16], rax
#-----------------------------------------------------------------------------------------------------------------------
n9_match_break_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx11_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx11_237
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx11_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx11_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx11_238
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx11_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx11_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx11_239
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx11_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx11_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx11_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx11_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx11_1
                        add              ecx, 1
                                                                                        jmp   .Lx11_0
.Lx11_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   proc_PAT$1_scanhit
n9_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 32], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 24]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 32], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 24]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 24], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
8:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rsp + 16]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, [rbp + 40]
                        mov              rbp, [rbp + 56]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, [rbp + 48]
                        lea              rsp, [rbp + 64]
                        mov              rbp, [rbp + 56]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        .global          proc_PAT$2_α
                        .global          proc_PAT$2_β
                        .global          proc_PAT$2_γ
                        .global          proc_PAT$2_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rbp + 240], r8
                        mov              dword ptr [rbp + 232], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + proc_PAT$2_ω]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n12_match_fence1_α:
                        mov              qword ptr [rsp + 192], rsp
                                                                                        jmp   n14_match_alternate_α
n12_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rsp + 192], rbp
                                                                                        jmp   n13_match_alternate_α
n12_match_fence1_β:
n12_match_fence1_af:
                        mov              rsp, qword ptr [rsp + 192]
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_match_alternate_α:
                        mov              dword ptr [rsp + 144], r14d
                        mov              dword ptr [rsp + 148], 0
                                                                                        jmp   n16_match_lit_α
n13_match_alternate_as:
                                                                                        jmp   n15_match_fence1_α
n13_match_alternate_β:
                        mov              eax, dword ptr [rsp + 148]
                        cmp              eax, 0
                                                                                        je    n16_match_lit_β
                                                                                        jmp   n18_match_fence1_β
n13_match_alternate_af:
                        add              dword ptr [rsp + 148], 1
                        mov              r14d, dword ptr [rsp + 144]
                        mov              eax, dword ptr [rsp + 148]
                        cmp              eax, 1
                                                                                        je    n17_match_any_α
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_match_alternate_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], 0
                                                                                        jmp   n19_match_lit_α
n14_match_alternate_s0:
                                                                                        jmp   n14_match_alternate_as
n14_match_alternate_s1:
                                                                                        jmp   n14_match_alternate_as
n14_match_alternate_as:
                                                                                        jmp   n12_match_fence1_as
n14_match_alternate_β:
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 0
                                                                                        je    n19_match_lit_β
                                                                                        jmp   n20_match_lit_β
n14_match_alternate_af:
                        add              dword ptr [rsp + 4], 1
                        mov              r14d, dword ptr [rsp + 0]
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 1
                                                                                        je    n20_match_lit_α
                        add              rsp, 16
                                                                                        jmp   n12_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n15_match_fence1_α:
                        mov              qword ptr [rsp + 96], rsp
                                                                                        jmp   n22_match_alternate_α
n15_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rsp + 96], rbp
                                                                                        jmp   n21_match_fence1_α
n15_match_fence1_β:
n15_match_fence1_af:
                        mov              rsp, qword ptr [rsp + 96]
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n13_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 48
                                                                                        jne   n13_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n13_match_alternate_as
n16_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n13_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n17_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n13_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C2]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n13_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n18_match_fence1_α
n17_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n13_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n18_match_fence1_α:
                        mov              qword ptr [rsp + 160], rsp
                                                                                        jmp   n23_match_alternate_α
n18_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rsp + 160], rbp
                                                                                        jmp   n13_match_alternate_as
n18_match_fence1_β:
n18_match_fence1_af:
                        mov              rsp, qword ptr [rsp + 160]
                                                                                        jmp   n13_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n19_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n14_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n14_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n14_match_alternate_s0
n19_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n14_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n20_match_lit_α:
                                                                                        jmp   n14_match_alternate_s1
n20_match_lit_β:
                                                                                        jmp   n14_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n21_match_fence1_α:
                        mov              qword ptr [rsp + 16], rsp
                                                                                        jmp   n24_match_alternate_α
n21_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rsp + 16], rbp
                                                                                        jmp   proc_PAT$2_γ
n21_match_fence1_β:
n21_match_fence1_af:
                        mov              rsp, qword ptr [rsp + 16]
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_match_alternate_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], 0
                                                                                        jmp   n25_match_sequence_α
n22_match_alternate_s0:
                                                                                        jmp   n22_match_alternate_as
n22_match_alternate_s1:
                        sub              rsp, 16
                                                                                        jmp   n22_match_alternate_as
n22_match_alternate_as:
                                                                                        jmp   n15_match_fence1_as
n22_match_alternate_β:
                        mov              eax, dword ptr [rsp + 20]
                        cmp              eax, 0
                                                                                        je    n25_match_sequence_β
                        add              rsp, 16
                                                                                        jmp   n26_match_lit_β
n22_match_alternate_af:
                        add              dword ptr [rsp + 4], 1
                        mov              r14d, dword ptr [rsp + 0]
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 1
                                                                                        je    n26_match_lit_α
                        add              rsp, 16
                                                                                        jmp   n15_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n23_match_alternate_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], 0
                                                                                        jmp   n27_match_span_α
n23_match_alternate_s0:
                                                                                        jmp   n23_match_alternate_as
n23_match_alternate_s1:
                        sub              rsp, 16
                                                                                        jmp   n23_match_alternate_as
n23_match_alternate_as:
                                                                                        jmp   n18_match_fence1_as
n23_match_alternate_β:
                        mov              eax, dword ptr [rsp + 20]
                        cmp              eax, 0
                                                                                        je    n27_match_span_β
                        add              rsp, 16
                                                                                        jmp   n28_match_lit_β
n23_match_alternate_af:
                        add              dword ptr [rsp + 4], 1
                        mov              r14d, dword ptr [rsp + 0]
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 1
                                                                                        je    n28_match_lit_α
                        add              rsp, 16
                                                                                        jmp   n18_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n24_match_alternate_α:
                        mov              dword ptr [rsp + 32], r14d
                        mov              dword ptr [rsp + 36], 0
                                                                                        jmp   n29_match_any_α
n24_match_alternate_as:
                                                                                        jmp   n21_match_fence1_as
n24_match_alternate_β:
                        mov              eax, dword ptr [rsp + 36]
                        cmp              eax, 0
                                                                                        je    n30_match_span_β
                                                                                        jmp   n31_match_lit_β
n24_match_alternate_af:
                        add              dword ptr [rsp + 36], 1
                        mov              r14d, dword ptr [rsp + 32]
                        mov              eax, dword ptr [rsp + 36]
                        cmp              eax, 1
                                                                                        je    n31_match_lit_α
                                                                                        jmp   n21_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n25_match_sequence_α:
                                                                                        jmp   n32_match_lit_α
n25_match_sequence_as:
                                                                                        jmp   n22_match_alternate_s0
n25_match_sequence_β:
                                                                                        jmp   n33_match_span_β
n25_match_sequence_af:
                                                                                        jmp   n22_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n26_match_lit_α:
                                                                                        jmp   n22_match_alternate_s1
n26_match_lit_β:
                                                                                        jmp   n22_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n27_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C3]
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
                                                                                        jg    .Lx69_240
                        add              rsp, 16
                                                                                        jmp   n23_match_alternate_af
.Lx69_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n23_match_alternate_s0
n27_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n23_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n28_match_lit_α:
                                                                                        jmp   n23_match_alternate_s1
n28_match_lit_β:
                                                                                        jmp   n23_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n29_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n24_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 101
                                                                                        je    .Lx73_0
                        cmp              esi, 69
                                                                                        je    .Lx73_0
                                                                                        jmp   n24_match_alternate_af
.Lx73_0:
                        add              r14d, 1
                                                                                        jmp   n34_match_fence1_α
n29_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n24_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n30_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.Lx75_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx75_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx75_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx75_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx75_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx75_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx75_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx75_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx75_1
                        add              ecx, 1
                                                                                        jmp   .Lx75_0
.Lx75_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx75_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$2_scanfail
.Lx75_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n24_match_alternate_as
n30_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   proc_PAT$2_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n31_match_lit_α:
                                                                                        jmp   n24_match_alternate_as
n31_match_lit_β:
                                                                                        jmp   n24_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n32_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n22_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 46
                                                                                        jne   n22_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n33_match_span_α
n32_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n22_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n33_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.Lx81_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx81_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx81_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx81_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx81_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx81_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx81_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx81_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx81_1
                        add              ecx, 1
                                                                                        jmp   .Lx81_0
.Lx81_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx81_240
                        add              rsp, 16
                                                                                        jmp   n32_match_lit_β
.Lx81_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n22_match_alternate_s0
n33_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n32_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n34_match_fence1_α:
                        mov              qword ptr [rsp + 48], rsp
                                                                                        jmp   n35_match_alternate_α
n34_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rsp + 48], rbp
                                                                                        jmp   n30_match_span_α
n34_match_fence1_β:
n34_match_fence1_af:
                        mov              rsp, qword ptr [rsp + 48]
                                                                                        jmp   n24_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n35_match_alternate_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], 0
                                                                                        jmp   n36_match_any_α
n35_match_alternate_s0:
                                                                                        jmp   n35_match_alternate_as
n35_match_alternate_s1:
                                                                                        jmp   n35_match_alternate_as
n35_match_alternate_as:
                                                                                        jmp   n34_match_fence1_as
n35_match_alternate_β:
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 0
                                                                                        je    n36_match_any_β
                                                                                        jmp   n37_match_lit_β
n35_match_alternate_af:
                        add              dword ptr [rsp + 4], 1
                        mov              r14d, dword ptr [rsp + 0]
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 1
                                                                                        je    n37_match_lit_α
                        add              rsp, 16
                                                                                        jmp   n34_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n36_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n35_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43
                                                                                        je    .Lx87_0
                        cmp              esi, 45
                                                                                        je    .Lx87_0
                                                                                        jmp   n35_match_alternate_af
.Lx87_0:
                        add              r14d, 1
                                                                                        jmp   n35_match_alternate_s0
n36_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n37_match_lit_α:
                                                                                        jmp   n35_match_alternate_s1
n37_match_lit_β:
                                                                                        jmp   n35_match_alternate_af
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 232]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 232]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 232], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
8:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rsp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        .global          proc_PAT$3_α
                        .global          proc_PAT$3_β
                        .global          proc_PAT$3_γ
                        .global          proc_PAT$3_ω
                        sub              rsp, 144
                        mov              [rsp + 120], rcx
                        mov              [rsp + 128], rdx
                        mov              [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rbp + 112], r8
                        mov              dword ptr [rbp + 104], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + n90_match_sequence_β]
                        mov              qword ptr [rsp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n90_match_sequence_α:
                        mov              dword ptr [rsp + 16], r14d
                                                                                        jmp   n91_match_defer_α
n90_match_sequence_as:
                                                                                        jmp   proc_PAT$3_γ
n90_match_sequence_β:
                                                                                        jmp   n92_match_alternate_β
n90_match_sequence_af:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n91_match_defer_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx102_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx102_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx102_10
.Lx102_9:
                        xor              eax, eax
.Lx102_10:
                        test             rax, rax
                                                                                        jz    .Lx102_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx102_4]
                        lea              rdx, [rip + .Lx102_5]
                                                                                        jmp   rax
.Lx102_4:
                                                                                        jmp   n92_match_alternate_α
.Lx102_5:
                                                                                        jmp   proc_PAT$3_ω
.Lx102_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx102_2:
                        test             rax, rax
                                                                                        je    .Lx102_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx102_7]
                        lea              rdx, [rip + .Lx102_8]
                                                                                        jmp   rax
.Lx102_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx102_2
.Lx102_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx102_2
.Lx102_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$3_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx102_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n92_match_alternate_α
.Lx102_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$3_ω
n91_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n92_match_alternate_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], 0
                                                                                        jmp   n93_match_any_α
n92_match_alternate_s0:
                                                                                        jmp   n92_match_alternate_as
n92_match_alternate_s1:
                                                                                        jmp   n92_match_alternate_as
n92_match_alternate_as:
                                                                                        jmp   proc_PAT$3_γ
n92_match_alternate_β:
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 0
                                                                                        je    n93_match_any_β
                                                                                        jmp   n94_match_sequence_β
n92_match_alternate_af:
                        add              dword ptr [rsp + 4], 1
                        mov              r14d, dword ptr [rsp + 0]
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 1
                                                                                        je    n94_match_sequence_α
                        add              rsp, 16
                                                                                        jmp   n91_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n93_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n92_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n92_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n92_match_alternate_s0
n93_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n92_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n94_match_sequence_α:
                                                                                        jmp   n95_match_lit_α
n94_match_sequence_as:
                                                                                        jmp   n92_match_alternate_s1
n94_match_sequence_β:
                                                                                        jmp   n99_match_any_β
n94_match_sequence_af:
                                                                                        jmp   n92_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n95_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n92_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 117
                                                                                        jne   n92_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n96_match_any_α
n95_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n92_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n96_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n95_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C5]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n95_match_lit_β
                        add              r14d, 1
                                                                                        jmp   n97_match_any_α
n96_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n95_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n97_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n96_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C5]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n96_match_any_β
                        add              r14d, 1
                                                                                        jmp   n98_match_any_α
n97_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n96_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n98_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n97_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C5]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n97_match_any_β
                        add              r14d, 1
                                                                                        jmp   n99_match_any_α
n98_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n97_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n99_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n98_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C5]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n98_match_any_β
                        add              r14d, 1
                                                                                        jmp   n92_match_alternate_s1
n99_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n98_match_any_β
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
8:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                                        jmp   qword ptr [rsp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, [rbp + 120]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
                        .global          proc_PAT$4_α
                        .global          proc_PAT$4_β
                        .global          proc_PAT$4_γ
                        .global          proc_PAT$4_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rbp + 208], r8
                        mov              dword ptr [rbp + 200], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + n119_match_sequence_β]
                        mov              qword ptr [rsp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n119_match_sequence_α:
                        mov              dword ptr [rsp + 16], r14d
                                                                                        jmp   n120_match_lit_α
n119_match_sequence_as:
                                                                                        jmp   proc_PAT$4_γ
n119_match_sequence_β:
                                                                                        jmp   n123_match_lit_β
n119_match_sequence_af:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n120_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$4_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   proc_PAT$4_ω
                        add              r14d, 1
                                                                                        jmp   n121_match_defer_α
n120_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx131_11
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 3
                                                                                        jne   .Lx131_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx131_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx131_10
.Lx131_9:
                        xor              eax, eax
.Lx131_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx131_11:
                        test             rax, rax
                                                                                        jz    .Lx131_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx131_4]
                        lea              rdx, [rip + .Lx131_5]
                                                                                        jmp   rax
.Lx131_4:
                                                                                        jmp   n122_match_arbno_α
.Lx131_5:
                                                                                        jmp   n120_match_lit_β
.Lx131_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx131_2
.Lx131_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx131_2
.Lx131_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n120_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx131_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n122_match_arbno_α
.Lx131_6:
                        add              rsp, 16
                                                                                        jmp   n120_match_lit_β
n121_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n122_match_arbno_α:
                        mov              dword ptr [rsp + 80], r14d
                        mov              dword ptr [rsp + 84], r14d
                        mov              dword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 104], rsp
                        mov              qword ptr [rsp + 96], 0
                                                                                        jmp   n123_match_lit_α
n122_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 84]
                        mov              rax, qword ptr [rsp + 96]
                        sub              rsp, 112
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 96], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                                                                                        jmp   n124_match_sequence_α
n122_match_arbno_as:
                        mov              eax, dword ptr [rsp + 96]
                        cmp              r14d, eax
                                                                                        je    n124_match_sequence_β
                        mov              rbp, qword ptr [rsp + 88]
                        mov              eax, dword ptr [rsp + 88]
                        add              eax, 1
                        mov              dword ptr [rsp + 88], eax
                        mov              dword ptr [rsp + 84], r14d
                                                                                        jmp   n123_match_lit_α
n122_match_arbno_af:
                        mov              rax, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 88]
                        lea              rsp, [rbp + 200]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rsp + 88]
                        test             ecx, ecx
                                                                                        jz    .Lx133_2
                        sub              ecx, 1
                        mov              dword ptr [rsp + 88], ecx
                        mov              qword ptr [rsp + 96], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n124_match_sequence_β
.Lx133_2:
                        mov              r14d, dword ptr [rsp + 80]
                        mov              rsp, qword ptr [rsp + 104]
                                                                                        jmp   n121_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n123_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n122_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   n122_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$4_γ
n123_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n122_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n124_match_sequence_α:
                        mov              dword ptr [rsp + 128], r14d
                                                                                        jmp   n126_match_defer_α
n124_match_sequence_as:
                                                                                        jmp   n122_match_arbno_as
n124_match_sequence_β:
                                                                                        jmp   n125_match_defer_β
n124_match_sequence_af:
                                                                                        jmp   n122_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n125_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx138_11
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 3
                                                                                        jne   .Lx138_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx138_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx138_10
.Lx138_9:
                        xor              eax, eax
.Lx138_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx138_11:
                        test             rax, rax
                                                                                        jz    .Lx138_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx138_4]
                        lea              rdx, [rip + .Lx138_5]
                                                                                        jmp   rax
.Lx138_4:
                                                                                        jmp   n122_match_arbno_as
.Lx138_5:
                                                                                        jmp   n126_match_defer_β
.Lx138_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx138_2:
                        test             rax, rax
                                                                                        je    .Lx138_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx138_7]
                        lea              rdx, [rip + .Lx138_8]
                                                                                        jmp   rax
.Lx138_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx138_2
.Lx138_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx138_2
.Lx138_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n126_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx138_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n122_match_arbno_as
.Lx138_6:
                        add              rsp, 16
                                                                                        jmp   n126_match_defer_β
n125_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n126_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx139_11
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 3
                                                                                        jne   .Lx139_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx139_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx139_10
.Lx139_9:
                        xor              eax, eax
.Lx139_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx139_11:
                        test             rax, rax
                                                                                        jz    .Lx139_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx139_4]
                        lea              rdx, [rip + .Lx139_5]
                                                                                        jmp   rax
.Lx139_4:
                                                                                        jmp   n125_match_defer_α
.Lx139_5:
                                                                                        jmp   n122_match_arbno_af
.Lx139_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx139_2
.Lx139_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx139_2
.Lx139_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n122_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx139_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n125_match_defer_α
.Lx139_6:
                        add              rsp, 16
                                                                                        jmp   n122_match_arbno_af
n126_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 208], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 200]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 208], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 200]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 200], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
8:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rsp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, [rbp + 216]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
                        .global          proc_PAT$5_α
                        .global          proc_PAT$5_β
                        .global          proc_PAT$5_γ
                        .global          proc_PAT$5_ω
                        sub              rsp, 160
                        mov              [rsp + 136], rcx
                        mov              [rsp + 144], rdx
                        mov              [rsp + 152], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rbp + 128], r8
                        mov              dword ptr [rbp + 120], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
                        lea              rax, [rip + proc_PAT$5_ω]
                        mov              qword ptr [rsp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n140_match_sequence_α:
                        mov              dword ptr [rsp + 16], r14d
                                                                                        jmp   n141_match_defer_α
n140_match_sequence_as:
                                                                                        jmp   proc_PAT$5_γ
n140_match_sequence_β:
                                                                                        jmp   n145_match_defer_β
n140_match_sequence_af:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n141_match_defer_α:
                        mov              qword ptr [rsp + 32], rsp
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx148_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx148_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx148_10
.Lx148_9:
                        xor              eax, eax
.Lx148_10:
                        test             rax, rax
                                                                                        jz    .Lx148_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx148_4]
                        lea              rdx, [rip + .Lx148_5]
                                                                                        jmp   rax
.Lx148_4:
                        mov              rsp, qword ptr [rsp + 32]
                                                                                        jmp   n142_match_defer_α
.Lx148_5:
                        mov              rsp, qword ptr [rsp + 32]
                                                                                        jmp   proc_PAT$5_ω
.Lx148_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx148_2:
                        test             rax, rax
                                                                                        je    .Lx148_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx148_7]
                        lea              rdx, [rip + .Lx148_8]
                                                                                        jmp   rax
.Lx148_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx148_2
.Lx148_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx148_2
.Lx148_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$5_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx148_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n142_match_defer_α
.Lx148_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_ω
n141_match_defer_β:
                        mov              rsp, qword ptr [rsp + 32]
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n142_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx149_11
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        cmp              eax, 3
                                                                                        jne   .Lx149_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx149_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx149_10
.Lx149_9:
                        xor              eax, eax
.Lx149_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx149_11:
                        test             rax, rax
                                                                                        jz    .Lx149_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx149_4]
                        lea              rdx, [rip + .Lx149_5]
                                                                                        jmp   rax
.Lx149_4:
                                                                                        jmp   n143_match_defer_α
.Lx149_5:
                                                                                        jmp   n141_match_defer_β
.Lx149_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx149_2
.Lx149_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx149_2
.Lx149_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n141_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx149_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n143_match_defer_α
.Lx149_6:
                        add              rsp, 16
                                                                                        jmp   n141_match_defer_β
n142_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n143_match_defer_α:
                        mov              qword ptr [rsp + 64], rsp
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx150_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx150_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx150_10
.Lx150_9:
                        xor              eax, eax
.Lx150_10:
                        test             rax, rax
                                                                                        jz    .Lx150_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx150_4]
                        lea              rdx, [rip + .Lx150_5]
                                                                                        jmp   rax
.Lx150_4:
                        mov              rsp, qword ptr [rsp + 64]
                                                                                        jmp   n144_match_lit_α
.Lx150_5:
                        mov              rsp, qword ptr [rsp + 64]
                                                                                        jmp   n142_match_defer_β
.Lx150_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx150_2:
                        test             rax, rax
                                                                                        je    .Lx150_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx150_7]
                        lea              rdx, [rip + .Lx150_8]
                                                                                        jmp   rax
.Lx150_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx150_2
.Lx150_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx150_2
.Lx150_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n142_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx150_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n144_match_lit_α
.Lx150_6:
                        add              rsp, 16
                                                                                        jmp   n142_match_defer_β
n143_match_defer_β:
                        mov              rsp, qword ptr [rsp + 64]
                                                                                        jmp   n142_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n144_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n143_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 58
                                                                                        jne   n143_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n145_match_defer_α
n144_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n143_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n145_match_defer_α:
                        mov              qword ptr [rsp + 96], rsp
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 3
                                                                                        jne   .Lx153_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx153_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx153_10
.Lx153_9:
                        xor              eax, eax
.Lx153_10:
                        test             rax, rax
                                                                                        jz    .Lx153_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx153_4]
                        lea              rdx, [rip + .Lx153_5]
                                                                                        jmp   rax
.Lx153_4:
                        mov              rsp, qword ptr [rsp + 96]
                                                                                        jmp   proc_PAT$5_γ
.Lx153_5:
                        mov              rsp, qword ptr [rsp + 96]
                                                                                        jmp   n144_match_lit_β
.Lx153_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx153_2
.Lx153_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx153_2
.Lx153_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n144_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx153_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   proc_PAT$5_γ
.Lx153_6:
                        add              rsp, 16
                                                                                        jmp   n144_match_lit_β
n145_match_defer_β:
                        mov              rsp, qword ptr [rsp + 96]
                                                                                        jmp   n144_match_lit_β
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
8:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_β:
                                                                                        jmp   qword ptr [rsp + 112]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$5_res]
                        push             rax
                        mov              rax, [rbp + 136]
                        mov              rbp, [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                        mov              rax, [rbp + 144]
                        lea              rsp, [rbp + 160]
                        mov              rbp, [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$6_α
proc_PAT$6_α:
                        .global          proc_PAT$6_α
                        .global          proc_PAT$6_β
                        .global          proc_PAT$6_γ
                        .global          proc_PAT$6_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rbp + 240], r8
                        mov              dword ptr [rbp + 232], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
                        lea              rax, [rip + n154_match_sequence_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n154_match_sequence_α:
                        mov              dword ptr [rsp + 16], r14d
                                                                                        jmp   n155_match_lit_α
n154_match_sequence_as:
                                                                                        jmp   proc_PAT$6_γ
n154_match_sequence_β:
                                                                                        jmp   n157_match_lit_β
n154_match_sequence_af:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
n155_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$6_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 123
                                                                                        jne   proc_PAT$6_ω
                        add              r14d, 1
                                                                                        jmp   n156_match_alternate_α
n155_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
n156_match_alternate_α:
                        mov              dword ptr [rsp + 48], r14d
                        mov              dword ptr [rsp + 52], 0
                                                                                        jmp   n158_match_sequence_α
n156_match_alternate_as:
                                                                                        jmp   n157_match_lit_α
n156_match_alternate_β:
                        mov              eax, dword ptr [rsp + 52]
                        cmp              eax, 0
                                                                                        je    n158_match_sequence_β
                                                                                        jmp   n159_match_defer_β
n156_match_alternate_af:
                        add              dword ptr [rsp + 52], 1
                        mov              r14d, dword ptr [rsp + 48]
                        mov              eax, dword ptr [rsp + 52]
                        cmp              eax, 1
                                                                                        je    n159_match_defer_α
                                                                                        jmp   n155_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n157_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n156_match_alternate_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 125
                                                                                        jne   n156_match_alternate_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$6_γ
n157_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n156_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n158_match_sequence_α:
                        mov              dword ptr [rsp + 64], r14d
                                                                                        jmp   n160_match_defer_α
n158_match_sequence_as:
                                                                                        jmp   n156_match_alternate_as
n158_match_sequence_β:
                                                                                        jmp   n161_match_arbno_β
n158_match_sequence_af:
                                                                                        jmp   n156_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n159_match_defer_α:
                        mov              qword ptr [rsp + 208], rsp
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx175_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx175_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx175_10
.Lx175_9:
                        xor              eax, eax
.Lx175_10:
                        test             rax, rax
                                                                                        jz    .Lx175_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx175_4]
                        lea              rdx, [rip + .Lx175_5]
                                                                                        jmp   rax
.Lx175_4:
                        mov              rsp, qword ptr [rsp + 208]
                                                                                        jmp   n156_match_alternate_as
.Lx175_5:
                        mov              rsp, qword ptr [rsp + 208]
                                                                                        jmp   n156_match_alternate_af
.Lx175_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx175_2:
                        test             rax, rax
                                                                                        je    .Lx175_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx175_7]
                        lea              rdx, [rip + .Lx175_8]
                                                                                        jmp   rax
.Lx175_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx175_2
.Lx175_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx175_2
.Lx175_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n156_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx175_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n156_match_alternate_as
.Lx175_6:
                        add              rsp, 16
                                                                                        jmp   n156_match_alternate_af
n159_match_defer_β:
                        mov              rsp, qword ptr [rsp + 208]
                                                                                        jmp   n156_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n160_match_defer_α:
                        mov              qword ptr [rsp + 80], rsp
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        cmp              eax, 3
                                                                                        jne   .Lx176_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx176_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx176_10
.Lx176_9:
                        xor              eax, eax
.Lx176_10:
                        test             rax, rax
                                                                                        jz    .Lx176_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx176_4]
                        lea              rdx, [rip + .Lx176_5]
                                                                                        jmp   rax
.Lx176_4:
                        mov              rsp, qword ptr [rsp + 80]
                                                                                        jmp   n161_match_arbno_α
.Lx176_5:
                        mov              rsp, qword ptr [rsp + 80]
                                                                                        jmp   n156_match_alternate_af
.Lx176_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx176_2:
                        test             rax, rax
                                                                                        je    .Lx176_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx176_7]
                        lea              rdx, [rip + .Lx176_8]
                                                                                        jmp   rax
.Lx176_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx176_2
.Lx176_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx176_2
.Lx176_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n156_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx176_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n161_match_arbno_α
.Lx176_6:
                        add              rsp, 16
                                                                                        jmp   n156_match_alternate_af
n160_match_defer_β:
                        mov              rsp, qword ptr [rsp + 80]
                                                                                        jmp   n156_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n161_match_arbno_α:
                        mov              dword ptr [rsp + 112], r14d
                        mov              dword ptr [rsp + 116], r14d
                        mov              dword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 136], rsp
                        mov              qword ptr [rsp + 128], 0
                                                                                        jmp   n156_match_alternate_as
n161_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 116]
                        mov              rax, qword ptr [rsp + 128]
                        sub              rsp, 208
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 128], rsp
                        mov              rbp, rsp
                        add              rbp, -8
                                                                                        jmp   n162_match_sequence_α
n161_match_arbno_as:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              r14d, eax
                                                                                        je    n162_match_sequence_β
                        mov              rbp, qword ptr [rsp + 8]
                        mov              eax, dword ptr [rsp + 120]
                        add              eax, 1
                        mov              dword ptr [rsp + 120], eax
                        mov              dword ptr [rsp + 116], r14d
                                                                                        jmp   n156_match_alternate_as
n161_match_arbno_af:
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 8]
                        lea              rsp, [rbp + 216]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rsp + 120]
                        test             ecx, ecx
                                                                                        jz    .Lx178_2
                        sub              ecx, 1
                        mov              dword ptr [rsp + 120], ecx
                        mov              qword ptr [rsp + 128], rax
                        lea              rbp, [rax + -8]
                                                                                        jmp   n162_match_sequence_β
.Lx178_2:
                        mov              r14d, dword ptr [rsp + 112]
                        mov              rsp, qword ptr [rsp + 136]
                                                                                        jmp   n160_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n162_match_sequence_α:
                        mov              dword ptr [rsp + 160], r14d
                                                                                        jmp   n164_match_lit_α
n162_match_sequence_as:
                                                                                        jmp   n161_match_arbno_as
n162_match_sequence_β:
                                                                                        jmp   n163_match_defer_β
n162_match_sequence_af:
                                                                                        jmp   n161_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n163_match_defer_α:
                        mov              qword ptr [rsp + 192], rsp
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        cmp              eax, 3
                                                                                        jne   .Lx181_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx181_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx181_10
.Lx181_9:
                        xor              eax, eax
.Lx181_10:
                        test             rax, rax
                                                                                        jz    .Lx181_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx181_4]
                        lea              rdx, [rip + .Lx181_5]
                                                                                        jmp   rax
.Lx181_4:
                        mov              rsp, qword ptr [rsp + 192]
                                                                                        jmp   n161_match_arbno_as
.Lx181_5:
                        mov              rsp, qword ptr [rsp + 192]
                                                                                        jmp   n164_match_lit_β
.Lx181_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx181_2:
                        test             rax, rax
                                                                                        je    .Lx181_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx181_7]
                        lea              rdx, [rip + .Lx181_8]
                                                                                        jmp   rax
.Lx181_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx181_2
.Lx181_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx181_2
.Lx181_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n164_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx181_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n161_match_arbno_as
.Lx181_6:
                        add              rsp, 16
                                                                                        jmp   n164_match_lit_β
n163_match_defer_β:
                        mov              rsp, qword ptr [rsp + 192]
                                                                                        jmp   n164_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n164_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n161_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n161_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n163_match_defer_α
n164_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n161_match_arbno_af
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 232]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 232]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 232], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_attempt
8:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_β:
                                                                                        jmp   qword ptr [rsp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$6_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$7_α
proc_PAT$7_α:
                        .global          proc_PAT$7_α
                        .global          proc_PAT$7_β
                        .global          proc_PAT$7_γ
                        .global          proc_PAT$7_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rbp + 240], r8
                        mov              dword ptr [rbp + 232], r14d
proc_PAT$7_attempt:
proc_PAT$7_α_body:
                        lea              rax, [rip + n184_match_sequence_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n184_match_sequence_α:
                        mov              dword ptr [rsp + 16], r14d
                                                                                        jmp   n185_match_lit_α
n184_match_sequence_as:
                                                                                        jmp   proc_PAT$7_γ
n184_match_sequence_β:
                                                                                        jmp   n187_match_lit_β
n184_match_sequence_af:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n185_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$7_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 91
                                                                                        jne   proc_PAT$7_ω
                        add              r14d, 1
                                                                                        jmp   n186_match_alternate_α
n185_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n186_match_alternate_α:
                        mov              dword ptr [rsp + 48], r14d
                        mov              dword ptr [rsp + 52], 0
                                                                                        jmp   n188_match_sequence_α
n186_match_alternate_as:
                                                                                        jmp   n187_match_lit_α
n186_match_alternate_β:
                        mov              eax, dword ptr [rsp + 52]
                        cmp              eax, 0
                                                                                        je    n188_match_sequence_β
                                                                                        jmp   n189_match_defer_β
n186_match_alternate_af:
                        add              dword ptr [rsp + 52], 1
                        mov              r14d, dword ptr [rsp + 48]
                        mov              eax, dword ptr [rsp + 52]
                        cmp              eax, 1
                                                                                        je    n189_match_defer_α
                                                                                        jmp   n185_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n187_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n186_match_alternate_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 93
                                                                                        jne   n186_match_alternate_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$7_γ
n187_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n186_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n188_match_sequence_α:
                        mov              dword ptr [rsp + 64], r14d
                                                                                        jmp   n190_match_defer_α
n188_match_sequence_as:
                                                                                        jmp   n186_match_alternate_as
n188_match_sequence_β:
                                                                                        jmp   n191_match_arbno_β
n188_match_sequence_af:
                                                                                        jmp   n186_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n189_match_defer_α:
                        mov              qword ptr [rsp + 208], rsp
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx205_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx205_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx205_10
.Lx205_9:
                        xor              eax, eax
.Lx205_10:
                        test             rax, rax
                                                                                        jz    .Lx205_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx205_4]
                        lea              rdx, [rip + .Lx205_5]
                                                                                        jmp   rax
.Lx205_4:
                        mov              rsp, qword ptr [rsp + 208]
                                                                                        jmp   n186_match_alternate_as
.Lx205_5:
                        mov              rsp, qword ptr [rsp + 208]
                                                                                        jmp   n186_match_alternate_af
.Lx205_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx205_2:
                        test             rax, rax
                                                                                        je    .Lx205_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx205_7]
                        lea              rdx, [rip + .Lx205_8]
                                                                                        jmp   rax
.Lx205_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx205_2
.Lx205_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx205_2
.Lx205_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n186_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx205_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n186_match_alternate_as
.Lx205_6:
                        add              rsp, 16
                                                                                        jmp   n186_match_alternate_af
n189_match_defer_β:
                        mov              rsp, qword ptr [rsp + 208]
                                                                                        jmp   n186_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n190_match_defer_α:
                        mov              qword ptr [rsp + 80], rsp
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 3
                                                                                        jne   .Lx206_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx206_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx206_10
.Lx206_9:
                        xor              eax, eax
.Lx206_10:
                        test             rax, rax
                                                                                        jz    .Lx206_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx206_4]
                        lea              rdx, [rip + .Lx206_5]
                                                                                        jmp   rax
.Lx206_4:
                        mov              rsp, qword ptr [rsp + 80]
                                                                                        jmp   n191_match_arbno_α
.Lx206_5:
                        mov              rsp, qword ptr [rsp + 80]
                                                                                        jmp   n186_match_alternate_af
.Lx206_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx206_2:
                        test             rax, rax
                                                                                        je    .Lx206_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx206_7]
                        lea              rdx, [rip + .Lx206_8]
                                                                                        jmp   rax
.Lx206_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx206_2
.Lx206_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx206_2
.Lx206_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n186_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx206_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n191_match_arbno_α
.Lx206_6:
                        add              rsp, 16
                                                                                        jmp   n186_match_alternate_af
n190_match_defer_β:
                        mov              rsp, qword ptr [rsp + 80]
                                                                                        jmp   n186_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n191_match_arbno_α:
                        mov              dword ptr [rsp + 112], r14d
                        mov              dword ptr [rsp + 116], r14d
                        mov              dword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 136], rsp
                        mov              qword ptr [rsp + 128], 0
                                                                                        jmp   n186_match_alternate_as
n191_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 116]
                        mov              rax, qword ptr [rsp + 128]
                        sub              rsp, 208
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 128], rsp
                        mov              rbp, rsp
                        add              rbp, -8
                                                                                        jmp   n192_match_sequence_α
n191_match_arbno_as:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              r14d, eax
                                                                                        je    n192_match_sequence_β
                        mov              rbp, qword ptr [rsp + 8]
                        mov              eax, dword ptr [rsp + 120]
                        add              eax, 1
                        mov              dword ptr [rsp + 120], eax
                        mov              dword ptr [rsp + 116], r14d
                                                                                        jmp   n186_match_alternate_as
n191_match_arbno_af:
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 8]
                        lea              rsp, [rbp + 216]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rsp + 120]
                        test             ecx, ecx
                                                                                        jz    .Lx208_2
                        sub              ecx, 1
                        mov              dword ptr [rsp + 120], ecx
                        mov              qword ptr [rsp + 128], rax
                        lea              rbp, [rax + -8]
                                                                                        jmp   n192_match_sequence_β
.Lx208_2:
                        mov              r14d, dword ptr [rsp + 112]
                        mov              rsp, qword ptr [rsp + 136]
                                                                                        jmp   n190_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n192_match_sequence_α:
                        mov              dword ptr [rsp + 160], r14d
                                                                                        jmp   n194_match_lit_α
n192_match_sequence_as:
                                                                                        jmp   n191_match_arbno_as
n192_match_sequence_β:
                                                                                        jmp   n193_match_defer_β
n192_match_sequence_af:
                                                                                        jmp   n191_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n193_match_defer_α:
                        mov              qword ptr [rsp + 192], rsp
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 3
                                                                                        jne   .Lx211_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx211_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx211_10
.Lx211_9:
                        xor              eax, eax
.Lx211_10:
                        test             rax, rax
                                                                                        jz    .Lx211_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx211_4]
                        lea              rdx, [rip + .Lx211_5]
                                                                                        jmp   rax
.Lx211_4:
                        mov              rsp, qword ptr [rsp + 192]
                                                                                        jmp   n191_match_arbno_as
.Lx211_5:
                        mov              rsp, qword ptr [rsp + 192]
                                                                                        jmp   n194_match_lit_β
.Lx211_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx211_2
.Lx211_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx211_2
.Lx211_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n194_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx211_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n191_match_arbno_as
.Lx211_6:
                        add              rsp, 16
                                                                                        jmp   n194_match_lit_β
n193_match_defer_β:
                        mov              rsp, qword ptr [rsp + 192]
                                                                                        jmp   n194_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n194_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n191_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n191_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n193_match_defer_α
n194_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n191_match_arbno_af
proc_PAT$7_scanhit:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 232]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$7_γ
proc_PAT$7_scanfail:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 232]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 232], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$7_attempt
8:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_β:
                                                                                        jmp   qword ptr [rsp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$7_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$8_α
proc_PAT$8_α:
                        .global          proc_PAT$8_α
                        .global          proc_PAT$8_β
                        .global          proc_PAT$8_γ
                        .global          proc_PAT$8_ω
                        sub              rsp, 160
                        mov              [rsp + 136], rcx
                        mov              [rsp + 144], rdx
                        mov              [rsp + 152], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rbp + 128], r8
                        mov              dword ptr [rbp + 120], r14d
proc_PAT$8_attempt:
proc_PAT$8_α_body:
                        lea              rax, [rip + n214_match_alternate_β]
                        mov              qword ptr [rsp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n214_match_alternate_α:
                        mov              dword ptr [rsp + 16], r14d
                        mov              dword ptr [rsp + 20], 0
                                                                                        jmp   n215_match_defer_α
n214_match_alternate_as:
                                                                                        jmp   proc_PAT$8_γ
n214_match_alternate_β:
                        mov              eax, dword ptr [rsp + 20]
                        cmp              eax, 0
                                                                                        je    n215_match_defer_β
                        cmp              eax, 1
                                                                                        je    n216_match_defer_β
                        cmp              eax, 2
                                                                                        je    n217_match_defer_β
                        cmp              eax, 3
                                                                                        je    n218_match_defer_β
                        cmp              eax, 4
                                                                                        je    n219_match_lit_β
                        cmp              eax, 5
                                                                                        je    n220_match_lit_β
                                                                                        jmp   n221_match_lit_β
n214_match_alternate_af:
                        add              dword ptr [rsp + 20], 1
                        mov              r14d, dword ptr [rsp + 16]
                        mov              eax, dword ptr [rsp + 20]
                        cmp              eax, 1
                                                                                        je    n216_match_defer_α
                        cmp              eax, 2
                                                                                        je    n217_match_defer_α
                        cmp              eax, 3
                                                                                        je    n218_match_defer_α
                        cmp              eax, 4
                                                                                        je    n219_match_lit_α
                        cmp              eax, 5
                                                                                        je    n220_match_lit_α
                        cmp              eax, 6
                                                                                        je    n221_match_lit_α
                                                                                        jmp   proc_PAT$8_ω
#-----------------------------------------------------------------------------------------------------------------------
n215_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx224_11
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        cmp              eax, 3
                                                                                        jne   .Lx224_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx224_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx224_10
.Lx224_9:
                        xor              eax, eax
.Lx224_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx224_11:
                        test             rax, rax
                                                                                        jz    .Lx224_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx224_4]
                        lea              rdx, [rip + .Lx224_5]
                                                                                        jmp   rax
.Lx224_4:
                                                                                        jmp   n214_match_alternate_as
.Lx224_5:
                                                                                        jmp   n214_match_alternate_af
.Lx224_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx224_2
.Lx224_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx224_2
.Lx224_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n214_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx224_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n214_match_alternate_as
.Lx224_6:
                        add              rsp, 16
                                                                                        jmp   n214_match_alternate_af
n215_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n216_match_defer_α:
                        mov              qword ptr [rsp + 48], rsp
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        cmp              eax, 3
                                                                                        jne   .Lx225_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx225_10
                        mov              rdi, rdx
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
                        mov              rsp, qword ptr [rsp + 48]
                                                                                        jmp   n214_match_alternate_as
.Lx225_5:
                        mov              rsp, qword ptr [rsp + 48]
                                                                                        jmp   n214_match_alternate_af
.Lx225_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx225_2
.Lx225_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx225_2
.Lx225_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n214_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx225_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n214_match_alternate_as
.Lx225_6:
                        add              rsp, 16
                                                                                        jmp   n214_match_alternate_af
n216_match_defer_β:
                        mov              rsp, qword ptr [rsp + 48]
                                                                                        jmp   n214_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n217_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx226_11
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        cmp              eax, 3
                                                                                        jne   .Lx226_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx226_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx226_10
.Lx226_9:
                        xor              eax, eax
.Lx226_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx226_11:
                        test             rax, rax
                                                                                        jz    .Lx226_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx226_4]
                        lea              rdx, [rip + .Lx226_5]
                                                                                        jmp   rax
.Lx226_4:
                                                                                        jmp   n214_match_alternate_as
.Lx226_5:
                                                                                        jmp   n214_match_alternate_af
.Lx226_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx226_2:
                        test             rax, rax
                                                                                        je    .Lx226_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx226_7]
                        lea              rdx, [rip + .Lx226_8]
                                                                                        jmp   rax
.Lx226_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx226_2
.Lx226_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx226_2
.Lx226_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n214_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx226_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n214_match_alternate_as
.Lx226_6:
                        add              rsp, 16
                                                                                        jmp   n214_match_alternate_af
n217_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n218_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx227_11
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        cmp              eax, 3
                                                                                        jne   .Lx227_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx227_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx227_10
.Lx227_9:
                        xor              eax, eax
.Lx227_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx227_11:
                        test             rax, rax
                                                                                        jz    .Lx227_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx227_4]
                        lea              rdx, [rip + .Lx227_5]
                                                                                        jmp   rax
.Lx227_4:
                                                                                        jmp   n214_match_alternate_as
.Lx227_5:
                                                                                        jmp   n214_match_alternate_af
.Lx227_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx227_2
.Lx227_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx227_2
.Lx227_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n214_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx227_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n214_match_alternate_as
.Lx227_6:
                        add              rsp, 16
                                                                                        jmp   n214_match_alternate_af
n218_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n219_match_lit_α:
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d
                                                                                        jg    n214_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1702195828
                                                                                        jne   n214_match_alternate_af
                        add              r14d, 4
                                                                                        jmp   n214_match_alternate_as
n219_match_lit_β:
                        sub              r14d, 4
                                                                                        jmp   n214_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n220_match_lit_α:
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d
                                                                                        jg    n214_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1936482662
                                                                                        jne   n214_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101
                                                                                        jne   n214_match_alternate_af
                        add              r14d, 5
                                                                                        jmp   n214_match_alternate_as
n220_match_lit_β:
                        sub              r14d, 5
                                                                                        jmp   n214_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n221_match_lit_α:
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d
                                                                                        jg    n214_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819047278
                                                                                        jne   n214_match_alternate_af
                        add              r14d, 4
                                                                                        jmp   n214_match_alternate_as
n221_match_lit_β:
                        sub              r14d, 4
                                                                                        jmp   n214_match_alternate_af
proc_PAT$8_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$8_γ
proc_PAT$8_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$8_attempt
8:
                                                                                        jmp   proc_PAT$8_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$8_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$8_β:
                                                                                        jmp   qword ptr [rsp + 112]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$8_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$8_res]
                        push             rax
                        mov              rax, [rbp + 136]
                        mov              rbp, [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$8_ω:
                        mov              rax, [rbp + 144]
                        lea              rsp, [rbp + 160]
                        mov              rbp, [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$9_α
proc_PAT$9_α:
                        .global          proc_PAT$9_α
                        .global          proc_PAT$9_β
                        .global          proc_PAT$9_γ
                        .global          proc_PAT$9_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rbp + 96], r8
                        mov              dword ptr [rbp + 88], r14d
proc_PAT$9_attempt:
proc_PAT$9_α_body:
                        lea              rax, [rip + proc_PAT$9_ω]
                        mov              qword ptr [rsp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n234_match_sequence_α:
                        mov              dword ptr [rsp + 16], r14d
                                                                                        jmp   n235_match_defer_α
n234_match_sequence_as:
                                                                                        jmp   proc_PAT$9_γ
n234_match_sequence_β:
                                                                                        jmp   n237_match_defer_β
n234_match_sequence_af:
                                                                                        jmp   proc_PAT$9_ω
#-----------------------------------------------------------------------------------------------------------------------
n235_match_defer_α:
                        mov              qword ptr [rsp + 32], rsp
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx240_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx240_10
                        mov              rdi, rdx
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
                        mov              rsp, qword ptr [rsp + 32]
                                                                                        jmp   n236_match_defer_α
.Lx240_5:
                        mov              rsp, qword ptr [rsp + 32]
                                                                                        jmp   proc_PAT$9_ω
.Lx240_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx240_2
.Lx240_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx240_2
.Lx240_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$9_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx240_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n236_match_defer_α
.Lx240_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$9_ω
n235_match_defer_β:
                        mov              rsp, qword ptr [rsp + 32]
                                                                                        jmp   proc_PAT$9_ω
#-----------------------------------------------------------------------------------------------------------------------
n236_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx241_11
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        cmp              eax, 3
                                                                                        jne   .Lx241_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx241_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx241_10
.Lx241_9:
                        xor              eax, eax
.Lx241_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx241_11:
                        test             rax, rax
                                                                                        jz    .Lx241_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx241_4]
                        lea              rdx, [rip + .Lx241_5]
                                                                                        jmp   rax
.Lx241_4:
                                                                                        jmp   n237_match_defer_α
.Lx241_5:
                                                                                        jmp   n235_match_defer_β
.Lx241_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx241_2:
                        test             rax, rax
                                                                                        je    .Lx241_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx241_7]
                        lea              rdx, [rip + .Lx241_8]
                                                                                        jmp   rax
.Lx241_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx241_2
.Lx241_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx241_2
.Lx241_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n235_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx241_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n237_match_defer_α
.Lx241_6:
                        add              rsp, 16
                                                                                        jmp   n235_match_defer_β
n236_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n237_match_defer_α:
                        mov              qword ptr [rsp + 64], rsp
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx242_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx242_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx242_10
.Lx242_9:
                        xor              eax, eax
.Lx242_10:
                        test             rax, rax
                                                                                        jz    .Lx242_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx242_4]
                        lea              rdx, [rip + .Lx242_5]
                                                                                        jmp   rax
.Lx242_4:
                        mov              rsp, qword ptr [rsp + 64]
                                                                                        jmp   proc_PAT$9_γ
.Lx242_5:
                        mov              rsp, qword ptr [rsp + 64]
                                                                                        jmp   n236_match_defer_β
.Lx242_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx242_2:
                        test             rax, rax
                                                                                        je    .Lx242_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx242_7]
                        lea              rdx, [rip + .Lx242_8]
                                                                                        jmp   rax
.Lx242_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx242_2
.Lx242_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx242_2
.Lx242_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n236_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx242_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   proc_PAT$9_γ
.Lx242_6:
                        add              rsp, 16
                                                                                        jmp   n236_match_defer_β
n237_match_defer_β:
                        mov              rsp, qword ptr [rsp + 64]
                                                                                        jmp   n236_match_defer_β
proc_PAT$9_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$9_γ
proc_PAT$9_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 88], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$9_attempt
8:
                                                                                        jmp   proc_PAT$9_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$9_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$9_β:
                                                                                        jmp   qword ptr [rsp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$9_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$9_res]
                        push             rax
                        mov              rax, [rbp + 104]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$9_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$10_α
proc_PAT$10_α:
                        .global          proc_PAT$10_α
                        .global          proc_PAT$10_β
                        .global          proc_PAT$10_γ
                        .global          proc_PAT$10_ω
                        sub              rsp, 144
                        mov              [rsp + 120], rcx
                        mov              [rsp + 128], rdx
                        mov              [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rbp + 112], r8
                        mov              dword ptr [rbp + 104], r14d
proc_PAT$10_attempt:
proc_PAT$10_α_body:
                        lea              rax, [rip + n243_match_sequence_β]
                        mov              qword ptr [rsp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n243_match_sequence_α:
                        mov              dword ptr [rsp + 16], r14d
                                                                                        jmp   n244_lit_integer_α
n243_match_sequence_as:
                                                                                        jmp   proc_PAT$10_γ
n243_match_sequence_β:
                                                                                        jmp   n248_match_rpos_β
n243_match_sequence_af:
                                                                                        jmp   proc_PAT$10_ω
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_integer_α:
                        mov              qword ptr [rsp + 48], 6
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n245_match_pos_α
n244_lit_integer_β:
                                                                                        jmp   proc_PAT$10_ω
.Lx251_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n245_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$10_ω
                                                                                        jmp   n246_match_defer_α
n245_match_pos_β:
                                                                                        jmp   proc_PAT$10_ω
#-----------------------------------------------------------------------------------------------------------------------
n246_match_defer_α:
                        mov              qword ptr [rsp + 64], rsp
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 3
                                                                                        jne   .Lx253_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx253_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx253_10
.Lx253_9:
                        xor              eax, eax
.Lx253_10:
                        test             rax, rax
                                                                                        jz    .Lx253_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx253_4]
                        lea              rdx, [rip + .Lx253_5]
                                                                                        jmp   rax
.Lx253_4:
                        mov              rsp, qword ptr [rsp + 64]
                                                                                        jmp   n247_lit_integer_α
.Lx253_5:
                        mov              rsp, qword ptr [rsp + 64]
                                                                                        jmp   proc_PAT$10_ω
.Lx253_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx253_2:
                        test             rax, rax
                                                                                        je    .Lx253_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx253_7]
                        lea              rdx, [rip + .Lx253_8]
                                                                                        jmp   rax
.Lx253_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx253_2
.Lx253_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx253_2
.Lx253_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$10_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx253_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n247_lit_integer_α
.Lx253_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$10_ω
n246_match_defer_β:
                        mov              rsp, qword ptr [rsp + 64]
                                                                                        jmp   proc_PAT$10_ω
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_integer_α:
                        mov              qword ptr [rsp + 80], 6
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n248_match_rpos_α
n247_lit_integer_β:
                                                                                        jmp   n246_match_defer_β
.Lx254_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n248_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n246_match_defer_β
                                                                                        jmp   proc_PAT$10_γ
n248_match_rpos_β:
                                                                                        jmp   n246_match_defer_β
proc_PAT$10_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$10_γ
proc_PAT$10_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$10_attempt
8:
                                                                                        jmp   proc_PAT$10_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$10_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$10_β:
                                                                                        jmp   qword ptr [rsp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$10_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$10_res]
                        push             rax
                        mov              rax, [rbp + 120]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$10_ω:
                        mov              rax, [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, [rbp + 136]
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
                        mov              esi, 64
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
                        mov              esi, 240
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
                        mov              esi, 240
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
                        mov              esi, 240
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
                        mov              esi, 128
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
                        mov              r12, qword ptr [1879048192]
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 1320
                        mov              rdi, rsp
                        mov              ecx, 1320
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1312], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#                 bslash         =  CHAR(92)
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_integer_α:
                        mov              qword ptr [rsp + 64], 6
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n258_call_α
.Lx318_0:
                        .quad            92
#-----------------------------------------------------------------------------------------------------------------------
n257_goto_α:
                                                                                        jmp   n259_lit_string_α
n257_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n258_call_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lbynamefn97:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn97]
                        lea              rsi, [rsp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n261_lit_string_α
                                                                                        jmp   n260_assign_α
n258_call_β:
                                                                                        jmp   n261_lit_string_α
#=======================================================================================================================
# fail            OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n262_assign_α
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n260_assign_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n261_lit_string_α
#=======================================================================================================================
#                 ws             =  FENCE(SPAN(' ' CHAR(9) CHAR(10) CHAR(13)) | '')
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:
                        mov              qword ptr [rsp + 128], 1
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n263_call_α
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n262_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx324_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n263_call_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn326:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn326]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n265_lit_string_α
                                                                                        jmp   n264_assign_α
n263_call_β:
                                                                                        jmp   n265_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n264_assign_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n265_lit_string_α
#=======================================================================================================================
#                 hex            =  '0123456789abcdefABCDEF'
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n266_assign_α
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "0123456789abcdefABCDEF"
#-----------------------------------------------------------------------------------------------------------------------
n266_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n267_lit_string_α
#=======================================================================================================================
#                 dig            =  '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n268_assign_α
.Lx330_0:
                        .quad            .Lx330_0_s
.Lx330_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n268_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n269_lit_string_α
#=======================================================================================================================
#                 jescape        =  bslash
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:
                        mov              qword ptr [rsp + 224], 1
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n270_call_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n270_call_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn334:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn334]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n272_lit_string_α
                                                                                        jmp   n271_assign_α
n270_call_β:
                                                                                        jmp   n272_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n271_assign_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n272_lit_string_α
#=======================================================================================================================
#                 jchunk         =  BREAK('"\' CHAR(10) CHAR(13))
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_string_α:
                        mov              qword ptr [rsp + 288], 1
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n273_call_α
.Lx336_0:
                        .quad            .Lx336_0_s
.Lx336_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n273_call_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn338:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn338]
                        lea              rsi, [rsp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n275_lit_string_α
                                                                                        jmp   n274_assign_α
n273_call_β:
                                                                                        jmp   n275_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n274_assign_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n275_lit_string_α
#=======================================================================================================================
#                 jstring        =  '"' jchunk ARBNO(jescape jchunk) '"'
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:
                        mov              qword ptr [rsp + 352], 1
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n276_call_α
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n276_call_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn342:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn342]
                        lea              rsi, [rsp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n278_lit_string_α
                                                                                        jmp   n277_assign_α
n276_call_β:
                                                                                        jmp   n278_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n277_assign_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n278_lit_string_α
#=======================================================================================================================
#                 jnumber        =  FENCE('-' | '')
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:
                        mov              qword ptr [rsp + 416], 1
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n279_call_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n279_call_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn346:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn346]
                        lea              rsi, [rsp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n281_lit_string_α
                                                                                        jmp   n280_assign_α
n279_call_β:
                                                                                        jmp   n281_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n280_assign_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n281_lit_string_α
#=======================================================================================================================
#                 jmember        =  ws jstring ws ':' *jelement
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:
                        mov              qword ptr [rsp + 480], 1
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rsp + 488], rax
                                                                                        jmp   n282_call_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n282_call_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn350:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn350]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n284_lit_string_α
                                                                                        jmp   n283_assign_α
n282_call_β:
                                                                                        jmp   n284_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n283_assign_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n284_lit_string_α
#=======================================================================================================================
#                 jobject        =  '{' ( jmember ARBNO(',' jmember) | ws ) '}'
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:
                        mov              qword ptr [rsp + 544], 1
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n285_call_α
.Lx352_0:
                        .quad            .Lx352_0_s
.Lx352_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n285_call_α:
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn354:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn354]
                        lea              rsi, [rsp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n287_lit_string_α
                                                                                        jmp   n286_assign_α
n285_call_β:
                                                                                        jmp   n287_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n286_assign_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n287_lit_string_α
#=======================================================================================================================
#                 jarray         =  '[' ( *jelement ARBNO(',' *jelement) | ws ) ']'
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:
                        mov              qword ptr [rsp + 608], 1
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n288_call_α
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n288_call_α:
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn358:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn358]
                        lea              rsi, [rsp + 576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n290_lit_string_α
                                                                                        jmp   n289_assign_α
n288_call_β:
                                                                                        jmp   n290_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n289_assign_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n290_lit_string_α
#=======================================================================================================================
#                 jvalue         =  jstring | jnumber | jobject | jarray
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:
                        mov              qword ptr [rsp + 672], 1
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rsp + 680], rax
                                                                                        jmp   n291_call_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "PAT$8"
#-----------------------------------------------------------------------------------------------------------------------
n291_call_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn362:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn362]
                        lea              rsi, [rsp + 640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n293_lit_string_α
                                                                                        jmp   n292_assign_α
n291_call_β:
                                                                                        jmp   n293_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n292_assign_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n293_lit_string_α
#=======================================================================================================================
#                 jelement       =  ws *jvalue ws
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:
                        mov              qword ptr [rsp + 736], 1
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rsp + 744], rax
                                                                                        jmp   n294_call_α
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          "PAT$9"
#-----------------------------------------------------------------------------------------------------------------------
n294_call_α:
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn366:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn366]
                        lea              rsi, [rsp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n296_lit_string_α
                                                                                        jmp   n295_assign_α
n294_call_β:
                                                                                        jmp   n296_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n295_assign_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [1879052480], rax
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n296_lit_string_α
#=======================================================================================================================
#                 json           =  POS(0) jelement RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_string_α:
                        mov              qword ptr [rsp + 800], 1
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rsp + 808], rax
                                                                                        jmp   n297_call_α
.Lx368_0:
                        .quad            .Lx368_0_s
.Lx368_0_s:
                        .string          "PAT$10"
#-----------------------------------------------------------------------------------------------------------------------
n297_call_α:
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        .section         .rodata
.Lrkfn370:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn370]
                        lea              rsi, [rsp + 768]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n299_lit_string_α
                                                                                        jmp   n298_assign_α
n297_call_β:
                                                                                        jmp   n299_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n298_assign_α:
                        mov              rax, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n299_lit_string_α
#=======================================================================================================================
#                 &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_string_α:
                        mov              qword ptr [rsp + 880], 1
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rsp + 888], rax
                                                                                        jmp   n300_lit_integer_α
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_integer_α:
                        mov              qword ptr [rsp + 896], 6
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 904], rax
                                                                                        jmp   n301_call_α
.Lx373_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n301_call_α:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn375:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn375]
                        lea              rsi, [rsp + 832]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n302_lit_string_α
                                                                                        jmp   n302_lit_string_α
n301_call_β:
                                                                                        jmp   n302_lit_string_α
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r1000000]')
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_string_α:
                        mov              qword ptr [rsp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rsp + 1048], rax
                                                                                        jmp   n303_call_α
.Lx376_0:
                        .quad            .Lx376_0_s
.Lx376_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n303_call_α:
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax
                        .section         .rodata
.Lrkfn378:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn378]
                        lea              rsi, [rsp + 1008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n305_var_α
                                                                                        jmp   n304_lit_integer_α
n303_call_β:
                                                                                        jmp   n305_var_α
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_integer_α:
                        mov              qword ptr [rsp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 1064], rax
                                                                                        jmp   n306_lit_string_α
.Lx379_0:
                        .quad            9
#=======================================================================================================================
#                 src             =   INPUT                       :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx380_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx380_240
                        add              rsp, 16
                                                                                        jmp   n259_lit_string_α
.Lx380_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n307_assign_α
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:
                        mov              qword ptr [rsp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rsp + 1080], rax
                                                                                        jmp   n308_call_α
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          "[-f0 -r1000000]"
#-----------------------------------------------------------------------------------------------------------------------
n307_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052512], rax
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n309_var_α
#-----------------------------------------------------------------------------------------------------------------------
n308_call_α:
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 968], rax
                        .section         .rodata
.Lbynamefn147:          .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn147]
                        lea              rsi, [rsp + 928]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n305_var_α
                                                                                        jmp   n305_var_α
n308_call_β:
                                                                                        jmp   n305_var_α
#=======================================================================================================================
#                 src             json                            :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                                                                                        jmp   n310_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n310_match_head_α:
                        mov              qword ptr [rsp + 1160], rbp
                        mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rsp + 1152], r12
                        mov              qword ptr [rsp + 1136], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 1128], rax
                        mov              dword ptr [rsp + 1120], 0
.Lx386_0:
                        mov              r14d, dword ptr [rsp + 1120]
                                                                                        jmp   n311_match_defer_α
n310_match_head_β:
                        add              dword ptr [rsp + 1120], 1
                        mov              eax, dword ptr [rsp + 1120]
                        cmp              eax, r15d
                                                                                        jg    .Lx386_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx386_1
                                                                                        jmp   .Lx386_0
.Lx386_1:
                        mov              rax, qword ptr [rsp + 1128]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 1136]
                        mov              r12, qword ptr [rsp + 1152]
                        mov              rbp, qword ptr [rsp + 1160]
                                                                                        jmp   n259_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n311_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx387_11
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        cmp              eax, 3
                                                                                        jne   .Lx387_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx387_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx387_10
.Lx387_9:
                        xor              eax, eax
.Lx387_10:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rax
.Lx387_11:
                        test             rax, rax
                                                                                        jz    .Lx387_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx387_4]
                        lea              rdx, [rip + .Lx387_5]
                                                                                        jmp   rax
.Lx387_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rsp + 1120], eax
                                                                                        jmp   n312_match_release_α
.Lx387_5:
                                                                                        jmp   n310_match_head_β
.Lx387_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S11]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx387_2:
                        test             rax, rax
                                                                                        je    .Lx387_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx387_7]
                        lea              rdx, [rip + .Lx387_8]
                                                                                        jmp   rax
.Lx387_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx387_2
.Lx387_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx387_2
.Lx387_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n310_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx387_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n312_match_release_α
.Lx387_6:
                        add              rsp, 16
                                                                                        jmp   n310_match_head_β
n311_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n312_match_release_α:
                        mov              rax, qword ptr [rsp + 1128]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 1136]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx389_1:
                        test             rax, rax
                                                                                        je    .Lx389_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx389_3]
                        lea              rdx, [rip + .Lx389_4]
                                                                                        jmp   rax
.Lx389_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx389_1
.Lx389_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx389_1
.Lx389_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rsp + 1152]
                        mov              rbp, qword ptr [rsp + 1160]
                                                                                        jmp   n313_lit_string_α
#=======================================================================================================================
#                 OUTPUT          =  'matched bytes=' SIZE(src)   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_string_α:
                        mov              qword ptr [rsp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rsp + 1224], rax
                                                                                        jmp   n314_var_α
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                                                                                        jmp   n315_call_α
#-----------------------------------------------------------------------------------------------------------------------
n315_call_α:
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1256], rax
                        .section         .rodata
.Lrkfn393:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn393]
                        lea              rsi, [rsp + 1248]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    main_γ
                                                                                        jmp   n316_binop_α
n315_call_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n316_binop_α:
                        mov              rdi, qword ptr [rsp + 1216]
                        mov              rsi, qword ptr [rsp + 1224]
                        mov              rdx, qword ptr [rsp + 1232]
                        mov              rcx, qword ptr [rsp + 1240]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                                                                                        jmp   n317_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n317_assign_α:
                        mov              rsi, qword ptr [rsp + 1200]
                        mov              rdx, qword ptr [rsp + 1208]
                        mov              rdi, qword ptr [rip + .Lx395_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1312]
                        add              rsp, 1320
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1312]
                        add              rsp, 1320
                        ret
                        .section         .rodata
.S0:                    .string          "bslash"
.S1:                    .string          "jchunk"
.S2:                    .string          "jescape"
.S3:                    .string          "ws"
.S4:                    .string          "jstring"
.S5:                    .string          "jelement"
.S6:                    .string          "jmember"
.S7:                    .string          "jnumber"
.S8:                    .string          "jobject"
.S9:                    .string          "jarray"
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
.C5:
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
                        .text
                        .section         .note.GNU-stack,"",@progbits
