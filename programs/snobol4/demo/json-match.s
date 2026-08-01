                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
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
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
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
                                                                                        jmp   proc_PAT$0_attempt
8:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        mov              qword ptr [rsp + 48], r8
                        mov              dword ptr [rsp + 40], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n9_match_break_β]
                        mov              qword ptr [rbp + 16], rax
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
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 40]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 40]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 40], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
8:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        mov              qword ptr [rsp + 384], r8
                        mov              dword ptr [rsp + 376], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + proc_PAT$2_ω]
                        mov              qword ptr [rbp + 352], rax
#-----------------------------------------------------------------------------------------------------------------------
n12_match_fence1_α:
                        mov              qword ptr [rbp + 304], rsp
                                                                                        jmp   n35_match_alternate_α
n12_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 304], rbp
                                                                                        jmp   n13_match_alternate_α
n12_match_fence1_β:
n12_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 304]
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_match_alternate_α:
                        mov              dword ptr [rbp + 208], r14d
                        lea              rax, [rip + .Lx41_21]
                        mov              qword ptr [rbp + 224], rax
                                                                                        jmp   n34_match_lit_α
.Lx41_21:
                        lea              rax, [rip + .Lx41_19]
                        mov              qword ptr [rbp + 224], rax
                                                                                        jmp   n29_match_any_α
n13_match_alternate_s0:
                        lea              rax, [rip + .Lx41_40]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n13_match_alternate_as
n13_match_alternate_s1:
                        lea              rax, [rip + .Lx41_41]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n13_match_alternate_as
.Lx41_40:
                                                                                        jmp   n34_match_lit_β
.Lx41_41:
                                                                                        jmp   n30_match_fence1_β
n13_match_alternate_as:
                                                                                        jmp   n14_match_fence1_α
n13_match_alternate_β:
                        mov              rax, qword ptr [rbp + 216]
                                                                                        jmp   rax
n13_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 208]
                        mov              rax, qword ptr [rbp + 224]
                                                                                        jmp   rax
.Lx41_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_match_fence1_α:
                        mov              qword ptr [rbp + 128], rsp
                                                                                        jmp   n24_match_alternate_α
n14_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 128], rbp
                                                                                        jmp   n15_match_fence1_α
n14_match_fence1_β:
n14_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_match_fence1_α:
                        mov              qword ptr [rbp + 16], rsp
                                                                                        jmp   n16_match_alternate_α
n15_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 16], rbp
                                                                                        jmp   proc_PAT$2_γ
n15_match_fence1_β:
n15_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 16]
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx47_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n18_match_any_α
.Lx47_21:
                        lea              rax, [rip + .Lx47_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n17_match_lit_α
n16_match_alternate_s0:
                        lea              rax, [rip + .Lx47_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n16_match_alternate_as
n16_match_alternate_s1:
                        lea              rax, [rip + .Lx47_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n16_match_alternate_as
.Lx47_40:
                                                                                        jmp   n20_match_span_β
.Lx47_41:
                                                                                        jmp   n17_match_lit_β
n16_match_alternate_as:
                                                                                        jmp   n15_match_fence1_as
n16_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n16_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx47_19:
                                                                                        jmp   n15_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n17_match_lit_α:
                                                                                        jmp   n16_match_alternate_s1
n17_match_lit_β:
                                                                                        jmp   n16_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n18_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n16_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 101
                                                                                        je    .Lx51_0
                        cmp              esi, 69
                                                                                        je    .Lx51_0
                                                                                        jmp   n16_match_alternate_af
.Lx51_0:
                        add              r14d, 1
                                                                                        jmp   n19_match_fence1_α
n18_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n16_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n19_match_fence1_α:
                        mov              qword ptr [rbp + 64], rsp
                                                                                        jmp   n21_match_alternate_α
n19_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 64], rbp
                                                                                        jmp   n20_match_span_α
n19_match_fence1_β:
n19_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n16_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n20_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx55_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx55_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx55_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx55_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx55_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx55_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx55_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx55_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx55_1
                        add              ecx, 1
                                                                                        jmp   .Lx55_0
.Lx55_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx55_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$2_scanfail
.Lx55_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n16_match_alternate_s0
n20_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   proc_PAT$2_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n21_match_alternate_α:
                        mov              dword ptr [rbp + 80], r14d
                        lea              rax, [rip + .Lx57_21]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   n23_match_any_α
.Lx57_21:
                        lea              rax, [rip + .Lx57_19]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   n22_match_lit_α
n21_match_alternate_s0:
                        lea              rax, [rip + .Lx57_40]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n21_match_alternate_as
n21_match_alternate_s1:
                        lea              rax, [rip + .Lx57_41]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n21_match_alternate_as
.Lx57_40:
                                                                                        jmp   n23_match_any_β
.Lx57_41:
                                                                                        jmp   n22_match_lit_β
n21_match_alternate_as:
                                                                                        jmp   n19_match_fence1_as
n21_match_alternate_β:
                        mov              rax, qword ptr [rbp + 88]
                                                                                        jmp   rax
n21_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rax, qword ptr [rbp + 96]
                                                                                        jmp   rax
.Lx57_19:
                                                                                        jmp   n19_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n22_match_lit_α:
                                                                                        jmp   n21_match_alternate_s1
n22_match_lit_β:
                                                                                        jmp   n21_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n23_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n21_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43
                                                                                        je    .Lx61_0
                        cmp              esi, 45
                                                                                        je    .Lx61_0
                                                                                        jmp   n21_match_alternate_af
.Lx61_0:
                        add              r14d, 1
                                                                                        jmp   n21_match_alternate_s0
n23_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n21_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n24_match_alternate_α:
                        mov              dword ptr [rbp + 144], r14d
                        lea              rax, [rip + .Lx63_21]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n26_match_sequence_α
.Lx63_21:
                        lea              rax, [rip + .Lx63_19]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n25_match_lit_α
n24_match_alternate_s0:
                        lea              rax, [rip + .Lx63_40]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n24_match_alternate_as
n24_match_alternate_s1:
                        lea              rax, [rip + .Lx63_41]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n24_match_alternate_as
.Lx63_40:
                                                                                        jmp   n26_match_sequence_β
.Lx63_41:
                                                                                        jmp   n25_match_lit_β
n24_match_alternate_as:
                                                                                        jmp   n14_match_fence1_as
n24_match_alternate_β:
                        mov              rax, qword ptr [rbp + 152]
                                                                                        jmp   rax
n24_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 144]
                        mov              rax, qword ptr [rbp + 160]
                                                                                        jmp   rax
.Lx63_19:
                                                                                        jmp   n14_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n25_match_lit_α:
                                                                                        jmp   n24_match_alternate_s1
n25_match_lit_β:
                                                                                        jmp   n24_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n26_match_sequence_α:
                                                                                        jmp   n28_match_lit_α
n26_match_sequence_as:
                                                                                        jmp   n24_match_alternate_s0
n26_match_sequence_β:
                                                                                        jmp   n27_match_span_β
n26_match_sequence_af:
                                                                                        jmp   n24_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n27_match_span_α:
                        lea              rdi, [rip + .C2]
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
                                                                                        jle   n28_match_lit_β
                        mov              dword ptr [rbp + 196], r14d
                        mov              r14d, ecx
                                                                                        jmp   n24_match_alternate_s0
n27_match_span_β:
                        mov              r14d, dword ptr [rbp + 196]
                                                                                        jmp   n28_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n28_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n24_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 46
                                                                                        jne   n24_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n27_match_span_α
n28_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n24_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n29_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n13_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C3]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n13_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n30_match_fence1_α
n29_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n13_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n30_match_fence1_α:
                        mov              qword ptr [rbp + 240], rsp
                                                                                        jmp   n31_match_alternate_α
n30_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 240], rbp
                                                                                        jmp   n13_match_alternate_s1
n30_match_fence1_β:
n30_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 240]
                                                                                        jmp   n13_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n31_match_alternate_α:
                        mov              dword ptr [rbp + 256], r14d
                        lea              rax, [rip + .Lx77_21]
                        mov              qword ptr [rbp + 272], rax
                                                                                        jmp   n33_match_span_α
.Lx77_21:
                        lea              rax, [rip + .Lx77_19]
                        mov              qword ptr [rbp + 272], rax
                                                                                        jmp   n32_match_lit_α
n31_match_alternate_s0:
                        lea              rax, [rip + .Lx77_40]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n31_match_alternate_as
n31_match_alternate_s1:
                        lea              rax, [rip + .Lx77_41]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n31_match_alternate_as
.Lx77_40:
                                                                                        jmp   n33_match_span_β
.Lx77_41:
                                                                                        jmp   n32_match_lit_β
n31_match_alternate_as:
                                                                                        jmp   n30_match_fence1_as
n31_match_alternate_β:
                        mov              rax, qword ptr [rbp + 264]
                                                                                        jmp   rax
n31_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 256]
                        mov              rax, qword ptr [rbp + 272]
                                                                                        jmp   rax
.Lx77_19:
                                                                                        jmp   n30_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n32_match_lit_α:
                                                                                        jmp   n31_match_alternate_s1
n32_match_lit_β:
                                                                                        jmp   n31_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n33_match_span_α:
                        lea              rdi, [rip + .C2]
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
                                                                                        jle   n31_match_alternate_af
                        mov              dword ptr [rbp + 292], r14d
                        mov              r14d, ecx
                                                                                        jmp   n31_match_alternate_s0
n33_match_span_β:
                        mov              r14d, dword ptr [rbp + 292]
                                                                                        jmp   n31_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n34_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n13_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 48
                                                                                        jne   n13_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n13_match_alternate_s0
n34_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n13_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n35_match_alternate_α:
                        mov              dword ptr [rbp + 320], r14d
                        lea              rax, [rip + .Lx85_21]
                        mov              qword ptr [rbp + 336], rax
                                                                                        jmp   n37_match_lit_α
.Lx85_21:
                        lea              rax, [rip + .Lx85_19]
                        mov              qword ptr [rbp + 336], rax
                                                                                        jmp   n36_match_lit_α
n35_match_alternate_s0:
                        lea              rax, [rip + .Lx85_40]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n35_match_alternate_as
n35_match_alternate_s1:
                        lea              rax, [rip + .Lx85_41]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n35_match_alternate_as
.Lx85_40:
                                                                                        jmp   n37_match_lit_β
.Lx85_41:
                                                                                        jmp   n36_match_lit_β
n35_match_alternate_as:
                                                                                        jmp   n12_match_fence1_as
n35_match_alternate_β:
                        mov              rax, qword ptr [rbp + 328]
                                                                                        jmp   rax
n35_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 320]
                        mov              rax, qword ptr [rbp + 336]
                                                                                        jmp   rax
.Lx85_19:
                                                                                        jmp   n12_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n36_match_lit_α:
                                                                                        jmp   n35_match_alternate_s1
n36_match_lit_β:
                                                                                        jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n37_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n35_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n35_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n35_match_alternate_s0
n37_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n35_match_alternate_af
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 384], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 376]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 384], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 376]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 376], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
8:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        mov              qword ptr [rsp + 144], r8
                        mov              dword ptr [rsp + 136], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + n90_match_sequence_β]
                        mov              qword ptr [rbp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n90_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n99_match_patref_α
n90_match_sequence_as:
                                                                                        jmp   proc_PAT$3_γ
n90_match_sequence_β:
                                                                                        jmp   n91_match_alternate_β
n90_match_sequence_af:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n91_match_alternate_α:
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx103_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n98_match_any_α
.Lx103_21:
                        lea              rax, [rip + .Lx103_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n92_match_sequence_α
n91_match_alternate_s0:
                        lea              rax, [rip + .Lx103_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n91_match_alternate_as
n91_match_alternate_s1:
                        lea              rax, [rip + .Lx103_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n91_match_alternate_as
.Lx103_40:
                                                                                        jmp   n98_match_any_β
.Lx103_41:
                                                                                        jmp   n92_match_sequence_β
n91_match_alternate_as:
                                                                                        jmp   proc_PAT$3_γ
n91_match_alternate_β:
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n91_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx103_19:
                                                                                        jmp   n99_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n92_match_sequence_α:
                                                                                        jmp   n97_match_lit_α
n92_match_sequence_as:
                                                                                        jmp   n91_match_alternate_s1
n92_match_sequence_β:
                                                                                        jmp   n93_match_any_β
n92_match_sequence_af:
                                                                                        jmp   n91_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n93_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n94_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n94_match_any_β
                        add              r14d, 1
                                                                                        jmp   n91_match_alternate_s1
n93_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n94_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n94_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n95_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n95_match_any_β
                        add              r14d, 1
                                                                                        jmp   n93_match_any_α
n94_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n95_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n95_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n96_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n96_match_any_β
                        add              r14d, 1
                                                                                        jmp   n94_match_any_α
n95_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n96_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n96_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n97_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n97_match_lit_β
                        add              r14d, 1
                                                                                        jmp   n95_match_any_α
n96_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n97_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n97_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n91_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 117
                                                                                        jne   n91_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n96_match_any_α
n97_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n91_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n98_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n91_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C5]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n91_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n91_match_alternate_s0
n98_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n91_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n99_match_patref_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx118_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx118_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx118_10
.Lx118_9:
                        xor              eax, eax
.Lx118_10:
                        test             rax, rax
                                                                                        jz    .Lx118_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx118_4]
                        lea              rdx, [rip + .Lx118_5]
                                                                                        jmp   rax
.Lx118_4:
                                                                                        jmp   n91_match_alternate_α
.Lx118_5:
                                                                                        jmp   proc_PAT$3_ω
.Lx118_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx118_2:
                        test             rax, rax
                                                                                        je    .Lx118_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx118_7]
                        lea              rdx, [rip + .Lx118_8]
                                                                                        jmp   rax
.Lx118_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx118_2
.Lx118_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx118_2
.Lx118_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$3_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx118_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n91_match_alternate_α
.Lx118_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$3_ω
n99_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 136], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
8:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
                        mov              qword ptr [rsp + 224], r8
                        mov              dword ptr [rsp + 216], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + n119_match_sequence_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n119_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n126_match_lit_α
n119_match_sequence_as:
                                                                                        jmp   proc_PAT$4_γ
n119_match_sequence_β:
                                                                                        jmp   n120_match_lit_β
n119_match_sequence_af:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n120_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n121_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   n121_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$4_γ
n120_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n121_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n121_match_arbno_α:
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                                                                                        jmp   n120_match_lit_α
n121_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 84]
                        mov              rax, qword ptr [rbp + 96]
                        sub              rsp, 112
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 96], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                                                                                        jmp   n122_match_sequence_α
n121_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n122_match_sequence_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                                                                                        jmp   n120_match_lit_α
n121_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 200]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 88]
                        test             ecx, ecx
                                                                                        jz    .Lx132_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 88], ecx
                        mov              qword ptr [rbp + 96], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n122_match_sequence_β
.Lx132_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   n125_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n122_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n124_match_patref_α
n122_match_sequence_as:
                                                                                        jmp   n121_match_arbno_as
n122_match_sequence_β:
                                                                                        jmp   n123_match_patref_β
n122_match_sequence_af:
                                                                                        jmp   n121_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n123_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx135_11
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 3
                                                                                        jne   .Lx135_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx135_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx135_10
.Lx135_9:
                        xor              eax, eax
.Lx135_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx135_11:
                        test             rax, rax
                                                                                        jz    .Lx135_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx135_4]
                        lea              rdx, [rip + .Lx135_5]
                                                                                        jmp   rax
.Lx135_4:
                                                                                        jmp   n121_match_arbno_as
.Lx135_5:
                                                                                        jmp   n124_match_patref_β
.Lx135_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx135_2
.Lx135_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx135_2
.Lx135_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n124_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx135_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n121_match_arbno_as
.Lx135_6:
                        add              rsp, 16
                                                                                        jmp   n124_match_patref_β
n123_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n124_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx136_11
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 3
                                                                                        jne   .Lx136_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx136_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx136_10
.Lx136_9:
                        xor              eax, eax
.Lx136_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx136_11:
                        test             rax, rax
                                                                                        jz    .Lx136_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx136_4]
                        lea              rdx, [rip + .Lx136_5]
                                                                                        jmp   rax
.Lx136_4:
                                                                                        jmp   n123_match_patref_α
.Lx136_5:
                                                                                        jmp   n121_match_arbno_af
.Lx136_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx136_2
.Lx136_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx136_2
.Lx136_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n121_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx136_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n123_match_patref_α
.Lx136_6:
                        add              rsp, 16
                                                                                        jmp   n121_match_arbno_af
n124_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n125_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx137_11
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 3
                                                                                        jne   .Lx137_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx137_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx137_10
.Lx137_9:
                        xor              eax, eax
.Lx137_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx137_11:
                        test             rax, rax
                                                                                        jz    .Lx137_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx137_4]
                        lea              rdx, [rip + .Lx137_5]
                                                                                        jmp   rax
.Lx137_4:
                                                                                        jmp   n121_match_arbno_α
.Lx137_5:
                                                                                        jmp   n126_match_lit_β
.Lx137_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx137_2:
                        test             rax, rax
                                                                                        je    .Lx137_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx137_7]
                        lea              rdx, [rip + .Lx137_8]
                                                                                        jmp   rax
.Lx137_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx137_2
.Lx137_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx137_2
.Lx137_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n126_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx137_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n121_match_arbno_α
.Lx137_6:
                        add              rsp, 16
                                                                                        jmp   n126_match_lit_β
n125_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n126_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$4_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   proc_PAT$4_ω
                        add              r14d, 1
                                                                                        jmp   n125_match_patref_α
n126_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$4_ω
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 216]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 216]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 216], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
8:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
                        mov              qword ptr [rsp + 144], r8
                        mov              dword ptr [rsp + 136], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
                        lea              rax, [rip + proc_PAT$5_ω]
                        mov              qword ptr [rbp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n140_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n145_match_patref_α
n140_match_sequence_as:
                                                                                        jmp   proc_PAT$5_γ
n140_match_sequence_β:
                                                                                        jmp   n141_match_defer_β
n140_match_sequence_af:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n141_match_defer_α:
                        mov              qword ptr [rbp + 96], rsp
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
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
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   proc_PAT$5_γ
.Lx148_5:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n142_match_lit_β
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
                                                                                        js    n142_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx148_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   proc_PAT$5_γ
.Lx148_6:
                        add              rsp, 16
                                                                                        jmp   n142_match_lit_β
n141_match_defer_β:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n142_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n142_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n143_match_patref_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 58
                                                                                        jne   n143_match_patref_β
                        add              r14d, 1
                                                                                        jmp   n141_match_defer_α
n142_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n143_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n143_match_patref_α:
                        mov              qword ptr [rbp + 64], rsp
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx151_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx151_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx151_10
.Lx151_9:
                        xor              eax, eax
.Lx151_10:
                        test             rax, rax
                                                                                        jz    .Lx151_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx151_4]
                        lea              rdx, [rip + .Lx151_5]
                                                                                        jmp   rax
.Lx151_4:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n142_match_lit_α
.Lx151_5:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n144_match_patref_β
.Lx151_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx151_2:
                        test             rax, rax
                                                                                        je    .Lx151_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx151_7]
                        lea              rdx, [rip + .Lx151_8]
                                                                                        jmp   rax
.Lx151_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx151_2
.Lx151_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx151_2
.Lx151_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n144_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx151_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n142_match_lit_α
.Lx151_6:
                        add              rsp, 16
                                                                                        jmp   n144_match_patref_β
n143_match_patref_β:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n144_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n144_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx152_11
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        cmp              eax, 3
                                                                                        jne   .Lx152_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx152_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx152_10
.Lx152_9:
                        xor              eax, eax
.Lx152_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx152_11:
                        test             rax, rax
                                                                                        jz    .Lx152_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx152_4]
                        lea              rdx, [rip + .Lx152_5]
                                                                                        jmp   rax
.Lx152_4:
                                                                                        jmp   n143_match_patref_α
.Lx152_5:
                                                                                        jmp   n145_match_patref_β
.Lx152_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx152_2:
                        test             rax, rax
                                                                                        je    .Lx152_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx152_7]
                        lea              rdx, [rip + .Lx152_8]
                                                                                        jmp   rax
.Lx152_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx152_2
.Lx152_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx152_2
.Lx152_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n145_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx152_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n143_match_patref_α
.Lx152_6:
                        add              rsp, 16
                                                                                        jmp   n145_match_patref_β
n144_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n145_match_patref_α:
                        mov              qword ptr [rbp + 32], rsp
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
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
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   n144_match_patref_α
.Lx153_5:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   proc_PAT$5_ω
.Lx153_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
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
                                                                                        js    proc_PAT$5_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx153_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n144_match_patref_α
.Lx153_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_ω
n145_match_patref_β:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   proc_PAT$5_ω
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 136], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
8:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$6_α
proc_PAT$6_α:
                        mov              qword ptr [rsp + 272], r8
                        mov              dword ptr [rsp + 264], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
                        lea              rax, [rip + n154_match_sequence_β]
                        mov              qword ptr [rbp + 240], rax
#-----------------------------------------------------------------------------------------------------------------------
n154_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n164_match_lit_α
n154_match_sequence_as:
                                                                                        jmp   proc_PAT$6_γ
n154_match_sequence_β:
                                                                                        jmp   n155_match_lit_β
n154_match_sequence_af:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
n155_match_lit_α:
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
n155_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n156_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n156_match_alternate_α:
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx170_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n158_match_sequence_α
.Lx170_21:
                        lea              rax, [rip + .Lx170_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n157_match_patref_α
n156_match_alternate_s0:
                        lea              rax, [rip + .Lx170_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n156_match_alternate_as
n156_match_alternate_s1:
                        lea              rax, [rip + .Lx170_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n156_match_alternate_as
.Lx170_40:
                                                                                        jmp   n158_match_sequence_β
.Lx170_41:
                                                                                        jmp   n157_match_patref_β
n156_match_alternate_as:
                                                                                        jmp   n155_match_lit_α
n156_match_alternate_β:
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n156_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx170_19:
                                                                                        jmp   n164_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n157_match_patref_α:
                        mov              qword ptr [rbp + 224], rsp
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx171_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx171_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx171_10
.Lx171_9:
                        xor              eax, eax
.Lx171_10:
                        test             rax, rax
                                                                                        jz    .Lx171_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx171_4]
                        lea              rdx, [rip + .Lx171_5]
                                                                                        jmp   rax
.Lx171_4:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n156_match_alternate_s1
.Lx171_5:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n156_match_alternate_af
.Lx171_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx171_2:
                        test             rax, rax
                                                                                        je    .Lx171_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx171_7]
                        lea              rdx, [rip + .Lx171_8]
                                                                                        jmp   rax
.Lx171_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx171_2
.Lx171_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx171_2
.Lx171_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n156_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx171_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n156_match_alternate_s1
.Lx171_6:
                        add              rsp, 16
                                                                                        jmp   n156_match_alternate_af
n157_match_patref_β:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n156_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n158_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n163_match_patref_α
n158_match_sequence_as:
                                                                                        jmp   n156_match_alternate_s0
n158_match_sequence_β:
                                                                                        jmp   n159_match_arbno_β
n158_match_sequence_af:
                                                                                        jmp   n156_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n159_match_arbno_α:
                        mov              dword ptr [rbp + 128], r14d
                        mov              dword ptr [rbp + 132], r14d
                        mov              dword ptr [rbp + 136], 0
                        mov              qword ptr [rbp + 152], rsp
                        mov              qword ptr [rbp + 144], 0
                                                                                        jmp   n156_match_alternate_s0
n159_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 132]
                        mov              rax, qword ptr [rbp + 144]
                        sub              rsp, 224
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 144], rsp
                        mov              rbp, rsp
                        add              rbp, -8
                                                                                        jmp   n160_match_sequence_α
n159_match_arbno_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              r14d, eax
                                                                                        je    n160_match_sequence_β
                        mov              rbp, qword ptr [rbp + 8]
                        mov              eax, dword ptr [rbp + 136]
                        add              eax, 1
                        mov              dword ptr [rbp + 136], eax
                        mov              dword ptr [rbp + 132], r14d
                                                                                        jmp   n156_match_alternate_s0
n159_match_arbno_af:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 8]
                        lea              rsp, [rbp + 232]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 136]
                        test             ecx, ecx
                                                                                        jz    .Lx175_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 136], ecx
                        mov              qword ptr [rbp + 144], rax
                        lea              rbp, [rax + -8]
                                                                                        jmp   n160_match_sequence_β
.Lx175_2:
                        mov              r14d, dword ptr [rbp + 128]
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   n163_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n160_match_sequence_α:
                        mov              dword ptr [rbp + 176], r14d
                                                                                        jmp   n162_match_lit_α
n160_match_sequence_as:
                                                                                        jmp   n159_match_arbno_as
n160_match_sequence_β:
                                                                                        jmp   n161_match_patref_β
n160_match_sequence_af:
                                                                                        jmp   n159_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n161_match_patref_α:
                        mov              qword ptr [rbp + 208], rsp
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        cmp              eax, 3
                                                                                        jne   .Lx178_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx178_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx178_10
.Lx178_9:
                        xor              eax, eax
.Lx178_10:
                        test             rax, rax
                                                                                        jz    .Lx178_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx178_4]
                        lea              rdx, [rip + .Lx178_5]
                                                                                        jmp   rax
.Lx178_4:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n159_match_arbno_as
.Lx178_5:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n162_match_lit_β
.Lx178_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx178_2:
                        test             rax, rax
                                                                                        je    .Lx178_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx178_7]
                        lea              rdx, [rip + .Lx178_8]
                                                                                        jmp   rax
.Lx178_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx178_2
.Lx178_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx178_2
.Lx178_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n162_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx178_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n159_match_arbno_as
.Lx178_6:
                        add              rsp, 16
                                                                                        jmp   n162_match_lit_β
n161_match_patref_β:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n162_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n162_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n159_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n159_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n161_match_patref_α
n162_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n159_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n163_match_patref_α:
                        mov              qword ptr [rbp + 96], rsp
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
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n159_match_arbno_α
.Lx181_5:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n156_match_alternate_af
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
                                                                                        js    n156_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx181_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n159_match_arbno_α
.Lx181_6:
                        add              rsp, 16
                                                                                        jmp   n156_match_alternate_af
n163_match_patref_β:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n156_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n164_match_lit_α:
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
n164_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$6_ω
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 272], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 264]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 272], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 264]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 264], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_attempt
8:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$7_α
proc_PAT$7_α:
                        mov              qword ptr [rsp + 272], r8
                        mov              dword ptr [rsp + 264], r14d
proc_PAT$7_attempt:
proc_PAT$7_α_body:
                        lea              rax, [rip + n184_match_sequence_β]
                        mov              qword ptr [rbp + 240], rax
#-----------------------------------------------------------------------------------------------------------------------
n184_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n194_match_lit_α
n184_match_sequence_as:
                                                                                        jmp   proc_PAT$7_γ
n184_match_sequence_β:
                                                                                        jmp   n185_match_lit_β
n184_match_sequence_af:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n185_match_lit_α:
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
n185_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n186_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n186_match_alternate_α:
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx200_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n188_match_sequence_α
.Lx200_21:
                        lea              rax, [rip + .Lx200_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n187_match_patref_α
n186_match_alternate_s0:
                        lea              rax, [rip + .Lx200_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n186_match_alternate_as
n186_match_alternate_s1:
                        lea              rax, [rip + .Lx200_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n186_match_alternate_as
.Lx200_40:
                                                                                        jmp   n188_match_sequence_β
.Lx200_41:
                                                                                        jmp   n187_match_patref_β
n186_match_alternate_as:
                                                                                        jmp   n185_match_lit_α
n186_match_alternate_β:
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n186_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx200_19:
                                                                                        jmp   n194_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n187_match_patref_α:
                        mov              qword ptr [rbp + 224], rsp
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx201_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx201_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx201_10
.Lx201_9:
                        xor              eax, eax
.Lx201_10:
                        test             rax, rax
                                                                                        jz    .Lx201_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx201_4]
                        lea              rdx, [rip + .Lx201_5]
                                                                                        jmp   rax
.Lx201_4:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n186_match_alternate_s1
.Lx201_5:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n186_match_alternate_af
.Lx201_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx201_2:
                        test             rax, rax
                                                                                        je    .Lx201_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx201_7]
                        lea              rdx, [rip + .Lx201_8]
                                                                                        jmp   rax
.Lx201_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx201_2
.Lx201_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx201_2
.Lx201_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n186_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx201_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n186_match_alternate_s1
.Lx201_6:
                        add              rsp, 16
                                                                                        jmp   n186_match_alternate_af
n187_match_patref_β:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n186_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n188_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n193_match_defer_α
n188_match_sequence_as:
                                                                                        jmp   n186_match_alternate_s0
n188_match_sequence_β:
                                                                                        jmp   n189_match_arbno_β
n188_match_sequence_af:
                                                                                        jmp   n186_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n189_match_arbno_α:
                        mov              dword ptr [rbp + 128], r14d
                        mov              dword ptr [rbp + 132], r14d
                        mov              dword ptr [rbp + 136], 0
                        mov              qword ptr [rbp + 152], rsp
                        mov              qword ptr [rbp + 144], 0
                                                                                        jmp   n186_match_alternate_s0
n189_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 132]
                        mov              rax, qword ptr [rbp + 144]
                        sub              rsp, 224
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 144], rsp
                        mov              rbp, rsp
                        add              rbp, -8
                                                                                        jmp   n190_match_sequence_α
n189_match_arbno_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              r14d, eax
                                                                                        je    n190_match_sequence_β
                        mov              rbp, qword ptr [rbp + 8]
                        mov              eax, dword ptr [rbp + 136]
                        add              eax, 1
                        mov              dword ptr [rbp + 136], eax
                        mov              dword ptr [rbp + 132], r14d
                                                                                        jmp   n186_match_alternate_s0
n189_match_arbno_af:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 8]
                        lea              rsp, [rbp + 232]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 136]
                        test             ecx, ecx
                                                                                        jz    .Lx205_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 136], ecx
                        mov              qword ptr [rbp + 144], rax
                        lea              rbp, [rax + -8]
                                                                                        jmp   n190_match_sequence_β
.Lx205_2:
                        mov              r14d, dword ptr [rbp + 128]
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   n193_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n190_match_sequence_α:
                        mov              dword ptr [rbp + 176], r14d
                                                                                        jmp   n192_match_lit_α
n190_match_sequence_as:
                                                                                        jmp   n189_match_arbno_as
n190_match_sequence_β:
                                                                                        jmp   n191_match_defer_β
n190_match_sequence_af:
                                                                                        jmp   n189_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n191_match_defer_α:
                        mov              qword ptr [rbp + 208], rsp
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 3
                                                                                        jne   .Lx208_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx208_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx208_10
.Lx208_9:
                        xor              eax, eax
.Lx208_10:
                        test             rax, rax
                                                                                        jz    .Lx208_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx208_4]
                        lea              rdx, [rip + .Lx208_5]
                                                                                        jmp   rax
.Lx208_4:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n189_match_arbno_as
.Lx208_5:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n192_match_lit_β
.Lx208_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx208_2:
                        test             rax, rax
                                                                                        je    .Lx208_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx208_7]
                        lea              rdx, [rip + .Lx208_8]
                                                                                        jmp   rax
.Lx208_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx208_2
.Lx208_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx208_2
.Lx208_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n192_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx208_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n189_match_arbno_as
.Lx208_6:
                        add              rsp, 16
                                                                                        jmp   n192_match_lit_β
n191_match_defer_β:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n192_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n192_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n189_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n189_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n191_match_defer_α
n192_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n189_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n193_match_defer_α:
                        mov              qword ptr [rbp + 96], rsp
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
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n189_match_arbno_α
.Lx211_5:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n186_match_alternate_af
.Lx211_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
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
                                                                                        js    n186_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx211_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n189_match_arbno_α
.Lx211_6:
                        add              rsp, 16
                                                                                        jmp   n186_match_alternate_af
n193_match_defer_β:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n186_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n194_match_lit_α:
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
n194_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$7_ω
proc_PAT$7_scanhit:
                        cmp              qword ptr [rbp + 272], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 264]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$7_γ
proc_PAT$7_scanfail:
                        cmp              qword ptr [rbp + 272], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 264]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 264], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$7_attempt
8:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$8_α
proc_PAT$8_α:
                        mov              qword ptr [rsp + 160], r8
                        mov              dword ptr [rsp + 152], r14d
proc_PAT$8_attempt:
proc_PAT$8_α_body:
                        lea              rax, [rip + n214_match_alternate_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n214_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx223_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n221_match_patref_α
.Lx223_21:
                        lea              rax, [rip + .Lx223_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n220_match_patref_α
.Lx223_22:
                        lea              rax, [rip + .Lx223_23]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n219_match_patref_α
.Lx223_23:
                        lea              rax, [rip + .Lx223_24]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n218_match_patref_α
.Lx223_24:
                        lea              rax, [rip + .Lx223_25]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n217_match_lit_α
.Lx223_25:
                        lea              rax, [rip + .Lx223_26]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n216_match_lit_α
.Lx223_26:
                        lea              rax, [rip + .Lx223_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n215_match_lit_α
n214_match_alternate_s0:
                        lea              rax, [rip + .Lx223_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n214_match_alternate_as
n214_match_alternate_s1:
                        lea              rax, [rip + .Lx223_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n214_match_alternate_as
n214_match_alternate_s2:
                        lea              rax, [rip + .Lx223_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n214_match_alternate_as
n214_match_alternate_s3:
                        lea              rax, [rip + .Lx223_43]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n214_match_alternate_as
n214_match_alternate_s4:
                        lea              rax, [rip + .Lx223_44]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n214_match_alternate_as
n214_match_alternate_s5:
                        lea              rax, [rip + .Lx223_45]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n214_match_alternate_as
n214_match_alternate_s6:
                        lea              rax, [rip + .Lx223_46]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n214_match_alternate_as
.Lx223_40:
                                                                                        jmp   n221_match_patref_β
.Lx223_41:
                                                                                        jmp   n220_match_patref_β
.Lx223_42:
                                                                                        jmp   n219_match_patref_β
.Lx223_43:
                                                                                        jmp   n218_match_patref_β
.Lx223_44:
                                                                                        jmp   n217_match_lit_β
.Lx223_45:
                                                                                        jmp   n216_match_lit_β
.Lx223_46:
                                                                                        jmp   n215_match_lit_β
n214_match_alternate_as:
                                                                                        jmp   proc_PAT$8_γ
n214_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n214_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx223_19:
                                                                                        jmp   proc_PAT$8_ω
#-----------------------------------------------------------------------------------------------------------------------
n215_match_lit_α:
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d
                                                                                        jg    n214_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819047278
                                                                                        jne   n214_match_alternate_af
                        add              r14d, 4
                                                                                        jmp   n214_match_alternate_s6
n215_match_lit_β:
                        sub              r14d, 4
                                                                                        jmp   n214_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n216_match_lit_α:
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
                                                                                        jmp   n214_match_alternate_s5
n216_match_lit_β:
                        sub              r14d, 5
                                                                                        jmp   n214_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n217_match_lit_α:
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d
                                                                                        jg    n214_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1702195828
                                                                                        jne   n214_match_alternate_af
                        add              r14d, 4
                                                                                        jmp   n214_match_alternate_s4
n217_match_lit_β:
                        sub              r14d, 4
                                                                                        jmp   n214_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n218_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx230_11
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        cmp              eax, 3
                                                                                        jne   .Lx230_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx230_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx230_10
.Lx230_9:
                        xor              eax, eax
.Lx230_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx230_11:
                        test             rax, rax
                                                                                        jz    .Lx230_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx230_4]
                        lea              rdx, [rip + .Lx230_5]
                                                                                        jmp   rax
.Lx230_4:
                                                                                        jmp   n214_match_alternate_s3
.Lx230_5:
                                                                                        jmp   n214_match_alternate_af
.Lx230_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx230_2:
                        test             rax, rax
                                                                                        je    .Lx230_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx230_7]
                        lea              rdx, [rip + .Lx230_8]
                                                                                        jmp   rax
.Lx230_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx230_2
.Lx230_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx230_2
.Lx230_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n214_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx230_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n214_match_alternate_s3
.Lx230_6:
                        add              rsp, 16
                                                                                        jmp   n214_match_alternate_af
n218_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n219_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx231_11
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        cmp              eax, 3
                                                                                        jne   .Lx231_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx231_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx231_10
.Lx231_9:
                        xor              eax, eax
.Lx231_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx231_11:
                        test             rax, rax
                                                                                        jz    .Lx231_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx231_4]
                        lea              rdx, [rip + .Lx231_5]
                                                                                        jmp   rax
.Lx231_4:
                                                                                        jmp   n214_match_alternate_s2
.Lx231_5:
                                                                                        jmp   n214_match_alternate_af
.Lx231_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx231_2:
                        test             rax, rax
                                                                                        je    .Lx231_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx231_7]
                        lea              rdx, [rip + .Lx231_8]
                                                                                        jmp   rax
.Lx231_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx231_2
.Lx231_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx231_2
.Lx231_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n214_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx231_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n214_match_alternate_s2
.Lx231_6:
                        add              rsp, 16
                                                                                        jmp   n214_match_alternate_af
n219_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n220_match_patref_α:
                        mov              qword ptr [rbp + 64], rsp
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        cmp              eax, 3
                                                                                        jne   .Lx232_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx232_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx232_10
.Lx232_9:
                        xor              eax, eax
.Lx232_10:
                        test             rax, rax
                                                                                        jz    .Lx232_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx232_4]
                        lea              rdx, [rip + .Lx232_5]
                                                                                        jmp   rax
.Lx232_4:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n214_match_alternate_s1
.Lx232_5:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n214_match_alternate_af
.Lx232_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx232_2:
                        test             rax, rax
                                                                                        je    .Lx232_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx232_7]
                        lea              rdx, [rip + .Lx232_8]
                                                                                        jmp   rax
.Lx232_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx232_2
.Lx232_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx232_2
.Lx232_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n214_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx232_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n214_match_alternate_s1
.Lx232_6:
                        add              rsp, 16
                                                                                        jmp   n214_match_alternate_af
n220_match_patref_β:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n214_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n221_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx233_11
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        cmp              eax, 3
                                                                                        jne   .Lx233_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx233_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx233_10
.Lx233_9:
                        xor              eax, eax
.Lx233_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx233_11:
                        test             rax, rax
                                                                                        jz    .Lx233_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx233_4]
                        lea              rdx, [rip + .Lx233_5]
                                                                                        jmp   rax
.Lx233_4:
                                                                                        jmp   n214_match_alternate_s0
.Lx233_5:
                                                                                        jmp   n214_match_alternate_af
.Lx233_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx233_2:
                        test             rax, rax
                                                                                        je    .Lx233_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx233_7]
                        lea              rdx, [rip + .Lx233_8]
                                                                                        jmp   rax
.Lx233_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx233_2
.Lx233_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx233_2
.Lx233_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n214_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx233_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n214_match_alternate_s0
.Lx233_6:
                        add              rsp, 16
                                                                                        jmp   n214_match_alternate_af
n221_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$8_scanhit:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 152]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$8_γ
proc_PAT$8_scanfail:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 152]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 152], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$8_attempt
8:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$8_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$9_α
proc_PAT$9_α:
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$9_attempt:
proc_PAT$9_α_body:
                        lea              rax, [rip + proc_PAT$9_ω]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n234_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n237_match_patref_α
n234_match_sequence_as:
                                                                                        jmp   proc_PAT$9_γ
n234_match_sequence_β:
                                                                                        jmp   n235_match_patref_β
n234_match_sequence_af:
                                                                                        jmp   proc_PAT$9_ω
#-----------------------------------------------------------------------------------------------------------------------
n235_match_patref_α:
                        mov              qword ptr [rbp + 64], rsp
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
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   proc_PAT$9_γ
.Lx240_5:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n236_match_defer_β
.Lx240_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
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
                                                                                        js    n236_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx240_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   proc_PAT$9_γ
.Lx240_6:
                        add              rsp, 16
                                                                                        jmp   n236_match_defer_β
n235_match_patref_β:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n236_match_defer_β
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
                                                                                        jmp   n235_match_patref_α
.Lx241_5:
                                                                                        jmp   n237_match_patref_β
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
                                                                                        js    n237_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx241_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n235_match_patref_α
.Lx241_6:
                        add              rsp, 16
                                                                                        jmp   n237_match_patref_β
n236_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n237_match_patref_α:
                        mov              qword ptr [rbp + 32], rsp
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
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   n236_match_defer_α
.Lx242_5:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   proc_PAT$9_ω
.Lx242_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
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
                                                                                        js    proc_PAT$9_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx242_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n236_match_defer_α
.Lx242_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$9_ω
n237_match_patref_β:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   proc_PAT$9_ω
proc_PAT$9_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$9_γ
proc_PAT$9_scanfail:
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
                                                                                        jmp   proc_PAT$9_attempt
8:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$9_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$10_α
proc_PAT$10_α:
                        mov              qword ptr [rsp + 128], r8
                        mov              dword ptr [rsp + 120], r14d
proc_PAT$10_attempt:
proc_PAT$10_α_body:
                        lea              rax, [rip + n243_match_sequence_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n243_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n247_lit_integer_α
n243_match_sequence_as:
                                                                                        jmp   proc_PAT$10_γ
n243_match_sequence_β:
                                                                                        jmp   n245_match_rpos_β
n243_match_sequence_af:
                                                                                        jmp   proc_PAT$10_ω
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_integer_α:
                        mov              qword ptr [rbp + 80], 6
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n245_match_rpos_α
n244_lit_integer_β:
                                                                                        jmp   n246_match_patref_β
.Lx251_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n245_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n246_match_patref_β
                                                                                        jmp   proc_PAT$10_γ
n245_match_rpos_β:
                                                                                        jmp   n246_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n246_match_patref_α:
                        mov              qword ptr [rbp + 64], rsp
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
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n244_lit_integer_α
.Lx253_5:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   proc_PAT$10_ω
.Lx253_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
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
                                                                                        jmp   n244_lit_integer_α
.Lx253_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$10_ω
n246_match_patref_β:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   proc_PAT$10_ω
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n248_match_pos_α
n247_lit_integer_β:
                                                                                        jmp   proc_PAT$10_ω
.Lx254_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n248_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$10_ω
                                                                                        jmp   n246_match_patref_α
n248_match_pos_β:
                                                                                        jmp   proc_PAT$10_ω
proc_PAT$10_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$10_γ
proc_PAT$10_scanfail:
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
                                                                                        jmp   proc_PAT$10_attempt
8:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$10_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
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
n256_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n257_call_α
.Lx318_0:
                        .quad            92
#-----------------------------------------------------------------------------------------------------------------------
n257_call_α:
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
                        lea              rdi, [rip + .Lbynamefnzd96]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx319_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n259_lit_string_α
.Lx319_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n258_assign_α
n257_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n259_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n258_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 32
                                                                                        jmp   n259_lit_string_α
#=======================================================================================================================
#                 ws             =  FENCE(SPAN(' ' CHAR(9) CHAR(10) CHAR(13)) | '')
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n260_call_α
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n260_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd323:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd323]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx322_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n262_lit_string_α
.Lx322_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n261_assign_α
n260_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n262_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n261_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 32
                                                                                        jmp   n262_lit_string_α
#=======================================================================================================================
#                 hex            =  '0123456789abcdefABCDEF'
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n263_assign_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "0123456789abcdefABCDEF"
#-----------------------------------------------------------------------------------------------------------------------
n263_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 16
                                                                                        jmp   n264_lit_string_α
#=======================================================================================================================
#                 dig            =  '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n265_assign_α
.Lx327_0:
                        .quad            .Lx327_0_s
.Lx327_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n265_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        add              rsp, 16
                                                                                        jmp   n266_lit_string_α
#=======================================================================================================================
#                 jescape        =  bslash
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n267_call_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n267_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd331:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd331]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx330_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n269_lit_string_α
.Lx330_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n268_assign_α
n267_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n269_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n268_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        add              rsp, 32
                                                                                        jmp   n269_lit_string_α
#=======================================================================================================================
#                 jchunk         =  BREAK('"\' CHAR(10) CHAR(13))
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n270_call_α
.Lx333_0:
                        .quad            .Lx333_0_s
.Lx333_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n270_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd335:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd335]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx334_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n272_lit_string_α
.Lx334_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n271_assign_α
n270_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n272_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n271_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 32
                                                                                        jmp   n272_lit_string_α
#=======================================================================================================================
#                 jstring        =  '"' jchunk ARBNO(jescape jchunk) '"'
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n273_call_α
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n273_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd339:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd339]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx338_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n275_lit_string_α
.Lx338_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n274_assign_α
n273_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n275_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n274_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        add              rsp, 32
                                                                                        jmp   n275_lit_string_α
#=======================================================================================================================
#                 jnumber        =  FENCE('-' | '')
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n276_call_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n276_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd343:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd343]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx342_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n278_lit_string_α
.Lx342_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n277_assign_α
n276_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n278_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n277_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        add              rsp, 32
                                                                                        jmp   n278_lit_string_α
#=======================================================================================================================
#                 jmember        =  ws jstring ws ':' *jelement
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n279_call_α
.Lx345_0:
                        .quad            .Lx345_0_s
.Lx345_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n279_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd347:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd347]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx346_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n281_lit_string_α
.Lx346_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n280_assign_α
n279_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n281_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n280_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        add              rsp, 32
                                                                                        jmp   n281_lit_string_α
#=======================================================================================================================
#                 jobject        =  '{' ( jmember ARBNO(',' jmember) | ws ) '}'
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n282_call_α
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n282_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd351:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd351]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx350_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n284_lit_string_α
.Lx350_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n283_assign_α
n282_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n284_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n283_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        add              rsp, 32
                                                                                        jmp   n284_lit_string_α
#=======================================================================================================================
#                 jarray         =  '[' ( *jelement ARBNO(',' *jelement) | ws ) ']'
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n285_call_α
.Lx353_0:
                        .quad            .Lx353_0_s
.Lx353_0_s:
                        .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n285_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd355:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd355]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx354_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n287_lit_string_α
.Lx354_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n286_assign_α
n285_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n287_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n286_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        add              rsp, 32
                                                                                        jmp   n287_lit_string_α
#=======================================================================================================================
#                 jvalue         =  jstring | jnumber | jobject | jarray
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n288_call_α
.Lx357_0:
                        .quad            .Lx357_0_s
.Lx357_0_s:
                        .string          "PAT$8"
#-----------------------------------------------------------------------------------------------------------------------
n288_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd359:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd359]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx358_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n290_lit_string_α
.Lx358_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n289_assign_α
n288_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n290_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n289_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 32
                                                                                        jmp   n290_lit_string_α
#=======================================================================================================================
#                 jelement       =  ws *jvalue ws
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n291_call_α
.Lx361_0:
                        .quad            .Lx361_0_s
.Lx361_0_s:
                        .string          "PAT$9"
#-----------------------------------------------------------------------------------------------------------------------
n291_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd363:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd363]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx362_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n293_lit_string_α
.Lx362_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n292_assign_α
n291_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n293_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n292_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052480], rax
                        mov              qword ptr [1879052488], rdx
                        add              rsp, 32
                                                                                        jmp   n293_lit_string_α
#=======================================================================================================================
#                 json           =  POS(0) jelement RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n294_call_α
.Lx365_0:
                        .quad            .Lx365_0_s
.Lx365_0_s:
                        .string          "PAT$10"
#-----------------------------------------------------------------------------------------------------------------------
n294_call_α:
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
                        lea              rdi, [rip + .Lrkfnzd367]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx366_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n296_lit_string_α
.Lx366_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n295_assign_α
n294_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n296_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n295_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                        add              rsp, 32
                                                                                        jmp   n296_lit_string_α
#=======================================================================================================================
#                 &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n297_lit_integer_α
.Lx369_0:
                        .quad            .Lx369_0_s
.Lx369_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n298_call_α
.Lx370_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n298_call_α:
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
.Lrkfnzd372:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd372]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx371_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n299_lit_string_α
.Lx371_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48
                                                                                        jmp   n299_lit_string_α
n298_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n299_lit_string_α
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r1000000]')
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n300_call_α
.Lx373_0:
                        .quad            .Lx373_0_s
.Lx373_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n300_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd375:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd375]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx374_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n304_var_α
.Lx374_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n301_lit_integer_α
n300_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n304_var_α
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n302_lit_string_α
.Lx376_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n303_call_α
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          "[-f0 -r1000000]"
#-----------------------------------------------------------------------------------------------------------------------
n303_call_α:
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
.Lbynamefnzd142:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd142]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 99
                                                                                        jne   .Lx378_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n304_var_α
.Lx378_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n304_var_α
n303_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n304_var_α
#=======================================================================================================================
#                 src             =   INPUT                       :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n304_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx379_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx379_240
                        add              rsp, 16
                                                                                        jmp   n315_lit_string_α
.Lx379_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n305_assign_α
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n305_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052512], rax
                        mov              qword ptr [1879052520], rdx
                        add              rsp, 16
                                                                                        jmp   n306_var_α
#=======================================================================================================================
#                 src             json                            :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:
                        sub              rsp, 128
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n307_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n307_match_head_α:
                        mov              qword ptr [rbp + 1168], r13
                        mov              qword ptr [rbp + 1176], r14
                        mov              qword ptr [rbp + 1184], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1192], rax
                        mov              qword ptr [rbp + 1160], rbp
                        mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 1136], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1128], rax
                        mov              dword ptr [rbp + 1120], 0
.Lx383_0:
                        mov              r14d, dword ptr [rbp + 1120]
                                                                                        jmp   n308_match_patref_α
n307_match_head_β:
                        add              dword ptr [rbp + 1120], 1
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, r15d
                                                                                        jg    .Lx383_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx383_1
                                                                                        jmp   .Lx383_0
.Lx383_1:
                        mov              rax, qword ptr [rbp + 1128]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1136]
                        mov              r10, qword ptr [1879048192]
.Lx383_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx383_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1168]
                        mov              r14, qword ptr [rbp + 1176]
                        mov              r15, qword ptr [rbp + 1184]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1192]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1160]
                        add              rsp, 128
                                                                                        jmp   n315_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n308_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx384_11
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        cmp              eax, 3
                                                                                        jne   .Lx384_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx384_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx384_10
.Lx384_9:
                        xor              eax, eax
.Lx384_10:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rax
.Lx384_11:
                        test             rax, rax
                                                                                        jz    .Lx384_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx384_4]
                        lea              rdx, [rip + .Lx384_5]
                                                                                        jmp   rax
.Lx384_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 1120], eax
                                                                                        jmp   n309_match_release_α
.Lx384_5:
                                                                                        jmp   n307_match_head_β
.Lx384_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S11]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx384_2:
                        test             rax, rax
                                                                                        je    .Lx384_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx384_7]
                        lea              rdx, [rip + .Lx384_8]
                                                                                        jmp   rax
.Lx384_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx384_2
.Lx384_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx384_2
.Lx384_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n307_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx384_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n309_match_release_α
.Lx384_6:
                        add              rsp, 16
                                                                                        jmp   n307_match_head_β
n308_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n309_match_release_α:
                        mov              rax, qword ptr [rbp + 1128]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1136]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx386_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx386_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx386_1:
                        test             rax, rax
                                                                                        je    .Lx386_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx386_3]
                        lea              rdx, [rip + .Lx386_4]
                                                                                        jmp   rax
.Lx386_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx386_1
.Lx386_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx386_1
.Lx386_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx386_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx386_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1168]
                        mov              r14, qword ptr [rbp + 1176]
                        mov              r15, qword ptr [rbp + 1184]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1192]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1160]
                        add              rsp, 128
                                                                                        jmp   n310_lit_string_α
#=======================================================================================================================
#                 OUTPUT          =  'matched bytes=' SIZE(src)   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n311_var_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n312_call_α
#-----------------------------------------------------------------------------------------------------------------------
n312_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd390:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd390]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx389_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
.Lx389_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n313_binop_α
n312_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n313_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n314_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n314_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx392_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 64
                                                                                        jmp   main_γ
.Lx392_0:
                        .quad            .Lx392_0_s
.Lx392_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# fail            OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n316_assign_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n316_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx394_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx394_0:
                        .quad            .Lx394_0_s
.Lx394_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n317_goto_α:
                                                                                        jmp   n315_lit_string_α
n317_goto_β:
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
