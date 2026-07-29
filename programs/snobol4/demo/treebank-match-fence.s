                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        .global          proc_PAT$0_α
                        .global          proc_PAT$0_β
                        .global          proc_PAT$0_γ
                        .global          proc_PAT$0_ω
                        sub              rsp, 64
                        mov              [rsp + 40], rcx
                        mov              [rsp + 48], rdx
                        mov              [rsp + 56], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], r8
                        mov              dword ptr [rsp + 24], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n0_match_span_β]
                        mov              qword ptr [rbp + 16], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_span_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx2_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx2_10
                        cmp              esi, 10
                                                                                        je    .Lx2_10
                                                                                        jmp   .Lx2_1
.Lx2_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx2_11
                        cmp              esi, 10
                                                                                        je    .Lx2_11
                                                                                        jmp   .Lx2_1
.Lx2_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx2_12
                        cmp              esi, 10
                                                                                        je    .Lx2_12
                                                                                        jmp   .Lx2_1
.Lx2_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx2_13
                        cmp              esi, 10
                                                                                        je    .Lx2_13
                                                                                        jmp   .Lx2_1
.Lx2_13:
                        add              ecx, 1
                                                                                        jmp   .Lx2_0
.Lx2_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx2_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx2_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   proc_PAT$0_scanhit
n0_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 32], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 24]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
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
                                                                                        jmp   proc_PAT$0_attempt
8:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 16]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, [rbp + 40]
                        mov              rbp, [rbp + 56]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, [rbp + 48]
                        lea              rsp, [rbp + 64]
                        mov              rbp, [rbp + 56]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        .global          proc_PAT$1_α
                        .global          proc_PAT$1_β
                        .global          proc_PAT$1_γ
                        .global          proc_PAT$1_ω
                        sub              rsp, 96
                        mov              [rsp + 72], rcx
                        mov              [rsp + 80], rdx
                        mov              [rsp + 88], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], r8
                        mov              dword ptr [rsp + 56], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n3_match_sequence_β]
                        mov              qword ptr [rbp + 48], rax
#-----------------------------------------------------------------------------------------------------------------------
n3_match_sequence_α:
                                                                                        jmp   n4_match_notany_α
n3_match_sequence_as:
                                                                                        jmp   proc_PAT$1_γ
n3_match_sequence_β:
                                                                                        jmp   n5_match_break_β
n3_match_sequence_af:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_match_notany_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   proc_PAT$1_ω
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   proc_PAT$1_ω
                        add              r14d, 1
                                                                                        jmp   n5_match_break_α
n4_match_notany_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_match_break_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx10_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx10_237
                        add              rsp, 16
                                                                                        jmp   n4_match_notany_β
.Lx10_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx10_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx10_238
                        add              rsp, 16
                                                                                        jmp   n4_match_notany_β
.Lx10_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx10_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx10_239
                        add              rsp, 16
                                                                                        jmp   n4_match_notany_β
.Lx10_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx10_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx10_240
                        add              rsp, 16
                                                                                        jmp   n4_match_notany_β
.Lx10_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jnz   .Lx10_1
                        add              ecx, 1
                                                                                        jmp   .Lx10_0
.Lx10_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   proc_PAT$1_γ
n5_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n4_match_notany_β
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 56]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
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
                                                                                        jmp   proc_PAT$1_attempt
8:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 48]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, [rbp + 72]
                        mov              rbp, [rbp + 88]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, [rbp + 80]
                        lea              rsp, [rbp + 96]
                        mov              rbp, [rbp + 88]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        .global          proc_PAT$2_α
                        .global          proc_PAT$2_β
                        .global          proc_PAT$2_γ
                        .global          proc_PAT$2_ω
                        sub              rsp, 288
                        mov              [rsp + 264], rcx
                        mov              [rsp + 272], rdx
                        mov              [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], r8
                        mov              dword ptr [rsp + 248], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + proc_PAT$2_ω]
                        mov              qword ptr [rbp + 240], rax
#-----------------------------------------------------------------------------------------------------------------------
n11_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n12_match_lit_α
n11_match_sequence_as:
                                                                                        jmp   proc_PAT$2_γ
n11_match_sequence_β:
                                                                                        jmp   n15_match_lit_β
n11_match_sequence_af:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$2_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   proc_PAT$2_ω
                        add              r14d, 1
                                                                                        jmp   n13_match_defer_α
n12_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx25_11
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx25_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx25_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx25_10
.Lx25_9:
                        xor              eax, eax
.Lx25_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx25_11:
                        test             rax, rax
                                                                                        jz    .Lx25_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx25_4]
                        lea              rdx, [rip + .Lx25_5]
                                                                                        jmp   rax
.Lx25_4:
                                                                                        jmp   n14_match_arbno_α
.Lx25_5:
                                                                                        jmp   n12_match_lit_β
.Lx25_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx25_2:
                        test             rax, rax
                                                                                        je    .Lx25_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx25_7]
                        lea              rdx, [rip + .Lx25_8]
                                                                                        jmp   rax
.Lx25_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx25_2
.Lx25_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx25_2
.Lx25_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n12_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx25_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n14_match_arbno_α
.Lx25_6:
                        add              rsp, 16
                                                                                        jmp   n12_match_lit_β
n13_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n14_match_arbno_α:
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                                                                                        jmp   n15_match_lit_α
n14_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 84]
                        mov              rax, qword ptr [rbp + 96]
                        sub              rsp, 160
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 96], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                                                                                        jmp   n16_match_defer_α
n14_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n14_match_arbno_af
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                                                                                        jmp   n15_match_lit_α
n14_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 248]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 88]
                        test             ecx, ecx
                                                                                        jz    .Lx27_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 88], ecx
                        mov              qword ptr [rbp + 96], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n14_match_arbno_af
.Lx27_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   n13_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n14_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n14_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$2_γ
n15_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n14_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx30_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx30_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx30_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx30_10
.Lx30_9:
                        xor              eax, eax
.Lx30_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx30_11:
                        test             rax, rax
                                                                                        jz    .Lx30_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx30_4]
                        lea              rdx, [rip + .Lx30_5]
                                                                                        jmp   rax
.Lx30_4:
                                                                                        jmp   n17_match_fence1_α
.Lx30_5:
                                                                                        jmp   n14_match_arbno_af
.Lx30_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx30_2:
                        test             rax, rax
                                                                                        je    .Lx30_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx30_7]
                        lea              rdx, [rip + .Lx30_8]
                                                                                        jmp   rax
.Lx30_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx30_2
.Lx30_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx30_2
.Lx30_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n14_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx30_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n17_match_fence1_α
.Lx30_6:
                        add              rsp, 16
                                                                                        jmp   n14_match_arbno_af
n16_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n17_match_fence1_α:
                        mov              qword ptr [rbp + 128], rsp
                                                                                        jmp   n18_match_alternate_α
n17_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 128], rbp
                                                                                        jmp   n14_match_arbno_as
n17_match_fence1_β:
n17_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n14_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n18_match_alternate_α:
                        mov              dword ptr [rbp + 144], r14d
                        lea              rax, [rip + .Lx34_21]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n19_match_defer_α
.Lx34_21:
                        lea              rax, [rip + .Lx34_19]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n20_match_defer_α
n18_match_alternate_s0:
                        lea              rax, [rip + .Lx34_40]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n18_match_alternate_as
n18_match_alternate_s1:
                        lea              rax, [rip + .Lx34_41]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n18_match_alternate_as
.Lx34_40:
                                                                                        jmp   n19_match_defer_β
.Lx34_41:
                                                                                        jmp   n20_match_defer_β
n18_match_alternate_as:
                                                                                        jmp   n17_match_fence1_as
n18_match_alternate_β:
                        mov              rax, qword ptr [rbp + 152]
                                                                                        jmp   rax
n18_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 144]
                        mov              rax, qword ptr [rbp + 160]
                                                                                        jmp   rax
.Lx34_19:
                                                                                        jmp   n17_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n19_match_defer_α:
                        mov              qword ptr [rbp + 176], rsp
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx35_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx35_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx35_10
.Lx35_9:
                        xor              eax, eax
.Lx35_10:
                        test             rax, rax
                                                                                        jz    .Lx35_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx35_4]
                        lea              rdx, [rip + .Lx35_5]
                                                                                        jmp   rax
.Lx35_4:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n18_match_alternate_s0
.Lx35_5:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n18_match_alternate_af
.Lx35_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx35_2:
                        test             rax, rax
                                                                                        je    .Lx35_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx35_7]
                        lea              rdx, [rip + .Lx35_8]
                                                                                        jmp   rax
.Lx35_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx35_2
.Lx35_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx35_2
.Lx35_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n18_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx35_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n18_match_alternate_s0
.Lx35_6:
                        add              rsp, 16
                                                                                        jmp   n18_match_alternate_af
n19_match_defer_β:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n18_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n20_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx36_11
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx36_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx36_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx36_10
.Lx36_9:
                        xor              eax, eax
.Lx36_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx36_11:
                        test             rax, rax
                                                                                        jz    .Lx36_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx36_4]
                        lea              rdx, [rip + .Lx36_5]
                                                                                        jmp   rax
.Lx36_4:
                                                                                        jmp   n18_match_alternate_s1
.Lx36_5:
                                                                                        jmp   n18_match_alternate_af
.Lx36_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx36_2:
                        test             rax, rax
                                                                                        je    .Lx36_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx36_7]
                        lea              rdx, [rip + .Lx36_8]
                                                                                        jmp   rax
.Lx36_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx36_2
.Lx36_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx36_2
.Lx36_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n18_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx36_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n18_match_alternate_s1
.Lx36_6:
                        add              rsp, 16
                                                                                        jmp   n18_match_alternate_af
n20_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 256], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 248]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 256], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 248]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 248], eax
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
                                                                                        jmp   qword ptr [rbp + 240]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, [rbp + 264]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, [rbp + 272]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        .global          proc_PAT$3_α
                        .global          proc_PAT$3_β
                        .global          proc_PAT$3_γ
                        .global          proc_PAT$3_ω
                        sub              rsp, 320
                        mov              [rsp + 296], rcx
                        mov              [rsp + 304], rdx
                        mov              [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], r8
                        mov              dword ptr [rsp + 280], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + n37_match_sequence_β]
                        mov              qword ptr [rbp + 272], rax
#-----------------------------------------------------------------------------------------------------------------------
n37_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n38_lit_integer_α
n37_match_sequence_as:
                                                                                        jmp   proc_PAT$3_γ
n37_match_sequence_β:
                                                                                        jmp   n42_match_rpos_β
n37_match_sequence_af:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n39_match_pos_α
n38_lit_integer_β:
                                                                                        jmp   proc_PAT$3_ω
.Lx49_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n39_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$3_ω
                                                                                        jmp   n40_match_arbno_α
n39_match_pos_β:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n40_match_arbno_α:
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                                                                                        jmp   n41_lit_integer_α
n40_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 84]
                        mov              rax, qword ptr [rbp + 96]
                        sub              rsp, 176
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 96], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                                                                                        jmp   n43_match_sequence_α
n40_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n40_match_arbno_af
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                                                                                        jmp   n41_lit_integer_α
n40_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 264]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 88]
                        test             ecx, ecx
                                                                                        jz    .Lx52_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 88], ecx
                        mov              qword ptr [rbp + 96], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n40_match_arbno_af
.Lx52_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   n39_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n42_match_rpos_α
n41_lit_integer_β:
                                                                                        jmp   n40_match_arbno_β
.Lx53_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n42_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n40_match_arbno_β
                                                                                        jmp   proc_PAT$3_γ
n42_match_rpos_β:
                                                                                        jmp   n40_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n43_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n45_match_arbno_α
n43_match_sequence_as:
                                                                                        jmp   n40_match_arbno_as
n43_match_sequence_β:
                                                                                        jmp   n44_match_defer_β
n43_match_sequence_af:
                                                                                        jmp   n40_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n44_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx57_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx57_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx57_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx57_10
.Lx57_9:
                        xor              eax, eax
.Lx57_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx57_11:
                        test             rax, rax
                                                                                        jz    .Lx57_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx57_4]
                        lea              rdx, [rip + .Lx57_5]
                                                                                        jmp   rax
.Lx57_4:
                                                                                        jmp   n40_match_arbno_as
.Lx57_5:
                                                                                        jmp   n45_match_arbno_β
.Lx57_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx57_2
.Lx57_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx57_2
.Lx57_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n45_match_arbno_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx57_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n40_match_arbno_as
.Lx57_6:
                        add              rsp, 16
                                                                                        jmp   n45_match_arbno_β
n44_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n45_match_arbno_α:
                        mov              dword ptr [rbp + 160], r14d
                        mov              dword ptr [rbp + 164], r14d
                        mov              dword ptr [rbp + 168], 0
                        mov              qword ptr [rbp + 184], rsp
                        mov              qword ptr [rbp + 176], 0
                                                                                        jmp   n44_match_defer_α
n45_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 164]
                        mov              rax, qword ptr [rbp + 176]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 176], rsp
                        mov              rbp, rsp
                        add              rbp, -168
                                                                                        jmp   n46_match_defer_α
n45_match_arbno_as:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              r14d, eax
                                                                                        je    n46_match_defer_β
                        mov              rbp, qword ptr [rbp + 168]
                        mov              eax, dword ptr [rbp + 168]
                        add              eax, 1
                        mov              dword ptr [rbp + 168], eax
                        mov              dword ptr [rbp + 164], r14d
                                                                                        jmp   n44_match_defer_α
n45_match_arbno_af:
                        mov              rax, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              rsp, [rbp + 232]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 168]
                        test             ecx, ecx
                                                                                        jz    .Lx59_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 168], ecx
                        mov              qword ptr [rbp + 176], rax
                        lea              rbp, [rax + -168]
                                                                                        jmp   n46_match_defer_β
.Lx59_2:
                        mov              r14d, dword ptr [rbp + 160]
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   n40_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n46_match_defer_α:
                        mov              qword ptr [rbp + 208], rsp
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
                        test             rax, rax
                                                                                        jz    .Lx60_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx60_4]
                        lea              rdx, [rip + .Lx60_5]
                                                                                        jmp   rax
.Lx60_4:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n45_match_arbno_as
.Lx60_5:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n45_match_arbno_af
.Lx60_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
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
                                                                                        js    n45_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx60_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n45_match_arbno_as
.Lx60_6:
                        add              rsp, 16
                                                                                        jmp   n45_match_arbno_af
n46_match_defer_β:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n45_match_arbno_af
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 280]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 280]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 280], eax
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
                                                                                        jmp   qword ptr [rbp + 272]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, [rbp + 296]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, [rbp + 312]
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
                        mov              esi, 32
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
                        mov              esi, 64
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
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
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
                        mov              esi, 288
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "delim"
.Lgvan1:                .string          "word"
.Lgvan2:                .string          "group"
.Lgvan3:                .string          "treebank"
.Lgvan4:                .string          "src"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 5
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 5
                        call             gva_register@PLT
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
                        sub              rsp, 776
                        mov              rdi, rsp
                        mov              ecx, 776
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
#                delim          =  SPAN(' ' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        mov              qword ptr [rsp + 64], 1
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n63_call_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n62_goto_α:
                                                                                        jmp   n64_lit_string_α
n62_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n63_call_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn98:               .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn98]
                        lea              rsi, [rsp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n66_lit_string_α
                                                                                        jmp   n65_assign_α
n63_call_β:
                                                                                        jmp   n66_lit_string_α
#=======================================================================================================================
# main_fail      OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n67_assign_α
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n66_lit_string_α
#=======================================================================================================================
#                word           =  NOTANY('( )' CHAR(10)) BREAK('( )' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rsp + 128], 1
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n68_call_α
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx102_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn104:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn104]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n70_lit_string_α
                                                                                        jmp   n69_assign_α
n68_call_β:
                                                                                        jmp   n70_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n70_lit_string_α
#=======================================================================================================================
#                group          =  FENCE('(' word ARBNO(delim FENCE( *group | word )) ')')
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rsp + 192], 1
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n71_call_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn108:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn108]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n73_lit_string_α
                                                                                        jmp   n72_assign_α
n71_call_β:
                                                                                        jmp   n73_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n73_lit_string_α
#=======================================================================================================================
#                treebank       =  POS(0) ARBNO(FENCE(ARBNO(*group) delim)) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rsp + 256], 1
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n74_call_α
.Lx110_0:
                        .quad            .Lx110_0_s
.Lx110_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n74_call_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        .section         .rodata
.Lrkfn112:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn112]
                        lea              rsi, [rsp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n76_lit_string_α
                                                                                        jmp   n75_assign_α
n74_call_β:
                                                                                        jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n76_lit_string_α
#=======================================================================================================================
#                 &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rsp + 336], 1
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n77_lit_integer_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:
                        mov              qword ptr [rsp + 352], 6
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n78_call_α
.Lx115_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn117:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn117]
                        lea              rsi, [rsp + 288]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n79_lit_string_α
                                                                                        jmp   n79_lit_string_α
n78_call_β:
                                                                                        jmp   n79_lit_string_α
#=======================================================================================================================
#                INPUT(.INPUT, 9, '[-f0 -r1000000]')
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rsp + 496], 1
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n80_call_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n80_call_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn120:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn120]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n82_var_α
                                                                                        jmp   n81_lit_integer_α
n80_call_β:
                                                                                        jmp   n82_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:
                        mov              qword ptr [rsp + 512], 6
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n83_lit_string_α
.Lx121_0:
                        .quad            9
#=======================================================================================================================
#                src            =  INPUT                      :F(main_fail)
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx122_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx122_240
                        add              rsp, 16
                                                                                        jmp   n64_lit_string_α
.Lx122_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n84_assign_α
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rsp + 528], 1
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n85_call_α
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "[-f0 -r1000000]"
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n86_var_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lbynamefn49:           .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn49]
                        lea              rsi, [rsp + 384]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n82_var_α
                                                                                        jmp   n82_var_α
n85_call_β:
                                                                                        jmp   n82_var_α
#=======================================================================================================================
#                src            treebank                      :F(main_fail)
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                                                                                        jmp   n87_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n87_match_head_α:
                        mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              rax, qword ptr [1879048192]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 592], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 584], rax
                        mov              dword ptr [rsp + 576], 0
.Lx128_0:
                        mov              r14d, dword ptr [rsp + 576]
                                                                                        jmp   n88_match_defer_α
n87_match_head_β:
                        add              dword ptr [rsp + 576], 1
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, r15d
                                                                                        jg    .Lx128_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx128_1
                                                                                        jmp   .Lx128_0
.Lx128_1:
                        mov              rax, qword ptr [rsp + 584]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 592]
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n64_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n88_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx129_11
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 3
                                                                                        jne   .Lx129_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx129_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx129_10
.Lx129_9:
                        xor              eax, eax
.Lx129_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx129_11:
                        test             rax, rax
                                                                                        jz    .Lx129_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx129_4]
                        lea              rdx, [rip + .Lx129_5]
                                                                                        jmp   rax
.Lx129_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rsp + 576], eax
                                                                                        jmp   n89_match_release_α
.Lx129_5:
                                                                                        jmp   n87_match_head_β
.Lx129_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx129_2:
                        test             rax, rax
                                                                                        je    .Lx129_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx129_7]
                        lea              rdx, [rip + .Lx129_8]
                                                                                        jmp   rax
.Lx129_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx129_2
.Lx129_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx129_2
.Lx129_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n87_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx129_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n89_match_release_α
.Lx129_6:
                        add              rsp, 16
                                                                                        jmp   n87_match_head_β
n88_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n89_match_release_α:
                        mov              rax, qword ptr [rsp + 584]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 592]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [1879048192]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx131_1:
                        test             rax, rax
                                                                                        je    .Lx131_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx131_3]
                        lea              rdx, [rip + .Lx131_4]
                                                                                        jmp   rax
.Lx131_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx131_1
.Lx131_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx131_1
.Lx131_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n90_lit_string_α
#=======================================================================================================================
#                OUTPUT         =  'matched bytes=' SIZE(src) :(END)
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rsp + 672], 1
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 680], rax
                                                                                        jmp   n91_var_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                                                                                        jmp   n92_call_α
#-----------------------------------------------------------------------------------------------------------------------
n92_call_α:
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn135:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]
                        lea              rsi, [rsp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 99
                                                                                        je    main_γ
                                                                                        jmp   n93_binop_α
n92_call_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n93_binop_α:
                        mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, qword ptr [rsp + 680]
                        mov              rdx, qword ptr [rsp + 688]
                        mov              rcx, qword ptr [rsp + 696]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                                                                                        jmp   n94_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:
                        mov              rsi, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              rdi, qword ptr [rip + .Lx137_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 776
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 776
                        ret
                        .section         .rodata
.S0:                    .string          "word"
.S1:                    .string          "delim"
.S2:                    .string          "group"
.S3:                    .string          "treebank"
                        .text
                        .section         .rodata
.C0:
                        .byte            0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0
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
                        .text
                        .section         .note.GNU-stack,"",@progbits
