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
                        lea              rax, [rip + n8_match_span_β]
                        mov              qword ptr [rbp + 16], rax
#-----------------------------------------------------------------------------------------------------------------------
n8_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx10_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx10_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx10_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx10_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx10_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx10_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx10_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx10_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx10_1
                        add              ecx, 1
                                                                                        jmp   .Lx10_0
.Lx10_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx10_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx10_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   proc_PAT$1_scanhit
n8_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
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
                        lea              rax, [rip + n11_match_sequence_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n11_match_sequence_α:
                                                                                        jmp   n16_match_lit_α
n11_match_sequence_as:
                                                                                        jmp   proc_PAT$2_γ
n11_match_sequence_β:
                                                                                        jmp   n12_match_lit_β
n11_match_sequence_af:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n15_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   n15_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$2_γ
n12_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n15_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n14_match_break_α
n13_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n16_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx24_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx24_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n16_match_lit_β
.Lx24_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx24_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx24_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n16_match_lit_β
.Lx24_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx24_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx24_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n16_match_lit_β
.Lx24_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx24_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx24_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n16_match_lit_β
.Lx24_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx24_1
                        add              ecx, 1
                                                                                        jmp   .Lx24_0
.Lx24_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n15_match_assign_cond_α
n14_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n16_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_assign_cond_α:
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
                                                                                        jmp   n12_match_lit_α
n15_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n14_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$2_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   proc_PAT$2_ω
                        add              r14d, 1
                                                                                        jmp   n13_match_assign_save_α
n16_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$2_ω
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
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
                                                                                        jmp   proc_PAT$2_attempt
8:
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
n29_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n30_match_alternate_α
n29_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$3_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n30_match_alternate_α:
                        mov              dword ptr [rbp + 64], r14d
                        lea              rax, [rip + .Lx37_21]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n33_match_lit_α
.Lx37_21:
                        lea              rax, [rip + .Lx37_19]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n32_match_lit_α
n30_match_alternate_s0:
                        lea              rax, [rip + .Lx37_40]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n30_match_alternate_as
n30_match_alternate_s1:
                        lea              rax, [rip + .Lx37_41]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n30_match_alternate_as
.Lx37_40:
                                                                                        jmp   n33_match_lit_β
.Lx37_41:
                                                                                        jmp   n32_match_lit_β
n30_match_alternate_as:
                                                                                        jmp   n31_match_assign_cond_α
n30_match_alternate_β:
                        mov              rax, qword ptr [rbp + 72]
                                                                                        jmp   rax
n30_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rax, qword ptr [rbp + 80]
                                                                                        jmp   rax
.Lx37_19:
                                                                                        jmp   n29_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n31_match_assign_cond_α:
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
                                                                                        jmp   proc_PAT$3_scanhit
n31_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n30_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n32_match_lit_α:
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d
                                                                                        jg    n30_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1936482662
                                                                                        jne   n30_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101
                                                                                        jne   n30_match_alternate_af
                        add              r14d, 5
                                                                                        jmp   n30_match_alternate_s1
n32_match_lit_β:
                        sub              r14d, 5
                                                                                        jmp   n30_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n33_match_lit_α:
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d
                                                                                        jg    n30_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1702195828
                                                                                        jne   n30_match_alternate_af
                        add              r14d, 4
                                                                                        jmp   n30_match_alternate_s0
n33_match_lit_β:
                        sub              r14d, 4
                                                                                        jmp   n30_match_alternate_af
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
                        lea              rax, [rip + n46_match_assign_cond_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n44_match_assign_save_α:
                        lea              rdi, [rbp + 48]
                        mov              esi, r14d
                        call             rt_cap_push@PLT
                                                                                        jmp   n45_match_patref_α
n44_match_assign_save_β:
                        lea              rdi, [rbp + 48]
                        call             rt_cap_pop@PLT
                                                                                        jmp   proc_PAT$4_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n45_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx49_11
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx49_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx49_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx49_10
.Lx49_9:
                        xor              eax, eax
.Lx49_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx49_11:
                        test             rax, rax
                                                                                        jz    .Lx49_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx49_4]
                        lea              rdx, [rip + .Lx49_5]
                                                                                        jmp   rax
.Lx49_4:
                                                                                        jmp   n46_match_assign_cond_α
.Lx49_5:
                                                                                        jmp   n44_match_assign_save_β
.Lx49_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx49_2:
                        test             rax, rax
                                                                                        je    .Lx49_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx49_7]
                        lea              rdx, [rip + .Lx49_8]
                                                                                        jmp   rax
.Lx49_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx49_2
.Lx49_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx49_2
.Lx49_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n44_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx49_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n46_match_assign_cond_α
.Lx49_6:
                        add              rsp, 16
                                                                                        jmp   n44_match_assign_save_β
n45_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n46_match_assign_cond_α:
                        lea              rdi, [rbp + 48]
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
                                                                                        jmp   proc_PAT$4_scanhit
n46_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n45_match_patref_β
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
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
                                                                                        jmp   proc_PAT$4_attempt
8:
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
n52_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx57_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n55_match_patref_α
.Lx57_21:
                        lea              rax, [rip + .Lx57_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n54_match_patref_α
.Lx57_22:
                        lea              rax, [rip + .Lx57_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n53_match_patref_α
n52_match_alternate_s0:
                        lea              rax, [rip + .Lx57_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n52_match_alternate_as
n52_match_alternate_s1:
                        lea              rax, [rip + .Lx57_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n52_match_alternate_as
n52_match_alternate_s2:
                        lea              rax, [rip + .Lx57_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n52_match_alternate_as
.Lx57_40:
                                                                                        jmp   n55_match_patref_β
.Lx57_41:
                                                                                        jmp   n54_match_patref_β
.Lx57_42:
                                                                                        jmp   n53_match_patref_β
n52_match_alternate_as:
                                                                                        jmp   proc_PAT$5_γ
n52_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n52_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx57_19:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n53_match_patref_α:
                        mov              qword ptr [rbp + 80], rsp
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        cmp              eax, 3
                                                                                        jne   .Lx58_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx58_10
                        mov              rdi, rdx
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
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n52_match_alternate_s2
.Lx58_5:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n52_match_alternate_af
.Lx58_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx58_2
.Lx58_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx58_2
.Lx58_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n52_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx58_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n52_match_alternate_s2
.Lx58_6:
                        add              rsp, 16
                                                                                        jmp   n52_match_alternate_af
n53_match_patref_β:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n52_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n54_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx59_11
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 3
                                                                                        jne   .Lx59_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx59_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx59_10
.Lx59_9:
                        xor              eax, eax
.Lx59_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx59_11:
                        test             rax, rax
                                                                                        jz    .Lx59_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx59_4]
                        lea              rdx, [rip + .Lx59_5]
                                                                                        jmp   rax
.Lx59_4:
                                                                                        jmp   n52_match_alternate_s1
.Lx59_5:
                                                                                        jmp   n52_match_alternate_af
.Lx59_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx59_2:
                        test             rax, rax
                                                                                        je    .Lx59_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx59_7]
                        lea              rdx, [rip + .Lx59_8]
                                                                                        jmp   rax
.Lx59_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx59_2
.Lx59_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx59_2
.Lx59_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n52_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx59_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n52_match_alternate_s1
.Lx59_6:
                        add              rsp, 16
                                                                                        jmp   n52_match_alternate_af
n54_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n55_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx60_11
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx60_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx60_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx60_10
.Lx60_9:
                        xor              eax, eax
.Lx60_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx60_11:
                        test             rax, rax
                                                                                        jz    .Lx60_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx60_4]
                        lea              rdx, [rip + .Lx60_5]
                                                                                        jmp   rax
.Lx60_4:
                                                                                        jmp   n52_match_alternate_s0
.Lx60_5:
                                                                                        jmp   n52_match_alternate_af
.Lx60_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx60_2:
                        test             rax, rax
                                                                                        je    .Lx60_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx60_7]
                        lea              rdx, [rip + .Lx60_8]
                                                                                        jmp   rax
.Lx60_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx60_2
.Lx60_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx60_2
.Lx60_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n52_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx60_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n52_match_alternate_s0
.Lx60_6:
                        add              rsp, 16
                                                                                        jmp   n52_match_alternate_af
n55_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
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
n61_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n70_match_lit_α
n61_match_sequence_as:
                                                                                        jmp   proc_PAT$6_γ
n61_match_sequence_β:
                                                                                        jmp   n62_match_patref_β
n61_match_sequence_af:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
n62_match_patref_α:
                        mov              qword ptr [rbp + 128], rsp
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        cmp              eax, 3
                                                                                        jne   .Lx73_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx73_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx73_10
.Lx73_9:
                        xor              eax, eax
.Lx73_10:
                        test             rax, rax
                                                                                        jz    .Lx73_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx73_4]
                        lea              rdx, [rip + .Lx73_5]
                                                                                        jmp   rax
.Lx73_4:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   proc_PAT$6_γ
.Lx73_5:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n63_match_patref_β
.Lx73_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx73_2:
                        test             rax, rax
                                                                                        je    .Lx73_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx73_7]
                        lea              rdx, [rip + .Lx73_8]
                                                                                        jmp   rax
.Lx73_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx73_2
.Lx73_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx73_2
.Lx73_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n63_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx73_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   proc_PAT$6_γ
.Lx73_6:
                        add              rsp, 16
                                                                                        jmp   n63_match_patref_β
n62_match_patref_β:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n63_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n63_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx74_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx74_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx74_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx74_10
.Lx74_9:
                        xor              eax, eax
.Lx74_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx74_11:
                        test             rax, rax
                                                                                        jz    .Lx74_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx74_4]
                        lea              rdx, [rip + .Lx74_5]
                                                                                        jmp   rax
.Lx74_4:
                                                                                        jmp   n62_match_patref_α
.Lx74_5:
                                                                                        jmp   n64_match_lit_β
.Lx74_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx74_2:
                        test             rax, rax
                                                                                        je    .Lx74_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx74_7]
                        lea              rdx, [rip + .Lx74_8]
                                                                                        jmp   rax
.Lx74_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx74_2
.Lx74_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx74_2
.Lx74_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n64_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx74_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n62_match_patref_α
.Lx74_6:
                        add              rsp, 16
                                                                                        jmp   n64_match_lit_β
n63_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n64_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n65_match_patref_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 58
                                                                                        jne   n65_match_patref_β
                        add              r14d, 1
                                                                                        jmp   n63_match_patref_α
n64_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n65_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n65_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx77_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx77_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx77_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx77_10
.Lx77_9:
                        xor              eax, eax
.Lx77_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx77_11:
                        test             rax, rax
                                                                                        jz    .Lx77_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx77_4]
                        lea              rdx, [rip + .Lx77_5]
                                                                                        jmp   rax
.Lx77_4:
                                                                                        jmp   n64_match_lit_α
.Lx77_5:
                                                                                        jmp   n66_match_lit_β
.Lx77_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx77_2:
                        test             rax, rax
                                                                                        je    .Lx77_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx77_7]
                        lea              rdx, [rip + .Lx77_8]
                                                                                        jmp   rax
.Lx77_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx77_2
.Lx77_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx77_2
.Lx77_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n66_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx77_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n64_match_lit_α
.Lx77_6:
                        add              rsp, 16
                                                                                        jmp   n66_match_lit_β
n65_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n66_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n69_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   n69_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   n65_match_patref_α
n66_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n69_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n67_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n68_match_break_α
n67_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n70_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n68_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx83_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx83_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n70_match_lit_β
.Lx83_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx83_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx83_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n70_match_lit_β
.Lx83_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx83_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx83_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n70_match_lit_β
.Lx83_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx83_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx83_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n70_match_lit_β
.Lx83_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 34
                                                                                        je    .Lx83_1
                        add              ecx, 1
                                                                                        jmp   .Lx83_0
.Lx83_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n69_match_assign_cond_α
n68_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n70_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n69_match_assign_cond_α:
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
                                                                                        jmp   n66_match_lit_α
n69_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n68_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n70_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$6_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34
                                                                                        jne   proc_PAT$6_ω
                        add              r14d, 1
                                                                                        jmp   n67_match_assign_save_α
n70_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$6_ω
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 168]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 168]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 168], eax
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
n88_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n89_call_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n89_call_α:
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
                        lea              rdi, [rip + .Lrkfnzd142]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx141_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n91_lit_string_α
.Lx141_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n90_assign_α
n89_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n91_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 32
                                                                                        jmp   n91_lit_string_α
#=======================================================================================================================
#         digits = SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n92_call_α
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n92_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd146:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd146]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx145_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n94_lit_string_α
.Lx145_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n93_assign_α
n92_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n94_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 32
                                                                                        jmp   n94_lit_string_α
#=======================================================================================================================
#         str    = '"' BREAK('"') . S '"'
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n95_call_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n95_call_α:
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
                        lea              rdi, [rip + .Lrkfnzd150]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx149_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n97_lit_string_α
.Lx149_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n96_assign_α
n95_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n97_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 32
                                                                                        jmp   n97_lit_string_α
#=======================================================================================================================
#         num    = digits . N
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n98_call_α
.Lx152_0:
                        .quad            .Lx152_0_s
.Lx152_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n98_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd154:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd154]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx153_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n100_lit_string_α
.Lx153_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n99_assign_α
n98_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n100_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        add              rsp, 32
                                                                                        jmp   n100_lit_string_α
#=======================================================================================================================
#         bool   = FENCE('true' | 'false') . B
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n101_call_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n101_call_α:
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
                        lea              rdi, [rip + .Lrkfnzd158]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx157_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n103_lit_string_α
.Lx157_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n102_assign_α
n101_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n103_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        add              rsp, 32
                                                                                        jmp   n103_lit_string_α
#=======================================================================================================================
#         value  = FENCE(str | num | bool)
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n104_call_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n104_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd162:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd162]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx161_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n106_lit_string_α
.Lx161_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n105_assign_α
n104_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        add              rsp, 32
                                                                                        jmp   n106_lit_string_α
#=======================================================================================================================
#         pair   = '"' BREAK('"') . K '"' ws ':' ws value
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n107_call_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n107_call_α:
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
                        lea              rdi, [rip + .Lrkfnzd166]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx165_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n109_lit_string_α
.Lx165_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n108_assign_α
n107_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n109_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        add              rsp, 32
                                                                                        jmp   n109_lit_string_α
#=======================================================================================================================
#         s = '"age":42'
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n110_assign_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "\"age\":42"
#-----------------------------------------------------------------------------------------------------------------------
n110_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        add              rsp, 16
                                                                                        jmp   n111_var_α
#=======================================================================================================================
#         s POS(0) pair RPOS(0)                                 :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:
                        sub              rsp, 656
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n112_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n112_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 536], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 544], r13
                        mov              qword ptr [rbp + 552], r14
                        mov              qword ptr [rbp + 560], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 568], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        mov              qword ptr [r10 + 8], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r10 + 16], rax
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 512], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 504], rax
                        mov              dword ptr [rbp + 496], 0
.Lx172_0:
                        mov              r14d, dword ptr [rbp + 496]
                                                                                        jmp   n113_match_sequence_α
n112_match_head_β:
                        add              dword ptr [rbp + 496], 1
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, r15d
                                                                                        jg    .Lx172_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx172_1
                                                                                        jmp   .Lx172_0
.Lx172_1:
                        mov              rax, qword ptr [rbp + 504]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 512]
                        mov              r10, qword ptr [1879048192]
.Lx172_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx172_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 544]
                        mov              r14, qword ptr [rbp + 552]
                        mov              r15, qword ptr [rbp + 560]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 568]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 536]
                        add              rsp, 656
                                                                                        jmp   n136_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_match_sequence_α:
                        mov              dword ptr [rbp + 576], r14d
                                                                                        jmp   n134_lit_integer_α
n113_match_sequence_as:
                                                                                        jmp   n114_match_release_α
n113_match_sequence_β:
                                                                                        jmp   n132_match_rpos_β
n113_match_sequence_af:
                                                                                        jmp   n112_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n114_match_release_α:
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
.Lx176_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx176_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx176_1:
                        test             rax, rax
                                                                                        je    .Lx176_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx176_3]
                        lea              rdx, [rip + .Lx176_4]
                                                                                        jmp   rax
.Lx176_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx176_1
.Lx176_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx176_1
.Lx176_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx176_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx176_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 544]
                        mov              r14, qword ptr [rbp + 552]
                        mov              r15, qword ptr [rbp + 560]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 568]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 536]
                        add              rsp, 656
                                                                                        jmp   n115_lit_string_α
#=======================================================================================================================
# YES     OUTPUT = 'k=' K ' s=' S ' n=' N ' b=' B               :(END)
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n116_var_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "k="
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n117_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n117_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n118_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n119_binop_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          " s="
#-----------------------------------------------------------------------------------------------------------------------
n119_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n120_var_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n121_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n121_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n122_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n123_binop_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          " n="
#-----------------------------------------------------------------------------------------------------------------------
n123_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n124_var_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n125_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n125_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n126_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n127_binop_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          " b="
#-----------------------------------------------------------------------------------------------------------------------
n127_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n128_var_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n129_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n129_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n130_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n130_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx192_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 240
                                                                                        jmp   main_γ
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:
                        mov              qword ptr [rsp + 624], 6
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rsp + 632], rax
                                                                                        jmp   n132_match_rpos_α
n131_lit_integer_β:
                                                                                        jmp   n133_match_patref_β
.Lx193_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n132_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n133_match_patref_β
                                                                                        jmp   n114_match_release_α
n132_match_rpos_β:
                                                                                        jmp   n133_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n133_match_patref_α:
                        mov              qword ptr [rbp + 608], rsp
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        cmp              eax, 3
                                                                                        jne   .Lx195_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx195_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx195_10
.Lx195_9:
                        xor              eax, eax
.Lx195_10:
                        test             rax, rax
                                                                                        jz    .Lx195_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx195_4]
                        lea              rdx, [rip + .Lx195_5]
                                                                                        jmp   rax
.Lx195_4:
                        mov              rsp, qword ptr [rbp + 608]
                                                                                        jmp   n131_lit_integer_α
.Lx195_5:
                        mov              rsp, qword ptr [rbp + 608]
                                                                                        jmp   n112_match_head_β
.Lx195_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx195_2:
                        test             rax, rax
                                                                                        je    .Lx195_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx195_7]
                        lea              rdx, [rip + .Lx195_8]
                                                                                        jmp   rax
.Lx195_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx195_2
.Lx195_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx195_2
.Lx195_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n112_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx195_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n131_lit_integer_α
.Lx195_6:
                        add              rsp, 16
                                                                                        jmp   n112_match_head_β
n133_match_patref_β:
                        mov              rsp, qword ptr [rbp + 608]
                                                                                        jmp   n112_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:
                        mov              qword ptr [rsp + 592], 6
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n135_match_pos_α
n134_lit_integer_β:
                                                                                        jmp   n112_match_head_β
.Lx196_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n135_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n112_match_head_β
                                                                                        jmp   n133_match_patref_α
n135_match_pos_β:
                                                                                        jmp   n112_match_head_β
#=======================================================================================================================
# NO      OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n137_assign_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx199_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n138_goto_α:
                                                                                        jmp   n115_lit_string_α
n138_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n139_goto_α:
                                                                                        jmp   n136_lit_string_α
n139_goto_β:
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
