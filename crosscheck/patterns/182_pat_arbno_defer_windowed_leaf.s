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
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx2_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx2_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx2_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx2_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx2_1
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
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], r8
                        mov              dword ptr [rsp + 88], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n3_match_alternate_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n3_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx7_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n4_match_span_α
.Lx7_21:
                        lea              rax, [rip + .Lx7_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n5_match_lit_α
n3_match_alternate_s0:
                        lea              rax, [rip + .Lx7_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n3_match_alternate_as
n3_match_alternate_s1:
                        lea              rax, [rip + .Lx7_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n3_match_alternate_as
.Lx7_40:
                                                                                        jmp   n4_match_span_β
.Lx7_41:
                                                                                        jmp   n5_match_lit_β
n3_match_alternate_as:
                                                                                        jmp   proc_PAT$1_γ
n3_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n3_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx7_19:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_match_span_α:
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx9_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx9_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx9_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx9_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx9_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx9_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx9_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx9_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx9_1
                        add              ecx, 1
                                                                                        jmp   .Lx9_0
.Lx9_1:
                        cmp              ecx, r14d
                                                                                        jle   n3_match_alternate_af
                        mov              dword ptr [rbp + 52], r14d
                        mov              r14d, ecx
                                                                                        jmp   n3_match_alternate_s0
n4_match_span_β:
                        mov              r14d, dword ptr [rbp + 52]
                                                                                        jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n5_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n3_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 120
                                                                                        jne   n3_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n3_match_alternate_s1
n5_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n3_match_alternate_af
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
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
                                                                                        jmp   proc_PAT$1_attempt
8:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, [rbp + 104]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        .global          proc_PAT$2_α
                        .global          proc_PAT$2_β
                        .global          proc_PAT$2_γ
                        .global          proc_PAT$2_ω
                        sub              rsp, 144
                        mov              [rsp + 120], rcx
                        mov              [rsp + 128], rdx
                        mov              [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + n12_match_alternate_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n12_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx19_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n13_match_span_α
.Lx19_21:
                        lea              rax, [rip + .Lx19_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n14_match_sequence_α
n12_match_alternate_s0:
                        lea              rax, [rip + .Lx19_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n12_match_alternate_as
n12_match_alternate_s1:
                        lea              rax, [rip + .Lx19_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n12_match_alternate_as
.Lx19_40:
                                                                                        jmp   n13_match_span_β
.Lx19_41:
                                                                                        jmp   n14_match_sequence_β
n12_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n12_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n12_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx19_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx21_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx21_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx21_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx21_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx21_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx21_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx21_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx21_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx21_1
                        add              ecx, 1
                                                                                        jmp   .Lx21_0
.Lx21_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx21_240
                        add              rsp, 16
                                                                                        jmp   n12_match_alternate_af
.Lx21_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n12_match_alternate_s0
n13_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n12_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n14_match_sequence_α:
                        mov              dword ptr [rbp + 48], r14d
                                                                                        jmp   n15_match_lit_α
n14_match_sequence_as:
                                                                                        jmp   n12_match_alternate_s1
n14_match_sequence_β:
                                                                                        jmp   n17_match_lit_β
n14_match_sequence_af:
                                                                                        jmp   n12_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n15_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n12_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n12_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n16_match_defer_α
n15_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n12_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n16_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx26_11
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx26_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx26_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx26_10
.Lx26_9:
                        xor              eax, eax
.Lx26_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx26_11:
                        test             rax, rax
                                                                                        jz    .Lx26_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx26_4]
                        lea              rdx, [rip + .Lx26_5]
                                                                                        jmp   rax
.Lx26_4:
                                                                                        jmp   n17_match_lit_α
.Lx26_5:
                                                                                        jmp   n15_match_lit_β
.Lx26_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx26_2:
                        test             rax, rax
                                                                                        je    .Lx26_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx26_7]
                        lea              rdx, [rip + .Lx26_8]
                                                                                        jmp   rax
.Lx26_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx26_2
.Lx26_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx26_2
.Lx26_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n15_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx26_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n17_match_lit_α
.Lx26_6:
                        add              rsp, 16
                                                                                        jmp   n15_match_lit_β
n16_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n17_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n16_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n16_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n12_match_alternate_s1
n17_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n16_match_defer_β
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
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
                        mov              rax, [rbp + 120]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        .global          proc_PAT$3_α
                        .global          proc_PAT$3_β
                        .global          proc_PAT$3_γ
                        .global          proc_PAT$3_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], r8
                        mov              dword ptr [rsp + 184], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + n29_match_sequence_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n29_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n30_match_lit_α
n29_match_sequence_as:
                                                                                        jmp   proc_PAT$3_γ
n29_match_sequence_β:
                                                                                        jmp   n33_match_lit_β
n29_match_sequence_af:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n30_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$3_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   proc_PAT$3_ω
                        add              r14d, 1
                                                                                        jmp   n31_match_defer_α
n30_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx41_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx41_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx41_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx41_10
.Lx41_9:
                        xor              eax, eax
.Lx41_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx41_11:
                        test             rax, rax
                                                                                        jz    .Lx41_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx41_4]
                        lea              rdx, [rip + .Lx41_5]
                                                                                        jmp   rax
.Lx41_4:
                                                                                        jmp   n32_match_arbno_α
.Lx41_5:
                                                                                        jmp   n30_match_lit_β
.Lx41_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx41_2:
                        test             rax, rax
                                                                                        je    .Lx41_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx41_7]
                        lea              rdx, [rip + .Lx41_8]
                                                                                        jmp   rax
.Lx41_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx41_2
.Lx41_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx41_2
.Lx41_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n30_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx41_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n32_match_arbno_α
.Lx41_6:
                        add              rsp, 16
                                                                                        jmp   n30_match_lit_β
n31_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n32_match_arbno_α:
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                                                                                        jmp   n33_match_lit_α
n32_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 84]
                        mov              rax, qword ptr [rbp + 96]
                        sub              rsp, 176
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 96], rsp
                        mov              rbp, rsp
                        add              rbp, -8
                                                                                        jmp   n34_match_sequence_α
n32_match_arbno_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              r14d, eax
                                                                                        je    n34_match_sequence_β
                        mov              rbp, qword ptr [rbp + 8]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                                                                                        jmp   n33_match_lit_α
n32_match_arbno_af:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 8]
                        lea              rsp, [rbp + 184]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 88]
                        test             ecx, ecx
                                                                                        jz    .Lx43_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 88], ecx
                        mov              qword ptr [rbp + 96], rax
                        lea              rbp, [rax + -8]
                                                                                        jmp   n34_match_sequence_β
.Lx43_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   n31_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n33_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n32_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n32_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$3_γ
n33_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n32_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n34_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n36_match_lit_α
n34_match_sequence_as:
                                                                                        jmp   n32_match_arbno_as
n34_match_sequence_β:
                                                                                        jmp   n35_match_defer_β
n34_match_sequence_af:
                                                                                        jmp   n32_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n35_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx48_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx48_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx48_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx48_10
.Lx48_9:
                        xor              eax, eax
.Lx48_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx48_11:
                        test             rax, rax
                                                                                        jz    .Lx48_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx48_4]
                        lea              rdx, [rip + .Lx48_5]
                                                                                        jmp   rax
.Lx48_4:
                                                                                        jmp   n32_match_arbno_as
.Lx48_5:
                                                                                        jmp   n36_match_lit_β
.Lx48_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx48_2:
                        test             rax, rax
                                                                                        je    .Lx48_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx48_7]
                        lea              rdx, [rip + .Lx48_8]
                                                                                        jmp   rax
.Lx48_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx48_2
.Lx48_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx48_2
.Lx48_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n36_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx48_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n32_match_arbno_as
.Lx48_6:
                        add              rsp, 16
                                                                                        jmp   n36_match_lit_β
n35_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n36_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n32_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n32_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n35_match_defer_α
n36_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n32_match_arbno_af
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 192], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 184]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 192], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 184]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 184], eax
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
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, [rbp + 200]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
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
                        mov              esi, 96
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
                        mov              esi, 112
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
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "ITEM"
.Lgvan1:                .string          "ITEM2"
.Lgvan2:                .string          "NEST"
.Lgvan3:                .string          "LISTP"
.Lgvan4:                .string          "S1"
.Lgvan5:                .string          "S2"
.Lgvan6:                .string          "S3"
.Lgvan7:                .string          "S4"
.Lgvan8:                .string          "S5"
.Lgvan9:                .string          "S6"
.Lgvan10:               .string          "S7"
.Lgvan11:               .string          "S8"
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
                        sub              rsp, 2984
                        mov              rdi, rsp
                        mov              ecx, 2984
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2976], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#         ITEM  = SPAN("0123456789")
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n76_call_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n52_goto_α:
                                                                                        jmp   n77_lit_string_α
n52_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n53_goto_α:
                                                                                        jmp   n78_lit_string_α
n53_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n54_goto_α:
                                                                                        jmp   n79_var_α
n54_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n55_goto_α:
                                                                                        jmp   n80_lit_string_α
n55_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n56_goto_α:
                                                                                        jmp   n81_lit_string_α
n56_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n57_goto_α:
                                                                                        jmp   n82_var_α
n57_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n58_goto_α:
                                                                                        jmp   n83_lit_string_α
n58_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n59_goto_α:
                                                                                        jmp   n84_lit_string_α
n59_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n60_goto_α:
                                                                                        jmp   n85_var_α
n60_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n61_goto_α:
                                                                                        jmp   n86_lit_string_α
n61_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n62_goto_α:
                                                                                        jmp   n87_lit_string_α
n62_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n63_goto_α:
                                                                                        jmp   n88_var_α
n63_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n64_goto_α:
                                                                                        jmp   n89_lit_string_α
n64_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n65_goto_α:
                                                                                        jmp   n90_lit_string_α
n65_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n66_goto_α:
                                                                                        jmp   n91_var_α
n66_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n67_goto_α:
                                                                                        jmp   n92_lit_string_α
n67_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n68_goto_α:
                                                                                        jmp   n93_lit_string_α
n68_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n69_goto_α:
                                                                                        jmp   n94_var_α
n69_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n70_goto_α:
                                                                                        jmp   n95_lit_string_α
n70_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n71_goto_α:
                                                                                        jmp   n96_lit_string_α
n71_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n72_goto_α:
                                                                                        jmp   n97_var_α
n72_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n73_goto_α:
                                                                                        jmp   n98_lit_string_α
n73_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n74_goto_α:
                                                                                        jmp   n99_lit_string_α
n74_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n75_goto_α:
                                                                                        jmp   main_γ
n75_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn283:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn283]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n101_lit_string_α
                                                                                        jmp   n100_assign_α
n76_call_β:
                                                                                        jmp   n101_lit_string_α
#=======================================================================================================================
# A1      OUTPUT = "T1 MATCH"             :(N1)
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n102_assign_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "T1 MATCH"
#=======================================================================================================================
# B1      OUTPUT = "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n103_assign_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "T1 NOMATCH"
#=======================================================================================================================
# N1      S2 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)  :S(A2)F(B2)
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n104_match_head_α
#=======================================================================================================================
# A2      OUTPUT = "T2 MATCH"             :(N2)
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n105_assign_α
.Lx287_0:
                        .quad            .Lx287_0_s
.Lx287_0_s:
                        .string          "T2 MATCH"
#=======================================================================================================================
# B2      OUTPUT = "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n106_assign_α
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "T2 NOMATCH"
#=======================================================================================================================
# N2      S3 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)  :S(A3)F(B3)
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n107_match_head_α
#=======================================================================================================================
# A3      OUTPUT = "T3 MATCH"             :(N3)
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n108_assign_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "T3 MATCH"
#=======================================================================================================================
# B3      OUTPUT = "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n109_assign_α
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          "T3 NOMATCH"
#=======================================================================================================================
# N3      S4 POS(0) "(" *ITEM ARBNO("," *ITEM) "," *ITEM ")" RPOS(0)  :S(A4)F(B4)
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n110_match_head_α
#=======================================================================================================================
# A4      OUTPUT = "T4 MATCH"             :(N4)
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n111_assign_α
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          "T4 MATCH"
#=======================================================================================================================
# B4      OUTPUT = "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n112_assign_α
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "T4 NOMATCH"
#=======================================================================================================================
# N4      S5 POS(0) "a" *ITEM2 ARBNO("," *ITEM2) "z" RPOS(0)  :S(A5)F(B5)
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n113_match_head_α
#=======================================================================================================================
# A5      OUTPUT = "T5 MATCH"             :(N5)
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n114_assign_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "T5 MATCH"
#=======================================================================================================================
# B5      OUTPUT = "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n115_assign_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "T5 NOMATCH"
#=======================================================================================================================
# N5      S6 POS(0) LISTP RPOS(0)         :S(A6)F(B6)
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n116_match_head_α
#=======================================================================================================================
# A6      OUTPUT = "T6 MATCH"             :(N6)
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n117_assign_α
.Lx299_0:
                        .quad            .Lx299_0_s
.Lx299_0_s:
                        .string          "T6 MATCH"
#=======================================================================================================================
# B6      OUTPUT = "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n118_assign_α
.Lx300_0:
                        .quad            .Lx300_0_s
.Lx300_0_s:
                        .string          "T6 NOMATCH"
#=======================================================================================================================
# N6      S7 POS(0) "(" *NEST ARBNO("," *NEST) ")" RPOS(0)  :S(A7)F(B7)
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n119_match_head_α
#=======================================================================================================================
# A7      OUTPUT = "T7 MATCH"             :(N7)
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n120_assign_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "T7 MATCH"
#=======================================================================================================================
# B7      OUTPUT = "T7 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n121_assign_α
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          "T7 NOMATCH"
#=======================================================================================================================
# N7      S8 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)  :S(A8)F(B8)
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   n122_match_head_α
#=======================================================================================================================
# A8      OUTPUT = "T8 MATCH"             :(N8)
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n123_assign_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "T8 MATCH"
#=======================================================================================================================
# B8      OUTPUT = "T8 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n124_assign_α
.Lx306_0:
                        .quad            .Lx306_0_s
.Lx306_0_s:
                        .string          "T8 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n100_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n101_lit_string_α
#=======================================================================================================================
#         ITEM2 = SPAN("0123456789") | "x"
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n125_call_α
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx309_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n79_var_α
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx310_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n79_var_α
.Lx310_0:
                        .quad            .Lx310_0_s
.Lx310_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n104_match_head_α:
                        mov              qword ptr [rbp + 800], r13
                        mov              qword ptr [rbp + 808], r14
                        mov              qword ptr [rbp + 816], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 824], rax
                        mov              qword ptr [rbp + 792], rbp
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 768], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 760], rax
                        mov              dword ptr [rbp + 752], 0
.Lx312_0:
                        mov              r14d, dword ptr [rbp + 752]
                                                                                        jmp   n126_match_sequence_α
n104_match_head_β:
                        add              dword ptr [rbp + 752], 1
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, r15d
                                                                                        jg    .Lx312_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx312_1
                                                                                        jmp   .Lx312_0
.Lx312_1:
                        mov              rax, qword ptr [rbp + 760]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 768]
                        mov              r10, qword ptr [1879048192]
.Lx312_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx312_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 800]
                        mov              r14, qword ptr [rbp + 808]
                        mov              r15, qword ptr [rbp + 816]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 824]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 792]
                                                                                        jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx313_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n82_var_α
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n106_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx314_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n82_var_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n107_match_head_α:
                        mov              qword ptr [rbp + 1136], r13
                        mov              qword ptr [rbp + 1144], r14
                        mov              qword ptr [rbp + 1152], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1160], rax
                        mov              qword ptr [rbp + 1128], rbp
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 1104], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1096], rax
                        mov              dword ptr [rbp + 1088], 0
.Lx316_0:
                        mov              r14d, dword ptr [rbp + 1088]
                                                                                        jmp   n127_match_sequence_α
n107_match_head_β:
                        add              dword ptr [rbp + 1088], 1
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, r15d
                                                                                        jg    .Lx316_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx316_1
                                                                                        jmp   .Lx316_0
.Lx316_1:
                        mov              rax, qword ptr [rbp + 1096]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1104]
                        mov              r10, qword ptr [1879048192]
.Lx316_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx316_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1136]
                        mov              r14, qword ptr [rbp + 1144]
                        mov              r15, qword ptr [rbp + 1152]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1160]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1128]
                                                                                        jmp   n84_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx317_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n85_var_α
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx318_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n85_var_α
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n110_match_head_α:
                        mov              qword ptr [rbp + 1472], r13
                        mov              qword ptr [rbp + 1480], r14
                        mov              qword ptr [rbp + 1488], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1496], rax
                        mov              qword ptr [rbp + 1464], rbp
                        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 1440], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1432], rax
                        mov              dword ptr [rbp + 1424], 0
.Lx320_0:
                        mov              r14d, dword ptr [rbp + 1424]
                                                                                        jmp   n128_match_sequence_α
n110_match_head_β:
                        add              dword ptr [rbp + 1424], 1
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, r15d
                                                                                        jg    .Lx320_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx320_1
                                                                                        jmp   .Lx320_0
.Lx320_1:
                        mov              rax, qword ptr [rbp + 1432]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1440]
                        mov              r10, qword ptr [1879048192]
.Lx320_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx320_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1472]
                        mov              r14, qword ptr [rbp + 1480]
                        mov              r15, qword ptr [rbp + 1488]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1496]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1464]
                                                                                        jmp   n87_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx321_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n88_var_α
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx322_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n88_var_α
.Lx322_0:
                        .quad            .Lx322_0_s
.Lx322_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n113_match_head_α:
                        mov              qword ptr [rbp + 1840], r13
                        mov              qword ptr [rbp + 1848], r14
                        mov              qword ptr [rbp + 1856], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1864], rax
                        mov              qword ptr [rbp + 1832], rbp
                        mov              rdi, qword ptr [rbp + 2064]
                        mov              rsi, qword ptr [rbp + 2072]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 1808], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1800], rax
                        mov              dword ptr [rbp + 1792], 0
.Lx324_0:
                        mov              r14d, dword ptr [rbp + 1792]
                                                                                        jmp   n129_match_sequence_α
n113_match_head_β:
                        add              dword ptr [rbp + 1792], 1
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, r15d
                                                                                        jg    .Lx324_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx324_1
                                                                                        jmp   .Lx324_0
.Lx324_1:
                        mov              rax, qword ptr [rbp + 1800]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1808]
                        mov              r10, qword ptr [1879048192]
.Lx324_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx324_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1840]
                        mov              r14, qword ptr [rbp + 1848]
                        mov              r15, qword ptr [rbp + 1856]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1864]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1832]
                                                                                        jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n114_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx325_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n91_var_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx326_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n91_var_α
.Lx326_0:
                        .quad            .Lx326_0_s
.Lx326_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n116_match_head_α:
                        mov              qword ptr [rbp + 2176], r13
                        mov              qword ptr [rbp + 2184], r14
                        mov              qword ptr [rbp + 2192], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2200], rax
                        mov              qword ptr [rbp + 2168], rbp
                        mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 2144], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2136], rax
                        mov              dword ptr [rbp + 2128], 0
.Lx328_0:
                        mov              r14d, dword ptr [rbp + 2128]
                                                                                        jmp   n130_match_sequence_α
n116_match_head_β:
                        add              dword ptr [rbp + 2128], 1
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              eax, r15d
                                                                                        jg    .Lx328_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx328_1
                                                                                        jmp   .Lx328_0
.Lx328_1:
                        mov              rax, qword ptr [rbp + 2136]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2144]
                        mov              r10, qword ptr [1879048192]
.Lx328_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx328_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2176]
                        mov              r14, qword ptr [rbp + 2184]
                        mov              r15, qword ptr [rbp + 2192]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2200]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2168]
                                                                                        jmp   n93_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx329_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n94_var_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n118_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx330_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n94_var_α
.Lx330_0:
                        .quad            .Lx330_0_s
.Lx330_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n119_match_head_α:
                        mov              qword ptr [rbp + 2384], r13
                        mov              qword ptr [rbp + 2392], r14
                        mov              qword ptr [rbp + 2400], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2408], rax
                        mov              qword ptr [rbp + 2376], rbp
                        mov              rdi, qword ptr [rbp + 2592]
                        mov              rsi, qword ptr [rbp + 2600]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 2352], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2344], rax
                        mov              dword ptr [rbp + 2336], 0
.Lx332_0:
                        mov              r14d, dword ptr [rbp + 2336]
                                                                                        jmp   n131_match_sequence_α
n119_match_head_β:
                        add              dword ptr [rbp + 2336], 1
                        mov              eax, dword ptr [rbp + 2336]
                        cmp              eax, r15d
                                                                                        jg    .Lx332_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx332_1
                                                                                        jmp   .Lx332_0
.Lx332_1:
                        mov              rax, qword ptr [rbp + 2344]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2352]
                        mov              r10, qword ptr [1879048192]
.Lx332_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx332_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2384]
                        mov              r14, qword ptr [rbp + 2392]
                        mov              r15, qword ptr [rbp + 2400]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2408]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2376]
                                                                                        jmp   n96_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx333_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n97_var_α
.Lx333_0:
                        .quad            .Lx333_0_s
.Lx333_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx334_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n97_var_α
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n122_match_head_α:
                        mov              qword ptr [rbp + 2704], r13
                        mov              qword ptr [rbp + 2712], r14
                        mov              qword ptr [rbp + 2720], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2728], rax
                        mov              qword ptr [rbp + 2696], rbp
                        mov              rdi, qword ptr [rbp + 2928]
                        mov              rsi, qword ptr [rbp + 2936]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 2672], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2664], rax
                        mov              dword ptr [rbp + 2656], 0
.Lx336_0:
                        mov              r14d, dword ptr [rbp + 2656]
                                                                                        jmp   n132_match_sequence_α
n122_match_head_β:
                        add              dword ptr [rbp + 2656], 1
                        mov              eax, dword ptr [rbp + 2656]
                        cmp              eax, r15d
                                                                                        jg    .Lx336_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx336_1
                                                                                        jmp   .Lx336_0
.Lx336_1:
                        mov              rax, qword ptr [rbp + 2664]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2672]
                        mov              r10, qword ptr [1879048192]
.Lx336_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx336_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2704]
                        mov              r14, qword ptr [rbp + 2712]
                        mov              r15, qword ptr [rbp + 2720]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2728]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2696]
                                                                                        jmp   n99_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx337_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx338_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx338_0:
                        .quad            .Lx338_0_s
.Lx338_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n125_call_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn340:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn340]
                        lea              rsi, [rbp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n134_lit_string_α
                                                                                        jmp   n133_assign_α
n125_call_β:
                                                                                        jmp   n134_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n126_match_sequence_α:
                        mov              dword ptr [rbp + 832], r14d
                                                                                        jmp   n136_lit_integer_α
n126_match_sequence_as:
                                                                                        jmp   n135_match_release_α
n126_match_sequence_β:
                                                                                        jmp   n143_match_rpos_β
n126_match_sequence_af:
                                                                                        jmp   n104_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n127_match_sequence_α:
                        mov              dword ptr [rbp + 1168], r14d
                                                                                        jmp   n145_lit_integer_α
n127_match_sequence_as:
                                                                                        jmp   n144_match_release_α
n127_match_sequence_β:
                                                                                        jmp   n152_match_rpos_β
n127_match_sequence_af:
                                                                                        jmp   n107_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n128_match_sequence_α:
                        mov              dword ptr [rbp + 1504], r14d
                                                                                        jmp   n154_lit_integer_α
n128_match_sequence_as:
                                                                                        jmp   n153_match_release_α
n128_match_sequence_β:
                                                                                        jmp   n163_match_rpos_β
n128_match_sequence_af:
                                                                                        jmp   n110_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n129_match_sequence_α:
                        mov              dword ptr [rbp + 1872], r14d
                                                                                        jmp   n165_lit_integer_α
n129_match_sequence_as:
                                                                                        jmp   n164_match_release_α
n129_match_sequence_β:
                                                                                        jmp   n172_match_rpos_β
n129_match_sequence_af:
                                                                                        jmp   n113_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n130_match_sequence_α:
                        mov              dword ptr [rbp + 2208], r14d
                                                                                        jmp   n174_lit_integer_α
n130_match_sequence_as:
                                                                                        jmp   n173_match_release_α
n130_match_sequence_β:
                                                                                        jmp   n178_match_rpos_β
n130_match_sequence_af:
                                                                                        jmp   n116_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n131_match_sequence_α:
                        mov              dword ptr [rbp + 2416], r14d
                                                                                        jmp   n180_lit_integer_α
n131_match_sequence_as:
                                                                                        jmp   n179_match_release_α
n131_match_sequence_β:
                                                                                        jmp   n187_match_rpos_β
n131_match_sequence_af:
                                                                                        jmp   n119_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n132_match_sequence_α:
                        mov              dword ptr [rbp + 2736], r14d
                                                                                        jmp   n189_lit_integer_α
n132_match_sequence_as:
                                                                                        jmp   n188_match_release_α
n132_match_sequence_β:
                                                                                        jmp   n196_match_rpos_β
n132_match_sequence_af:
                                                                                        jmp   n122_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n134_lit_string_α
#=======================================================================================================================
#         NEST  = SPAN("0123456789") | "(" *NEST ")"
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n197_call_α
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n135_match_release_α:
                        mov              rax, qword ptr [rbp + 760]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 768]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx358_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx358_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx358_1:
                        test             rax, rax
                                                                                        je    .Lx358_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx358_3]
                        lea              rdx, [rip + .Lx358_4]
                                                                                        jmp   rax
.Lx358_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx358_1
.Lx358_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx358_1
.Lx358_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx358_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx358_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 800]
                        mov              r14, qword ptr [rbp + 808]
                        mov              r15, qword ptr [rbp + 816]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 824]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 792]
                                                                                        jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:
                        mov              qword ptr [rbp + 848], 6
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n137_match_pos_α
n136_lit_integer_β:
                                                                                        jmp   n104_match_head_β
.Lx359_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n137_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n104_match_head_β
                                                                                        jmp   n138_match_lit_α
n137_match_pos_β:
                                                                                        jmp   n104_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n138_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n104_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n104_match_head_β
                        add              r14d, 1
                                                                                        jmp   n139_match_defer_α
n138_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n104_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n139_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx363_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx363_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx363_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx363_10
.Lx363_9:
                        xor              eax, eax
.Lx363_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx363_11:
                        test             rax, rax
                                                                                        jz    .Lx363_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx363_4]
                        lea              rdx, [rip + .Lx363_5]
                                                                                        jmp   rax
.Lx363_4:
                                                                                        jmp   n140_match_arbno_α
.Lx363_5:
                                                                                        jmp   n138_match_lit_β
.Lx363_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx363_2:
                        test             rax, rax
                                                                                        je    .Lx363_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx363_7]
                        lea              rdx, [rip + .Lx363_8]
                                                                                        jmp   rax
.Lx363_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx363_2
.Lx363_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx363_2
.Lx363_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n138_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx363_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n140_match_arbno_α
.Lx363_6:
                        add              rsp, 16
                                                                                        jmp   n138_match_lit_β
n139_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n140_match_arbno_α:
                        mov              dword ptr [rbp + 912], r14d
                        mov              dword ptr [rbp + 916], r14d
                        mov              dword ptr [rbp + 920], 0
                        mov              qword ptr [rbp + 936], rsp
                        mov              qword ptr [rbp + 928], 0
                                                                                        jmp   n141_match_lit_α
n140_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 916]
                        mov              rax, qword ptr [rbp + 928]
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 928], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n198_match_sequence_α
n140_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n198_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 920]
                        add              eax, 1
                        mov              dword ptr [rbp + 920], eax
                        mov              dword ptr [rbp + 916], r14d
                                                                                        jmp   n141_match_lit_α
n140_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 1016]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 920]
                        test             ecx, ecx
                                                                                        jz    .Lx365_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 920], ecx
                        mov              qword ptr [rbp + 928], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n198_match_sequence_β
.Lx365_2:
                        mov              r14d, dword ptr [rbp + 912]
                        mov              rsp, qword ptr [rbp + 936]
                                                                                        jmp   n139_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n141_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n140_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n140_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n142_lit_integer_α
n141_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n140_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:
                        mov              qword ptr [rbp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n143_match_rpos_α
n142_lit_integer_β:
                                                                                        jmp   n141_match_lit_β
.Lx368_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n143_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n141_match_lit_β
                                                                                        jmp   n135_match_release_α
n143_match_rpos_β:
                                                                                        jmp   n141_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n144_match_release_α:
                        mov              rax, qword ptr [rbp + 1096]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1104]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx371_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx371_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx371_1:
                        test             rax, rax
                                                                                        je    .Lx371_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx371_3]
                        lea              rdx, [rip + .Lx371_4]
                                                                                        jmp   rax
.Lx371_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx371_1
.Lx371_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx371_1
.Lx371_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx371_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx371_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1136]
                        mov              r14, qword ptr [rbp + 1144]
                        mov              r15, qword ptr [rbp + 1152]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1160]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1128]
                                                                                        jmp   n83_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rbp + 1184], 6
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n146_match_pos_α
n145_lit_integer_β:
                                                                                        jmp   n107_match_head_β
.Lx372_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n146_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n107_match_head_β
                                                                                        jmp   n147_match_lit_α
n146_match_pos_β:
                                                                                        jmp   n107_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n147_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n107_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n107_match_head_β
                        add              r14d, 1
                                                                                        jmp   n148_match_defer_α
n147_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n107_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n148_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx376_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx376_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx376_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx376_10
.Lx376_9:
                        xor              eax, eax
.Lx376_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx376_11:
                        test             rax, rax
                                                                                        jz    .Lx376_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx376_4]
                        lea              rdx, [rip + .Lx376_5]
                                                                                        jmp   rax
.Lx376_4:
                                                                                        jmp   n149_match_arbno_α
.Lx376_5:
                                                                                        jmp   n147_match_lit_β
.Lx376_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx376_2:
                        test             rax, rax
                                                                                        je    .Lx376_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx376_7]
                        lea              rdx, [rip + .Lx376_8]
                                                                                        jmp   rax
.Lx376_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx376_2
.Lx376_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx376_2
.Lx376_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n147_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx376_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n149_match_arbno_α
.Lx376_6:
                        add              rsp, 16
                                                                                        jmp   n147_match_lit_β
n148_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n149_match_arbno_α:
                        mov              dword ptr [rbp + 1248], r14d
                        mov              dword ptr [rbp + 1252], r14d
                        mov              dword ptr [rbp + 1256], 0
                        mov              qword ptr [rbp + 1272], rsp
                        mov              qword ptr [rbp + 1264], 0
                                                                                        jmp   n150_match_lit_α
n149_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1252]
                        mov              rax, qword ptr [rbp + 1264]
                        sub              rsp, 1376
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1264], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n200_match_sequence_α
n149_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n200_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 1256]
                        add              eax, 1
                        mov              dword ptr [rbp + 1256], eax
                        mov              dword ptr [rbp + 1252], r14d
                                                                                        jmp   n150_match_lit_α
n149_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 1352]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1256]
                        test             ecx, ecx
                                                                                        jz    .Lx378_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1256], ecx
                        mov              qword ptr [rbp + 1264], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n200_match_sequence_β
.Lx378_2:
                        mov              r14d, dword ptr [rbp + 1248]
                        mov              rsp, qword ptr [rbp + 1272]
                                                                                        jmp   n148_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n150_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n149_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n149_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n151_lit_integer_α
n150_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n149_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:
                        mov              qword ptr [rbp + 1344], 6
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n152_match_rpos_α
n151_lit_integer_β:
                                                                                        jmp   n150_match_lit_β
.Lx381_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n152_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n150_match_lit_β
                                                                                        jmp   n144_match_release_α
n152_match_rpos_β:
                                                                                        jmp   n150_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n153_match_release_α:
                        mov              rax, qword ptr [rbp + 1432]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1440]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx384_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx384_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx384_1:
                        test             rax, rax
                                                                                        je    .Lx384_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx384_3]
                        lea              rdx, [rip + .Lx384_4]
                                                                                        jmp   rax
.Lx384_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx384_1
.Lx384_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx384_1
.Lx384_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx384_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx384_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1472]
                        mov              r14, qword ptr [rbp + 1480]
                        mov              r15, qword ptr [rbp + 1488]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1496]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1464]
                                                                                        jmp   n86_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:
                        mov              qword ptr [rbp + 1520], 6
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n155_match_pos_α
n154_lit_integer_β:
                                                                                        jmp   n110_match_head_β
.Lx385_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n155_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n110_match_head_β
                                                                                        jmp   n156_match_lit_α
n155_match_pos_β:
                                                                                        jmp   n110_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n156_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n110_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n110_match_head_β
                        add              r14d, 1
                                                                                        jmp   n157_match_defer_α
n156_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n110_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n157_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx389_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx389_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx389_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx389_10
.Lx389_9:
                        xor              eax, eax
.Lx389_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx389_11:
                        test             rax, rax
                                                                                        jz    .Lx389_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx389_4]
                        lea              rdx, [rip + .Lx389_5]
                                                                                        jmp   rax
.Lx389_4:
                                                                                        jmp   n158_match_arbno_α
.Lx389_5:
                                                                                        jmp   n156_match_lit_β
.Lx389_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx389_2:
                        test             rax, rax
                                                                                        je    .Lx389_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx389_7]
                        lea              rdx, [rip + .Lx389_8]
                                                                                        jmp   rax
.Lx389_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx389_2
.Lx389_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx389_2
.Lx389_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n156_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx389_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n158_match_arbno_α
.Lx389_6:
                        add              rsp, 16
                                                                                        jmp   n156_match_lit_β
n157_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n158_match_arbno_α:
                        mov              dword ptr [rbp + 1584], r14d
                        mov              dword ptr [rbp + 1588], r14d
                        mov              dword ptr [rbp + 1592], 0
                        mov              qword ptr [rbp + 1608], rsp
                        mov              qword ptr [rbp + 1600], 0
                                                                                        jmp   n159_match_lit_α
n158_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1588]
                        mov              rax, qword ptr [rbp + 1600]
                        sub              rsp, 1712
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1600], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n202_match_sequence_α
n158_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n202_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 1592]
                        add              eax, 1
                        mov              dword ptr [rbp + 1592], eax
                        mov              dword ptr [rbp + 1588], r14d
                                                                                        jmp   n159_match_lit_α
n158_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 1688]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1592]
                        test             ecx, ecx
                                                                                        jz    .Lx391_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1592], ecx
                        mov              qword ptr [rbp + 1600], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n202_match_sequence_β
.Lx391_2:
                        mov              r14d, dword ptr [rbp + 1584]
                        mov              rsp, qword ptr [rbp + 1608]
                                                                                        jmp   n157_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n159_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n158_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n158_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n160_match_defer_α
n159_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n158_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n160_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx394_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx394_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx394_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx394_10
.Lx394_9:
                        xor              eax, eax
.Lx394_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx394_11:
                        test             rax, rax
                                                                                        jz    .Lx394_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx394_4]
                        lea              rdx, [rip + .Lx394_5]
                                                                                        jmp   rax
.Lx394_4:
                                                                                        jmp   n161_match_lit_α
.Lx394_5:
                                                                                        jmp   n159_match_lit_β
.Lx394_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx394_2:
                        test             rax, rax
                                                                                        je    .Lx394_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx394_7]
                        lea              rdx, [rip + .Lx394_8]
                                                                                        jmp   rax
.Lx394_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx394_2
.Lx394_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx394_2
.Lx394_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n159_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx394_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n161_match_lit_α
.Lx394_6:
                        add              rsp, 16
                                                                                        jmp   n159_match_lit_β
n160_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n161_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n160_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n160_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n162_lit_integer_α
n161_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n160_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:
                        mov              qword ptr [rbp + 1712], 6
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n163_match_rpos_α
n162_lit_integer_β:
                                                                                        jmp   n161_match_lit_β
.Lx397_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n163_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n161_match_lit_β
                                                                                        jmp   n153_match_release_α
n163_match_rpos_β:
                                                                                        jmp   n161_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n164_match_release_α:
                        mov              rax, qword ptr [rbp + 1800]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1808]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx400_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx400_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx400_1:
                        test             rax, rax
                                                                                        je    .Lx400_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx400_3]
                        lea              rdx, [rip + .Lx400_4]
                                                                                        jmp   rax
.Lx400_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx400_1
.Lx400_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx400_1
.Lx400_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx400_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx400_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1840]
                        mov              r14, qword ptr [rbp + 1848]
                        mov              r15, qword ptr [rbp + 1856]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1864]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1832]
                                                                                        jmp   n89_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:
                        mov              qword ptr [rbp + 1888], 6
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n166_match_pos_α
n165_lit_integer_β:
                                                                                        jmp   n113_match_head_β
.Lx401_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n166_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n113_match_head_β
                                                                                        jmp   n167_match_lit_α
n166_match_pos_β:
                                                                                        jmp   n113_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n167_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n113_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n113_match_head_β
                        add              r14d, 1
                                                                                        jmp   n168_match_defer_α
n167_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n113_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n168_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx405_11
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx405_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx405_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx405_10
.Lx405_9:
                        xor              eax, eax
.Lx405_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx405_11:
                        test             rax, rax
                                                                                        jz    .Lx405_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx405_4]
                        lea              rdx, [rip + .Lx405_5]
                                                                                        jmp   rax
.Lx405_4:
                                                                                        jmp   n169_match_arbno_α
.Lx405_5:
                                                                                        jmp   n167_match_lit_β
.Lx405_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx405_2:
                        test             rax, rax
                                                                                        je    .Lx405_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx405_7]
                        lea              rdx, [rip + .Lx405_8]
                                                                                        jmp   rax
.Lx405_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx405_2
.Lx405_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx405_2
.Lx405_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n167_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx405_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n169_match_arbno_α
.Lx405_6:
                        add              rsp, 16
                                                                                        jmp   n167_match_lit_β
n168_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n169_match_arbno_α:
                        mov              dword ptr [rbp + 1952], r14d
                        mov              dword ptr [rbp + 1956], r14d
                        mov              dword ptr [rbp + 1960], 0
                        mov              qword ptr [rbp + 1976], rsp
                        mov              qword ptr [rbp + 1968], 0
                                                                                        jmp   n170_match_lit_α
n169_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1956]
                        mov              rax, qword ptr [rbp + 1968]
                        sub              rsp, 2080
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1968], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n204_match_sequence_α
n169_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n204_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 1960]
                        add              eax, 1
                        mov              dword ptr [rbp + 1960], eax
                        mov              dword ptr [rbp + 1956], r14d
                                                                                        jmp   n170_match_lit_α
n169_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 2056]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1960]
                        test             ecx, ecx
                                                                                        jz    .Lx407_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1960], ecx
                        mov              qword ptr [rbp + 1968], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n204_match_sequence_β
.Lx407_2:
                        mov              r14d, dword ptr [rbp + 1952]
                        mov              rsp, qword ptr [rbp + 1976]
                                                                                        jmp   n168_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n170_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n169_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 122
                                                                                        jne   n169_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n171_lit_integer_α
n170_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n169_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:
                        mov              qword ptr [rbp + 2048], 6
                        mov              rax, qword ptr [rip + .Lx410_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n172_match_rpos_α
n171_lit_integer_β:
                                                                                        jmp   n170_match_lit_β
.Lx410_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n172_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n170_match_lit_β
                                                                                        jmp   n164_match_release_α
n172_match_rpos_β:
                                                                                        jmp   n170_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n173_match_release_α:
                        mov              rax, qword ptr [rbp + 2136]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2144]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx413_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx413_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx413_1:
                        test             rax, rax
                                                                                        je    .Lx413_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx413_3]
                        lea              rdx, [rip + .Lx413_4]
                                                                                        jmp   rax
.Lx413_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx413_1
.Lx413_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx413_1
.Lx413_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx413_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx413_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2176]
                        mov              r14, qword ptr [rbp + 2184]
                        mov              r15, qword ptr [rbp + 2192]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2200]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2168]
                                                                                        jmp   n92_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:
                        mov              qword ptr [rbp + 2224], 6
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n175_match_pos_α
n174_lit_integer_β:
                                                                                        jmp   n116_match_head_β
.Lx414_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n175_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n116_match_head_β
                                                                                        jmp   n176_match_defer_α
n175_match_pos_β:
                                                                                        jmp   n116_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n176_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx416_11
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 3
                                                                                        jne   .Lx416_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx416_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx416_10
.Lx416_9:
                        xor              eax, eax
.Lx416_10:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rax
.Lx416_11:
                        test             rax, rax
                                                                                        jz    .Lx416_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx416_4]
                        lea              rdx, [rip + .Lx416_5]
                                                                                        jmp   rax
.Lx416_4:
                                                                                        jmp   n177_lit_integer_α
.Lx416_5:
                                                                                        jmp   n116_match_head_β
.Lx416_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx416_2:
                        test             rax, rax
                                                                                        je    .Lx416_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx416_7]
                        lea              rdx, [rip + .Lx416_8]
                                                                                        jmp   rax
.Lx416_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx416_2
.Lx416_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx416_2
.Lx416_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n116_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx416_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n177_lit_integer_α
.Lx416_6:
                        add              rsp, 16
                                                                                        jmp   n116_match_head_β
n176_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_integer_α:
                        mov              qword ptr [rbp + 2256], 6
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n178_match_rpos_α
n177_lit_integer_β:
                                                                                        jmp   n176_match_defer_β
.Lx417_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n178_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n176_match_defer_β
                                                                                        jmp   n173_match_release_α
n178_match_rpos_β:
                                                                                        jmp   n176_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n179_match_release_α:
                        mov              rax, qword ptr [rbp + 2344]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2352]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx420_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx420_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx420_1:
                        test             rax, rax
                                                                                        je    .Lx420_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx420_3]
                        lea              rdx, [rip + .Lx420_4]
                                                                                        jmp   rax
.Lx420_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx420_1
.Lx420_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx420_1
.Lx420_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx420_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx420_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2384]
                        mov              r14, qword ptr [rbp + 2392]
                        mov              r15, qword ptr [rbp + 2400]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2408]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2376]
                                                                                        jmp   n95_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_integer_α:
                        mov              qword ptr [rbp + 2432], 6
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n181_match_pos_α
n180_lit_integer_β:
                                                                                        jmp   n119_match_head_β
.Lx421_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n181_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n119_match_head_β
                                                                                        jmp   n182_match_lit_α
n181_match_pos_β:
                                                                                        jmp   n119_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n182_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n119_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n119_match_head_β
                        add              r14d, 1
                                                                                        jmp   n183_match_defer_α
n182_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n119_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n183_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx425_11
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx425_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx425_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx425_10
.Lx425_9:
                        xor              eax, eax
.Lx425_10:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              qword ptr [rsi + 0], rax
.Lx425_11:
                        test             rax, rax
                                                                                        jz    .Lx425_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx425_4]
                        lea              rdx, [rip + .Lx425_5]
                                                                                        jmp   rax
.Lx425_4:
                                                                                        jmp   n184_match_arbno_α
.Lx425_5:
                                                                                        jmp   n182_match_lit_β
.Lx425_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx425_2:
                        test             rax, rax
                                                                                        je    .Lx425_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx425_7]
                        lea              rdx, [rip + .Lx425_8]
                                                                                        jmp   rax
.Lx425_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx425_2
.Lx425_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx425_2
.Lx425_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n182_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx425_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n184_match_arbno_α
.Lx425_6:
                        add              rsp, 16
                                                                                        jmp   n182_match_lit_β
n183_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n184_match_arbno_α:
                        mov              dword ptr [rbp + 2480], r14d
                        mov              dword ptr [rbp + 2484], r14d
                        mov              dword ptr [rbp + 2488], 0
                        mov              qword ptr [rbp + 2504], rsp
                        mov              qword ptr [rbp + 2496], 0
                                                                                        jmp   n185_match_lit_α
n184_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 2484]
                        mov              rax, qword ptr [rbp + 2496]
                        sub              rsp, 2608
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 2496], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n206_match_sequence_α
n184_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n206_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 2488]
                        add              eax, 1
                        mov              dword ptr [rbp + 2488], eax
                        mov              dword ptr [rbp + 2484], r14d
                                                                                        jmp   n185_match_lit_α
n184_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 2584]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 2488]
                        test             ecx, ecx
                                                                                        jz    .Lx427_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 2488], ecx
                        mov              qword ptr [rbp + 2496], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n206_match_sequence_β
.Lx427_2:
                        mov              r14d, dword ptr [rbp + 2480]
                        mov              rsp, qword ptr [rbp + 2504]
                                                                                        jmp   n183_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n185_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n184_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n184_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n186_lit_integer_α
n185_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n184_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:
                        mov              qword ptr [rbp + 2576], 6
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n187_match_rpos_α
n186_lit_integer_β:
                                                                                        jmp   n185_match_lit_β
.Lx430_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n187_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n185_match_lit_β
                                                                                        jmp   n179_match_release_α
n187_match_rpos_β:
                                                                                        jmp   n185_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n188_match_release_α:
                        mov              rax, qword ptr [rbp + 2664]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2672]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx433_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx433_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx433_1:
                        test             rax, rax
                                                                                        je    .Lx433_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx433_3]
                        lea              rdx, [rip + .Lx433_4]
                                                                                        jmp   rax
.Lx433_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx433_1
.Lx433_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx433_1
.Lx433_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx433_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx433_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2704]
                        mov              r14, qword ptr [rbp + 2712]
                        mov              r15, qword ptr [rbp + 2720]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2728]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2696]
                                                                                        jmp   n98_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_integer_α:
                        mov              qword ptr [rbp + 2752], 6
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n190_match_pos_α
n189_lit_integer_β:
                                                                                        jmp   n122_match_head_β
.Lx434_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n190_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n122_match_head_β
                                                                                        jmp   n191_match_lit_α
n190_match_pos_β:
                                                                                        jmp   n122_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n191_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n122_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n122_match_head_β
                        add              r14d, 1
                                                                                        jmp   n192_match_defer_α
n191_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n122_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n192_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx438_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx438_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx438_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx438_10
.Lx438_9:
                        xor              eax, eax
.Lx438_10:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              qword ptr [rsi + 0], rax
.Lx438_11:
                        test             rax, rax
                                                                                        jz    .Lx438_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx438_4]
                        lea              rdx, [rip + .Lx438_5]
                                                                                        jmp   rax
.Lx438_4:
                                                                                        jmp   n193_match_arbno_α
.Lx438_5:
                                                                                        jmp   n191_match_lit_β
.Lx438_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx438_2:
                        test             rax, rax
                                                                                        je    .Lx438_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx438_7]
                        lea              rdx, [rip + .Lx438_8]
                                                                                        jmp   rax
.Lx438_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx438_2
.Lx438_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx438_2
.Lx438_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n191_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx438_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n193_match_arbno_α
.Lx438_6:
                        add              rsp, 16
                                                                                        jmp   n191_match_lit_β
n192_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n193_match_arbno_α:
                        mov              dword ptr [rbp + 2816], r14d
                        mov              dword ptr [rbp + 2820], r14d
                        mov              dword ptr [rbp + 2824], 0
                        mov              qword ptr [rbp + 2840], rsp
                        mov              qword ptr [rbp + 2832], 0
                                                                                        jmp   n194_match_lit_α
n193_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 2820]
                        mov              rax, qword ptr [rbp + 2832]
                        sub              rsp, 2944
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 2832], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n208_match_sequence_α
n193_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n208_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 2824]
                        add              eax, 1
                        mov              dword ptr [rbp + 2824], eax
                        mov              dword ptr [rbp + 2820], r14d
                                                                                        jmp   n194_match_lit_α
n193_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 2920]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 2824]
                        test             ecx, ecx
                                                                                        jz    .Lx440_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 2824], ecx
                        mov              qword ptr [rbp + 2832], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n208_match_sequence_β
.Lx440_2:
                        mov              r14d, dword ptr [rbp + 2816]
                        mov              rsp, qword ptr [rbp + 2840]
                                                                                        jmp   n192_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n194_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n193_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n193_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n195_lit_integer_α
n194_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n193_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_integer_α:
                        mov              qword ptr [rbp + 2912], 6
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n196_match_rpos_α
n195_lit_integer_β:
                                                                                        jmp   n194_match_lit_β
.Lx443_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n196_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n194_match_lit_β
                                                                                        jmp   n188_match_release_α
n196_match_rpos_β:
                                                                                        jmp   n194_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n197_call_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn446:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn446]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n211_lit_string_α
                                                                                        jmp   n210_assign_α
n197_call_β:
                                                                                        jmp   n211_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n198_match_sequence_α:
                        mov              dword ptr [rbp + 960], r14d
                                                                                        jmp   n212_match_lit_α
n198_match_sequence_as:
                                                                                        jmp   n140_match_arbno_as
n198_match_sequence_β:
                                                                                        jmp   n213_match_defer_β
n198_match_sequence_af:
                                                                                        jmp   n140_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   main_γ
n199_lit_string_β:
                                                                                        jmp   main_ω
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n200_match_sequence_α:
                        mov              dword ptr [rbp + 1296], r14d
                                                                                        jmp   n214_match_lit_α
n200_match_sequence_as:
                                                                                        jmp   n149_match_arbno_as
n200_match_sequence_β:
                                                                                        jmp   n215_match_defer_β
n200_match_sequence_af:
                                                                                        jmp   n149_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   main_γ
n201_lit_string_β:
                                                                                        jmp   main_ω
.Lx452_0:
                        .quad            .Lx452_0_s
.Lx452_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n202_match_sequence_α:
                        mov              dword ptr [rbp + 1632], r14d
                                                                                        jmp   n216_match_lit_α
n202_match_sequence_as:
                                                                                        jmp   n158_match_arbno_as
n202_match_sequence_β:
                                                                                        jmp   n217_match_defer_β
n202_match_sequence_af:
                                                                                        jmp   n158_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:
                        mov              qword ptr [rbp + 1664], 1
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   main_γ
n203_lit_string_β:
                                                                                        jmp   main_ω
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n204_match_sequence_α:
                        mov              dword ptr [rbp + 2000], r14d
                                                                                        jmp   n218_match_lit_α
n204_match_sequence_as:
                                                                                        jmp   n169_match_arbno_as
n204_match_sequence_β:
                                                                                        jmp   n219_match_defer_β
n204_match_sequence_af:
                                                                                        jmp   n169_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   main_γ
n205_lit_string_β:
                                                                                        jmp   main_ω
.Lx458_0:
                        .quad            .Lx458_0_s
.Lx458_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n206_match_sequence_α:
                        mov              dword ptr [rbp + 2528], r14d
                                                                                        jmp   n220_match_lit_α
n206_match_sequence_as:
                                                                                        jmp   n184_match_arbno_as
n206_match_sequence_β:
                                                                                        jmp   n207_match_defer_β
n206_match_sequence_af:
                                                                                        jmp   n184_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n207_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx461_11
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx461_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx461_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx461_10
.Lx461_9:
                        xor              eax, eax
.Lx461_10:
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              qword ptr [rsi + 0], rax
.Lx461_11:
                        test             rax, rax
                                                                                        jz    .Lx461_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx461_4]
                        lea              rdx, [rip + .Lx461_5]
                                                                                        jmp   rax
.Lx461_4:
                                                                                        jmp   n184_match_arbno_as
.Lx461_5:
                                                                                        jmp   n220_match_lit_β
.Lx461_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx461_2:
                        test             rax, rax
                                                                                        je    .Lx461_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx461_7]
                        lea              rdx, [rip + .Lx461_8]
                                                                                        jmp   rax
.Lx461_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx461_2
.Lx461_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx461_2
.Lx461_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n220_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx461_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n184_match_arbno_as
.Lx461_6:
                        add              rsp, 16
                                                                                        jmp   n220_match_lit_β
n207_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n208_match_sequence_α:
                        mov              dword ptr [rbp + 2864], r14d
                                                                                        jmp   n221_match_lit_α
n208_match_sequence_as:
                                                                                        jmp   n193_match_arbno_as
n208_match_sequence_β:
                                                                                        jmp   n222_match_defer_β
n208_match_sequence_af:
                                                                                        jmp   n193_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:
                        mov              qword ptr [rbp + 2896], 1
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   main_γ
n209_lit_string_β:
                                                                                        jmp   main_ω
.Lx464_0:
                        .quad            .Lx464_0_s
.Lx464_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n210_assign_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n211_lit_string_α
#=======================================================================================================================
#         LISTP = "(" *ITEM ARBNO("," *ITEM) ")"
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n223_call_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n212_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n140_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n140_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n213_match_defer_α
n212_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n140_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n213_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx469_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx469_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx469_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx469_10
.Lx469_9:
                        xor              eax, eax
.Lx469_10:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              qword ptr [rsi + 0], rax
.Lx469_11:
                        test             rax, rax
                                                                                        jz    .Lx469_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx469_4]
                        lea              rdx, [rip + .Lx469_5]
                                                                                        jmp   rax
.Lx469_4:
                                                                                        jmp   n140_match_arbno_as
.Lx469_5:
                                                                                        jmp   n212_match_lit_β
.Lx469_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx469_2:
                        test             rax, rax
                                                                                        je    .Lx469_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx469_7]
                        lea              rdx, [rip + .Lx469_8]
                                                                                        jmp   rax
.Lx469_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx469_2
.Lx469_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx469_2
.Lx469_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n212_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx469_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n140_match_arbno_as
.Lx469_6:
                        add              rsp, 16
                                                                                        jmp   n212_match_lit_β
n213_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n214_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n149_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n149_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n215_match_defer_α
n214_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n149_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n215_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx472_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx472_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx472_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx472_10
.Lx472_9:
                        xor              eax, eax
.Lx472_10:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              qword ptr [rsi + 0], rax
.Lx472_11:
                        test             rax, rax
                                                                                        jz    .Lx472_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx472_4]
                        lea              rdx, [rip + .Lx472_5]
                                                                                        jmp   rax
.Lx472_4:
                                                                                        jmp   n149_match_arbno_as
.Lx472_5:
                                                                                        jmp   n214_match_lit_β
.Lx472_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx472_2:
                        test             rax, rax
                                                                                        je    .Lx472_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx472_7]
                        lea              rdx, [rip + .Lx472_8]
                                                                                        jmp   rax
.Lx472_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx472_2
.Lx472_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx472_2
.Lx472_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n214_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx472_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n149_match_arbno_as
.Lx472_6:
                        add              rsp, 16
                                                                                        jmp   n214_match_lit_β
n215_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n216_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n158_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n158_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n217_match_defer_α
n216_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n158_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n217_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+112]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx475_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx475_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx475_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx475_10
.Lx475_9:
                        xor              eax, eax
.Lx475_10:
                        lea              rsi, [rip + g_sno_defer_cells+112]
                        mov              qword ptr [rsi + 0], rax
.Lx475_11:
                        test             rax, rax
                                                                                        jz    .Lx475_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx475_4]
                        lea              rdx, [rip + .Lx475_5]
                                                                                        jmp   rax
.Lx475_4:
                                                                                        jmp   n158_match_arbno_as
.Lx475_5:
                                                                                        jmp   n216_match_lit_β
.Lx475_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx475_2:
                        test             rax, rax
                                                                                        je    .Lx475_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx475_7]
                        lea              rdx, [rip + .Lx475_8]
                                                                                        jmp   rax
.Lx475_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx475_2
.Lx475_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx475_2
.Lx475_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n216_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx475_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n158_match_arbno_as
.Lx475_6:
                        add              rsp, 16
                                                                                        jmp   n216_match_lit_β
n217_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n218_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n169_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n169_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n219_match_defer_α
n218_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n169_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n219_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+120]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx478_11
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx478_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx478_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx478_10
.Lx478_9:
                        xor              eax, eax
.Lx478_10:
                        lea              rsi, [rip + g_sno_defer_cells+120]
                        mov              qword ptr [rsi + 0], rax
.Lx478_11:
                        test             rax, rax
                                                                                        jz    .Lx478_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx478_4]
                        lea              rdx, [rip + .Lx478_5]
                                                                                        jmp   rax
.Lx478_4:
                                                                                        jmp   n169_match_arbno_as
.Lx478_5:
                                                                                        jmp   n218_match_lit_β
.Lx478_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx478_2:
                        test             rax, rax
                                                                                        je    .Lx478_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx478_7]
                        lea              rdx, [rip + .Lx478_8]
                                                                                        jmp   rax
.Lx478_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx478_2
.Lx478_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx478_2
.Lx478_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n218_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx478_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n169_match_arbno_as
.Lx478_6:
                        add              rsp, 16
                                                                                        jmp   n218_match_lit_β
n219_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n220_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n184_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n184_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n207_match_defer_α
n220_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n184_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n221_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n193_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n193_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n222_match_defer_α
n221_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n193_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n222_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+128]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx483_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx483_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx483_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx483_10
.Lx483_9:
                        xor              eax, eax
.Lx483_10:
                        lea              rsi, [rip + g_sno_defer_cells+128]
                        mov              qword ptr [rsi + 0], rax
.Lx483_11:
                        test             rax, rax
                                                                                        jz    .Lx483_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx483_4]
                        lea              rdx, [rip + .Lx483_5]
                                                                                        jmp   rax
.Lx483_4:
                                                                                        jmp   n193_match_arbno_as
.Lx483_5:
                                                                                        jmp   n221_match_lit_β
.Lx483_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx483_2:
                        test             rax, rax
                                                                                        je    .Lx483_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx483_7]
                        lea              rdx, [rip + .Lx483_8]
                                                                                        jmp   rax
.Lx483_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx483_2
.Lx483_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx483_2
.Lx483_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n221_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx483_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n193_match_arbno_as
.Lx483_6:
                        add              rsp, 16
                                                                                        jmp   n221_match_lit_β
n222_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n223_call_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn485:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn485]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n225_lit_string_α
                                                                                        jmp   n224_assign_α
n223_call_β:
                                                                                        jmp   n225_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n224_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n225_lit_string_α
#=======================================================================================================================
#         S1 = "(1,22,333)"
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx487_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n226_assign_α
.Lx487_0:
                        .quad            .Lx487_0_s
.Lx487_0_s:
                        .string          "(1,22,333)"
#-----------------------------------------------------------------------------------------------------------------------
n226_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n227_lit_string_α
#=======================================================================================================================
#         S2 = "(7)"
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n228_assign_α
.Lx489_0:
                        .quad            .Lx489_0_s
.Lx489_0_s:
                        .string          "(7)"
#-----------------------------------------------------------------------------------------------------------------------
n228_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n229_lit_string_α
#=======================================================================================================================
#         S3 = "(1,,2)"
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n230_assign_α
.Lx491_0:
                        .quad            .Lx491_0_s
.Lx491_0_s:
                        .string          "(1,,2)"
#-----------------------------------------------------------------------------------------------------------------------
n230_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n231_lit_string_α
#=======================================================================================================================
#         S4 = "(11,22)"
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n232_assign_α
.Lx493_0:
                        .quad            .Lx493_0_s
.Lx493_0_s:
                        .string          "(11,22)"
#-----------------------------------------------------------------------------------------------------------------------
n232_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n233_lit_string_α
#=======================================================================================================================
#         S5 = "a1,2,3z"
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n234_assign_α
.Lx495_0:
                        .quad            .Lx495_0_s
.Lx495_0_s:
                        .string          "a1,2,3z"
#-----------------------------------------------------------------------------------------------------------------------
n234_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n235_lit_string_α
#=======================================================================================================================
#         S6 = "(4,5)"
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n236_assign_α
.Lx497_0:
                        .quad            .Lx497_0_s
.Lx497_0_s:
                        .string          "(4,5)"
#-----------------------------------------------------------------------------------------------------------------------
n236_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n237_lit_string_α
#=======================================================================================================================
#         S7 = "(1,(2),3)"
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n238_assign_α
.Lx499_0:
                        .quad            .Lx499_0_s
.Lx499_0_s:
                        .string          "(1,(2),3)"
#-----------------------------------------------------------------------------------------------------------------------
n238_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n239_lit_string_α
#=======================================================================================================================
#         S8 = "(1,2,3,4,5,6,7,8,9,10,11,12)"
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx501_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n240_assign_α
.Lx501_0:
                        .quad            .Lx501_0_s
.Lx501_0_s:
                        .string          "(1,2,3,4,5,6,7,8,9,10,11,12)"
#-----------------------------------------------------------------------------------------------------------------------
n240_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n241_var_α
#=======================================================================================================================
#         S1 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)   :S(A1)F(B1)
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n242_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n242_match_head_α:
                        mov              qword ptr [rbp + 464], r13
                        mov              qword ptr [rbp + 472], r14
                        mov              qword ptr [rbp + 480], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 488], rax
                        mov              qword ptr [rbp + 456], rbp
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 432], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 424], rax
                        mov              dword ptr [rbp + 416], 0
.Lx505_0:
                        mov              r14d, dword ptr [rbp + 416]
                                                                                        jmp   n243_match_sequence_α
n242_match_head_β:
                        add              dword ptr [rbp + 416], 1
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, r15d
                                                                                        jg    .Lx505_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx505_1
                                                                                        jmp   .Lx505_0
.Lx505_1:
                        mov              rax, qword ptr [rbp + 424]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 432]
                        mov              r10, qword ptr [1879048192]
.Lx505_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx505_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 464]
                        mov              r14, qword ptr [rbp + 472]
                        mov              r15, qword ptr [rbp + 480]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 456]
                                                                                        jmp   n78_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n243_match_sequence_α:
                        mov              dword ptr [rbp + 496], r14d
                                                                                        jmp   n245_lit_integer_α
n243_match_sequence_as:
                                                                                        jmp   n244_match_release_α
n243_match_sequence_β:
                                                                                        jmp   n252_match_rpos_β
n243_match_sequence_af:
                                                                                        jmp   n242_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n244_match_release_α:
                        mov              rax, qword ptr [rbp + 424]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 432]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx509_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx509_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx509_1:
                        test             rax, rax
                                                                                        je    .Lx509_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx509_3]
                        lea              rdx, [rip + .Lx509_4]
                                                                                        jmp   rax
.Lx509_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx509_1
.Lx509_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx509_1
.Lx509_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx509_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx509_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 464]
                        mov              r14, qword ptr [rbp + 472]
                        mov              r15, qword ptr [rbp + 480]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 456]
                                                                                        jmp   n77_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n246_match_pos_α
n245_lit_integer_β:
                                                                                        jmp   n242_match_head_β
.Lx510_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n246_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n242_match_head_β
                                                                                        jmp   n247_match_lit_α
n246_match_pos_β:
                                                                                        jmp   n242_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n247_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n242_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n242_match_head_β
                        add              r14d, 1
                                                                                        jmp   n248_match_defer_α
n247_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n242_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n248_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+136]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx514_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx514_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx514_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx514_10
.Lx514_9:
                        xor              eax, eax
.Lx514_10:
                        lea              rsi, [rip + g_sno_defer_cells+136]
                        mov              qword ptr [rsi + 0], rax
.Lx514_11:
                        test             rax, rax
                                                                                        jz    .Lx514_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx514_4]
                        lea              rdx, [rip + .Lx514_5]
                                                                                        jmp   rax
.Lx514_4:
                                                                                        jmp   n249_match_arbno_α
.Lx514_5:
                                                                                        jmp   n247_match_lit_β
.Lx514_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx514_2:
                        test             rax, rax
                                                                                        je    .Lx514_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx514_7]
                        lea              rdx, [rip + .Lx514_8]
                                                                                        jmp   rax
.Lx514_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx514_2
.Lx514_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx514_2
.Lx514_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n247_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx514_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n249_match_arbno_α
.Lx514_6:
                        add              rsp, 16
                                                                                        jmp   n247_match_lit_β
n248_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n249_match_arbno_α:
                        mov              dword ptr [rbp + 576], r14d
                        mov              dword ptr [rbp + 580], r14d
                        mov              dword ptr [rbp + 584], 0
                        mov              qword ptr [rbp + 600], rsp
                        mov              qword ptr [rbp + 592], 0
                                                                                        jmp   n250_match_lit_α
n249_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 580]
                        mov              rax, qword ptr [rbp + 592]
                        sub              rsp, 704
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 592], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n253_match_sequence_α
n249_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n253_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 584]
                        add              eax, 1
                        mov              dword ptr [rbp + 584], eax
                        mov              dword ptr [rbp + 580], r14d
                                                                                        jmp   n250_match_lit_α
n249_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 680]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 584]
                        test             ecx, ecx
                                                                                        jz    .Lx516_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 584], ecx
                        mov              qword ptr [rbp + 592], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n253_match_sequence_β
.Lx516_2:
                        mov              r14d, dword ptr [rbp + 576]
                        mov              rsp, qword ptr [rbp + 600]
                                                                                        jmp   n248_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n250_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n249_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n249_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n251_lit_integer_α
n250_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n249_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n252_match_rpos_α
n251_lit_integer_β:
                                                                                        jmp   n250_match_lit_β
.Lx519_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n252_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n250_match_lit_β
                                                                                        jmp   n244_match_release_α
n252_match_rpos_β:
                                                                                        jmp   n250_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n253_match_sequence_α:
                        mov              dword ptr [rbp + 624], r14d
                                                                                        jmp   n255_match_lit_α
n253_match_sequence_as:
                                                                                        jmp   n249_match_arbno_as
n253_match_sequence_β:
                                                                                        jmp   n256_match_defer_β
n253_match_sequence_af:
                                                                                        jmp   n249_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   main_γ
n254_lit_string_β:
                                                                                        jmp   main_ω
.Lx523_0:
                        .quad            .Lx523_0_s
.Lx523_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n255_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n249_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n249_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n256_match_defer_α
n255_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n249_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n256_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+144]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx526_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx526_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx526_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx526_10
.Lx526_9:
                        xor              eax, eax
.Lx526_10:
                        lea              rsi, [rip + g_sno_defer_cells+144]
                        mov              qword ptr [rsi + 0], rax
.Lx526_11:
                        test             rax, rax
                                                                                        jz    .Lx526_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx526_4]
                        lea              rdx, [rip + .Lx526_5]
                                                                                        jmp   rax
.Lx526_4:
                                                                                        jmp   n249_match_arbno_as
.Lx526_5:
                                                                                        jmp   n255_match_lit_β
.Lx526_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx526_2:
                        test             rax, rax
                                                                                        je    .Lx526_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx526_7]
                        lea              rdx, [rip + .Lx526_8]
                                                                                        jmp   rax
.Lx526_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx526_2
.Lx526_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx526_2
.Lx526_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n255_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx526_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n249_match_arbno_as
.Lx526_6:
                        add              rsp, 16
                                                                                        jmp   n255_match_lit_β
n256_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2976]
                        add              rsp, 2984
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2976]
                        add              rsp, 2984
                        ret
                        .section         .rodata
.S0:                    .string          "NEST"
.S1:                    .string          "ITEM"
.S2:                    .string          "ITEM2"
.S3:                    .string          "LISTP"
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
