                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        sub              rsp, 80
                        mov              qword ptr [rsp + 56], rcx
                        mov              qword ptr [rsp + 64], rdx
                        mov              qword ptr [rsp + 72], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 48], r8
                        mov              dword ptr [rsp + 40], r14d
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
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 40]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
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
                        mov              rax, qword ptr [rbp + 56]
                        mov              rbp, qword ptr [rbp + 72]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, qword ptr [rbp + 64]
                        lea              rsp, [rbp + 80]
                        mov              rbp, qword ptr [rbp + 72]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n3_match_alternate_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n3_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx7_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n5_match_span_α
.Lx7_21:
                        lea              rax, [rip + .Lx7_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n4_match_lit_α
n3_match_alternate_s0:
                        lea              rax, [rip + .Lx7_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n3_match_alternate_as
n3_match_alternate_s1:
                        lea              rax, [rip + .Lx7_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n3_match_alternate_as
.Lx7_40:
                                                                                        jmp   n5_match_span_β
.Lx7_41:
                                                                                        jmp   n4_match_lit_β
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
n4_match_lit_α:
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
n4_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n5_match_span_α:
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx11_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx11_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx11_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx11_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx11_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx11_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx11_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx11_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx11_1
                        add              ecx, 1
                                                                                        jmp   .Lx11_0
.Lx11_1:
                        cmp              ecx, r14d
                                                                                        jle   n3_match_alternate_af
                        mov              dword ptr [rbp + 52], r14d
                        mov              r14d, ecx
                                                                                        jmp   n3_match_alternate_s0
n5_match_span_β:
                        mov              r14d, dword ptr [rbp + 52]
                                                                                        jmp   n3_match_alternate_af
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
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
                        mov              rax, qword ptr [rbp + 120]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, qword ptr [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136]
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
                        lea              rax, [rip + n12_match_alternate_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n12_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx19_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n17_match_span_α
.Lx19_21:
                        lea              rax, [rip + .Lx19_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n13_match_sequence_α
n12_match_alternate_s0:
                        lea              rax, [rip + .Lx19_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n12_match_alternate_as
n12_match_alternate_s1:
                        lea              rax, [rip + .Lx19_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n12_match_alternate_as
.Lx19_40:
                                                                                        jmp   n17_match_span_β
.Lx19_41:
                                                                                        jmp   n13_match_sequence_β
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
n13_match_sequence_α:
                        mov              dword ptr [rbp + 48], r14d
                                                                                        jmp   n16_match_lit_α
n13_match_sequence_as:
                                                                                        jmp   n12_match_alternate_s1
n13_match_sequence_β:
                                                                                        jmp   n14_match_lit_β
n13_match_sequence_af:
                                                                                        jmp   n12_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n14_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n15_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n15_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n12_match_alternate_s1
n14_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n15_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx24_11
                        mov              rax, qword ptr [1879052320]                    # NEST
                        mov              rdx, qword ptr [1879052328]                    # NEST
                        cmp              eax, 3
                                                                                        jne   .Lx24_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx24_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx24_10
.Lx24_9:
                        xor              eax, eax
.Lx24_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx24_11:
                        test             rax, rax
                                                                                        jz    .Lx24_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx24_4]
                        lea              rdx, [rip + .Lx24_5]
                                                                                        jmp   rax
.Lx24_4:
                                                                                        jmp   n14_match_lit_α
.Lx24_5:
                                                                                        jmp   n16_match_lit_β
.Lx24_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx24_2:
                        test             rax, rax
                                                                                        je    .Lx24_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx24_7]
                        lea              rdx, [rip + .Lx24_8]
                                                                                        jmp   rax
.Lx24_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx24_2
.Lx24_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx24_2
.Lx24_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n16_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx24_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n14_match_lit_α
.Lx24_6:
                        add              rsp, 16
                                                                                        jmp   n16_match_lit_β
n15_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n16_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n12_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n12_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n15_match_defer_α
n16_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n12_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n17_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx28_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx28_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx28_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx28_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx28_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx28_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx28_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx28_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx28_1
                        add              ecx, 1
                                                                                        jmp   .Lx28_0
.Lx28_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx28_240
                        add              rsp, 16
                                                                                        jmp   n12_match_alternate_af
.Lx28_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n12_match_alternate_s0
n17_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n12_match_alternate_af
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
                        sub              rsp, 240
                        mov              qword ptr [rsp + 216], rcx
                        mov              qword ptr [rsp + 224], rdx
                        mov              qword ptr [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 208], r8
                        mov              dword ptr [rsp + 200], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + n29_match_sequence_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n29_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n36_match_lit_α
n29_match_sequence_as:
                                                                                        jmp   proc_PAT$3_γ
n29_match_sequence_β:
                                                                                        jmp   n30_match_lit_β
n29_match_sequence_af:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n30_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n31_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n31_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$3_γ
n30_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n31_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n31_match_arbno_α:
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                                                                                        jmp   n30_match_lit_α
n31_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 84]
                        mov              rax, qword ptr [rbp + 96]
                        sub              rsp, 176
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 96], rsp
                        mov              rbp, rsp
                        add              rbp, -8
                                                                                        jmp   n32_match_sequence_α
n31_match_arbno_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              r14d, eax
                                                                                        je    n32_match_sequence_β
                        mov              rbp, qword ptr [rbp + 8]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                                                                                        jmp   n30_match_lit_α
n31_match_arbno_af:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 8]
                        lea              rsp, [rbp + 184]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 88]
                        test             ecx, ecx
                                                                                        jz    .Lx42_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 88], ecx
                        mov              qword ptr [rbp + 96], rax
                        lea              rbp, [rax + -8]
                                                                                        jmp   n32_match_sequence_β
.Lx42_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   n35_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n32_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n34_match_lit_α
n32_match_sequence_as:
                                                                                        jmp   n31_match_arbno_as
n32_match_sequence_β:
                                                                                        jmp   n33_match_defer_β
n32_match_sequence_af:
                                                                                        jmp   n31_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n33_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx45_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]                    # ITEM
                        cmp              eax, 3
                                                                                        jne   .Lx45_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx45_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx45_10
.Lx45_9:
                        xor              eax, eax
.Lx45_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx45_11:
                        test             rax, rax
                                                                                        jz    .Lx45_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx45_4]
                        lea              rdx, [rip + .Lx45_5]
                                                                                        jmp   rax
.Lx45_4:
                                                                                        jmp   n31_match_arbno_as
.Lx45_5:
                                                                                        jmp   n34_match_lit_β
.Lx45_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx45_2:
                        test             rax, rax
                                                                                        je    .Lx45_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx45_7]
                        lea              rdx, [rip + .Lx45_8]
                                                                                        jmp   rax
.Lx45_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx45_2
.Lx45_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx45_2
.Lx45_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n34_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx45_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n31_match_arbno_as
.Lx45_6:
                        add              rsp, 16
                                                                                        jmp   n34_match_lit_β
n33_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n34_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n31_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n31_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n33_match_defer_α
n34_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n31_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n35_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx48_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]                    # ITEM
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
                                                                                        jmp   n31_match_arbno_α
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
                                                                                        jmp   n31_match_arbno_α
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
                                                                                        jg    proc_PAT$3_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   proc_PAT$3_ω
                        add              r14d, 1
                                                                                        jmp   n35_match_defer_α
n36_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$3_ω
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 208], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 200]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
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
                        mov              rax, qword ptr [rbp + 216]
                        mov              rbp, qword ptr [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, qword ptr [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, qword ptr [rbp + 232]
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         ITEM  = SPAN("0123456789")
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n52_call_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n52_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd259:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd259]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx258_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n54_lit_string_α
.Lx258_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n53_assign_α
n52_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n54_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # ITEM
                        mov              qword ptr [1879052296], rdx                    # ITEM
                        add              rsp, 32
                                                                                        jmp   n54_lit_string_α
#=======================================================================================================================
#         ITEM2 = SPAN("0123456789") | "x"
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n55_call_α
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n55_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd263:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd263]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx262_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n57_lit_string_α
.Lx262_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n56_assign_α
n55_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # ITEM2
                        mov              qword ptr [1879052312], rdx                    # ITEM2
                        add              rsp, 32
                                                                                        jmp   n57_lit_string_α
#=======================================================================================================================
#         NEST  = SPAN("0123456789") | "(" *NEST ")"
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n58_call_α
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n58_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd267:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd267]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx266_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n60_lit_string_α
.Lx266_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n59_assign_α
n58_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # NEST
                        mov              qword ptr [1879052328], rdx                    # NEST
                        add              rsp, 32
                                                                                        jmp   n60_lit_string_α
#=======================================================================================================================
#         LISTP = "(" *ITEM ARBNO("," *ITEM) ")"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n61_call_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd271:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd271]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx270_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n63_lit_string_α
.Lx270_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n62_assign_α
n61_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n63_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # LISTP
                        mov              qword ptr [1879052344], rdx                    # LISTP
                        add              rsp, 32
                                                                                        jmp   n63_lit_string_α
#=======================================================================================================================
#         S1 = "(1,22,333)"
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n64_assign_α
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "(1,22,333)"
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # S1
                        mov              qword ptr [1879052360], rdx                    # S1
                        add              rsp, 16
                                                                                        jmp   n65_lit_string_α
#=======================================================================================================================
#         S2 = "(7)"
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n66_assign_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "(7)"
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # S2
                        mov              qword ptr [1879052376], rdx                    # S2
                        add              rsp, 16
                                                                                        jmp   n67_lit_string_α
#=======================================================================================================================
#         S3 = "(1,,2)"
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n68_assign_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "(1,,2)"
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # S3
                        mov              qword ptr [1879052392], rdx                    # S3
                        add              rsp, 16
                                                                                        jmp   n69_lit_string_α
#=======================================================================================================================
#         S4 = "(11,22)"
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n70_assign_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "(11,22)"
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # S4
                        mov              qword ptr [1879052408], rdx                    # S4
                        add              rsp, 16
                                                                                        jmp   n71_lit_string_α
#=======================================================================================================================
#         S5 = "a1,2,3z"
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n72_assign_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "a1,2,3z"
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # S5
                        mov              qword ptr [1879052424], rdx                    # S5
                        add              rsp, 16
                                                                                        jmp   n73_lit_string_α
#=======================================================================================================================
#         S6 = "(4,5)"
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n74_assign_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "(4,5)"
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # S6
                        mov              qword ptr [1879052440], rdx                    # S6
                        add              rsp, 16
                                                                                        jmp   n75_lit_string_α
#=======================================================================================================================
#         S7 = "(1,(2),3)"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n76_assign_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "(1,(2),3)"
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # S7
                        mov              qword ptr [1879052456], rdx                    # S7
                        add              rsp, 16
                                                                                        jmp   n77_lit_string_α
#=======================================================================================================================
#         S8 = "(1,2,3,4,5,6,7,8,9,10,11,12)"
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 28
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n78_assign_α
.Lx287_0:
                        .quad            .Lx287_0_s
.Lx287_0_s:
                        .string          "(1,2,3,4,5,6,7,8,9,10,11,12)"
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # S8
                        mov              qword ptr [1879052472], rdx                    # S8
                        add              rsp, 16
                                                                                        jmp   n79_var_α
#=======================================================================================================================
#         S1 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)   :S(A1)F(B1)
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        sub              rsp, 704
                        mov              qword ptr [rsp + 0], 0
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
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # S1
                        mov              rdx, qword ptr [1879052360]                    # S1
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n80_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n80_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 456], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 464], r13                     # outer_Σ
                        mov              qword ptr [rbp + 472], r14                     # outer_δ
                        mov              qword ptr [rbp + 480], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 488], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 432], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 424], rax
                        mov              dword ptr [rbp + 416], 0
.Lx291_0:
                        mov              r14d, dword ptr [rbp + 416]
                                                                                        jmp   n81_match_sequence_α
n80_match_head_β:
                        add              dword ptr [rbp + 416], 1
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, r15d
                                                                                        jg    .Lx291_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx291_1
                                                                                        jmp   .Lx291_0
.Lx291_1:
                        mov              rax, qword ptr [rbp + 424]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 432]
                        mov              r10, qword ptr [1879048192]
.Lx291_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx291_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 464]
                        mov              r14, qword ptr [rbp + 472]
                        mov              r15, qword ptr [rbp + 480]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 456]
                        add              rsp, 704
                                                                                        jmp   n97_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_match_sequence_α:
                        mov              dword ptr [rbp + 496], r14d
                                                                                        jmp   n95_lit_integer_α
n81_match_sequence_as:
                                                                                        jmp   n82_match_release_α
n81_match_sequence_β:
                                                                                        jmp   n86_match_rpos_β
n81_match_sequence_af:
                                                                                        jmp   n80_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n82_match_release_α:
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
.Lx295_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx295_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx295_1:
                        test             rax, rax
                                                                                        je    .Lx295_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx295_3]
                        lea              rdx, [rip + .Lx295_4]
                                                                                        jmp   rax
.Lx295_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx295_1
.Lx295_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx295_1
.Lx295_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx295_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx295_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 464]
                        mov              r14, qword ptr [rbp + 472]
                        mov              r15, qword ptr [rbp + 480]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 456]
                        add              rsp, 704
                                                                                        jmp   n83_lit_string_α
#=======================================================================================================================
# A1      OUTPUT = "T1 MATCH"             :(N1)
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n84_assign_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "T1 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx297_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n99_var_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:
                        mov              qword ptr [rsp + 672], 6
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rsp + 680], rax
                                                                                        jmp   n86_match_rpos_α
n85_lit_integer_β:
                                                                                        jmp   n87_match_lit_β
.Lx298_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n86_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n87_match_lit_β
                                                                                        jmp   n82_match_release_α
n86_match_rpos_β:
                                                                                        jmp   n87_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n87_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n88_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n88_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n85_lit_integer_α
n87_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n88_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n88_match_arbno_α:
                        mov              dword ptr [rbp + 576], r14d
                        mov              dword ptr [rbp + 580], r14d
                        mov              dword ptr [rbp + 584], 0
                        mov              qword ptr [rbp + 600], rsp
                        mov              qword ptr [rbp + 592], 0
                                                                                        jmp   n87_match_lit_α
n88_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 580]
                        mov              rax, qword ptr [rbp + 592]
                        sub              rsp, 704
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 592], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n90_match_sequence_α
n88_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n90_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 584]
                        add              eax, 1
                        mov              dword ptr [rbp + 584], eax
                        mov              dword ptr [rbp + 580], r14d
                                                                                        jmp   n87_match_lit_α
n88_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 680]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 584]
                        test             ecx, ecx
                                                                                        jz    .Lx303_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 584], ecx
                        mov              qword ptr [rbp + 592], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n90_match_sequence_β
.Lx303_2:
                        mov              r14d, dword ptr [rbp + 576]
                        mov              rsp, qword ptr [rbp + 600]
                                                                                        jmp   n93_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rsp + 656], 1
                        mov              dword ptr [rsp + 660], 5
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rsp + 664], rax
                                                                                        jmp   main_γ
n89_lit_string_β:
                                                                                        jmp   main_ω
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n90_match_sequence_α:
                        mov              dword ptr [rbp + 624], r14d
                                                                                        jmp   n92_match_lit_α
n90_match_sequence_as:
                                                                                        jmp   n88_match_arbno_as
n90_match_sequence_β:
                                                                                        jmp   n91_match_defer_β
n90_match_sequence_af:
                                                                                        jmp   n88_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n91_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx307_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]                    # ITEM
                        cmp              eax, 3
                                                                                        jne   .Lx307_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx307_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx307_10
.Lx307_9:
                        xor              eax, eax
.Lx307_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx307_11:
                        test             rax, rax
                                                                                        jz    .Lx307_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx307_4]
                        lea              rdx, [rip + .Lx307_5]
                                                                                        jmp   rax
.Lx307_4:
                                                                                        jmp   n88_match_arbno_as
.Lx307_5:
                                                                                        jmp   n92_match_lit_β
.Lx307_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx307_2:
                        test             rax, rax
                                                                                        je    .Lx307_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx307_7]
                        lea              rdx, [rip + .Lx307_8]
                                                                                        jmp   rax
.Lx307_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx307_2
.Lx307_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx307_2
.Lx307_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n92_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx307_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n88_match_arbno_as
.Lx307_6:
                        add              rsp, 16
                                                                                        jmp   n92_match_lit_β
n91_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n92_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n88_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n88_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n91_match_defer_α
n92_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n88_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n93_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx310_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]                    # ITEM
                        cmp              eax, 3
                                                                                        jne   .Lx310_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx310_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx310_10
.Lx310_9:
                        xor              eax, eax
.Lx310_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx310_11:
                        test             rax, rax
                                                                                        jz    .Lx310_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx310_4]
                        lea              rdx, [rip + .Lx310_5]
                                                                                        jmp   rax
.Lx310_4:
                                                                                        jmp   n88_match_arbno_α
.Lx310_5:
                                                                                        jmp   n94_match_lit_β
.Lx310_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx310_2:
                        test             rax, rax
                                                                                        je    .Lx310_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx310_7]
                        lea              rdx, [rip + .Lx310_8]
                                                                                        jmp   rax
.Lx310_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx310_2
.Lx310_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx310_2
.Lx310_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n94_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx310_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n88_match_arbno_α
.Lx310_6:
                        add              rsp, 16
                                                                                        jmp   n94_match_lit_β
n93_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n94_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n80_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n80_match_head_β
                        add              r14d, 1
                                                                                        jmp   n93_match_defer_α
n94_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n80_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:
                        mov              qword ptr [rsp + 512], 6
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n96_match_pos_α
n95_lit_integer_β:
                                                                                        jmp   n80_match_head_β
.Lx313_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n96_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n80_match_head_β
                                                                                        jmp   n94_match_lit_α
n96_match_pos_β:
                                                                                        jmp   n80_match_head_β
#=======================================================================================================================
# B1      OUTPUT = "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n98_assign_α
.Lx315_0:
                        .quad            .Lx315_0_s
.Lx315_0_s:
                        .string          "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx316_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n99_var_α
.Lx316_0:
                        .quad            .Lx316_0_s
.Lx316_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N1      S2 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)  :S(A2)F(B2)
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 0], 0
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
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # S2
                        mov              rdx, qword ptr [1879052376]                    # S2
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n100_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n100_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 792], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 800], r13                     # outer_Σ
                        mov              qword ptr [rbp + 808], r14                     # outer_δ
                        mov              qword ptr [rbp + 816], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 824], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 768], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 760], rax
                        mov              dword ptr [rbp + 752], 0
.Lx319_0:
                        mov              r14d, dword ptr [rbp + 752]
                                                                                        jmp   n101_match_sequence_α
n100_match_head_β:
                        add              dword ptr [rbp + 752], 1
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, r15d
                                                                                        jg    .Lx319_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx319_1
                                                                                        jmp   .Lx319_0
.Lx319_1:
                        mov              rax, qword ptr [rbp + 760]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 768]
                        mov              r10, qword ptr [1879048192]
.Lx319_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx319_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 800]
                        mov              r14, qword ptr [rbp + 808]
                        mov              r15, qword ptr [rbp + 816]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 824]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 792]
                        add              rsp, 1040
                                                                                        jmp   n117_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_match_sequence_α:
                        mov              dword ptr [rbp + 832], r14d
                                                                                        jmp   n115_lit_integer_α
n101_match_sequence_as:
                                                                                        jmp   n102_match_release_α
n101_match_sequence_β:
                                                                                        jmp   n106_match_rpos_β
n101_match_sequence_af:
                                                                                        jmp   n100_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n102_match_release_α:
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
.Lx323_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx323_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx323_1:
                        test             rax, rax
                                                                                        je    .Lx323_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx323_3]
                        lea              rdx, [rip + .Lx323_4]
                                                                                        jmp   rax
.Lx323_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx323_1
.Lx323_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx323_1
.Lx323_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx323_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx323_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 800]
                        mov              r14, qword ptr [rbp + 808]
                        mov              r15, qword ptr [rbp + 816]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 824]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 792]
                        add              rsp, 1040
                                                                                        jmp   n103_lit_string_α
#=======================================================================================================================
# A2      OUTPUT = "T2 MATCH"             :(N2)
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n104_assign_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "T2 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx325_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n119_var_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_integer_α:
                        mov              qword ptr [rsp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rsp + 1016], rax
                                                                                        jmp   n106_match_rpos_α
n105_lit_integer_β:
                                                                                        jmp   n107_match_lit_β
.Lx326_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n106_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n107_match_lit_β
                                                                                        jmp   n102_match_release_α
n106_match_rpos_β:
                                                                                        jmp   n107_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n107_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n108_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n108_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n105_lit_integer_α
n107_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n108_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n108_match_arbno_α:
                        mov              dword ptr [rbp + 912], r14d
                        mov              dword ptr [rbp + 916], r14d
                        mov              dword ptr [rbp + 920], 0
                        mov              qword ptr [rbp + 936], rsp
                        mov              qword ptr [rbp + 928], 0
                                                                                        jmp   n107_match_lit_α
n108_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 916]
                        mov              rax, qword ptr [rbp + 928]
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 928], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n110_match_sequence_α
n108_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n110_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 920]
                        add              eax, 1
                        mov              dword ptr [rbp + 920], eax
                        mov              dword ptr [rbp + 916], r14d
                                                                                        jmp   n107_match_lit_α
n108_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 1016]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 920]
                        test             ecx, ecx
                                                                                        jz    .Lx331_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 920], ecx
                        mov              qword ptr [rbp + 928], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n110_match_sequence_β
.Lx331_2:
                        mov              r14d, dword ptr [rbp + 912]
                        mov              rsp, qword ptr [rbp + 936]
                                                                                        jmp   n113_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        mov              qword ptr [rsp + 992], 1
                        mov              dword ptr [rsp + 996], 5
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rsp + 1000], rax
                                                                                        jmp   main_γ
n109_lit_string_β:
                                                                                        jmp   main_ω
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n110_match_sequence_α:
                        mov              dword ptr [rbp + 960], r14d
                                                                                        jmp   n112_match_lit_α
n110_match_sequence_as:
                                                                                        jmp   n108_match_arbno_as
n110_match_sequence_β:
                                                                                        jmp   n111_match_defer_β
n110_match_sequence_af:
                                                                                        jmp   n108_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n111_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx335_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]                    # ITEM
                        cmp              eax, 3
                                                                                        jne   .Lx335_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx335_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx335_10
.Lx335_9:
                        xor              eax, eax
.Lx335_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx335_11:
                        test             rax, rax
                                                                                        jz    .Lx335_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx335_4]
                        lea              rdx, [rip + .Lx335_5]
                                                                                        jmp   rax
.Lx335_4:
                                                                                        jmp   n108_match_arbno_as
.Lx335_5:
                                                                                        jmp   n112_match_lit_β
.Lx335_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx335_2:
                        test             rax, rax
                                                                                        je    .Lx335_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx335_7]
                        lea              rdx, [rip + .Lx335_8]
                                                                                        jmp   rax
.Lx335_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx335_2
.Lx335_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx335_2
.Lx335_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n112_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx335_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n108_match_arbno_as
.Lx335_6:
                        add              rsp, 16
                                                                                        jmp   n112_match_lit_β
n111_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n112_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n108_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n108_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n111_match_defer_α
n112_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n108_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n113_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx338_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]                    # ITEM
                        cmp              eax, 3
                                                                                        jne   .Lx338_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx338_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx338_10
.Lx338_9:
                        xor              eax, eax
.Lx338_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx338_11:
                        test             rax, rax
                                                                                        jz    .Lx338_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx338_4]
                        lea              rdx, [rip + .Lx338_5]
                                                                                        jmp   rax
.Lx338_4:
                                                                                        jmp   n108_match_arbno_α
.Lx338_5:
                                                                                        jmp   n114_match_lit_β
.Lx338_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx338_2:
                        test             rax, rax
                                                                                        je    .Lx338_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx338_7]
                        lea              rdx, [rip + .Lx338_8]
                                                                                        jmp   rax
.Lx338_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx338_2
.Lx338_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx338_2
.Lx338_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n114_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx338_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n108_match_arbno_α
.Lx338_6:
                        add              rsp, 16
                                                                                        jmp   n114_match_lit_β
n113_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n114_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n100_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n100_match_head_β
                        add              r14d, 1
                                                                                        jmp   n113_match_defer_α
n114_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n100_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:
                        mov              qword ptr [rsp + 848], 6
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 856], rax
                                                                                        jmp   n116_match_pos_α
n115_lit_integer_β:
                                                                                        jmp   n100_match_head_β
.Lx341_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n116_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n100_match_head_β
                                                                                        jmp   n114_match_lit_α
n116_match_pos_β:
                                                                                        jmp   n100_match_head_β
#=======================================================================================================================
# B2      OUTPUT = "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n118_assign_α
.Lx343_0:
                        .quad            .Lx343_0_s
.Lx343_0_s:
                        .string          "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n118_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx344_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n119_var_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N2      S3 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)  :S(A3)F(B3)
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:
                        sub              rsp, 1376
                        mov              qword ptr [rsp + 0], 0
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
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # S3
                        mov              rdx, qword ptr [1879052392]                    # S3
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n120_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n120_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1128], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 1136], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1144], r14                    # outer_δ
                        mov              qword ptr [rbp + 1152], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1160], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 1104], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1096], rax
                        mov              dword ptr [rbp + 1088], 0
.Lx347_0:
                        mov              r14d, dword ptr [rbp + 1088]
                                                                                        jmp   n121_match_sequence_α
n120_match_head_β:
                        add              dword ptr [rbp + 1088], 1
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, r15d
                                                                                        jg    .Lx347_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx347_1
                                                                                        jmp   .Lx347_0
.Lx347_1:
                        mov              rax, qword ptr [rbp + 1096]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1104]
                        mov              r10, qword ptr [1879048192]
.Lx347_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx347_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1136]
                        mov              r14, qword ptr [rbp + 1144]
                        mov              r15, qword ptr [rbp + 1152]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1160]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1128]
                        add              rsp, 1376
                                                                                        jmp   n137_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n121_match_sequence_α:
                        mov              dword ptr [rbp + 1168], r14d
                                                                                        jmp   n135_lit_integer_α
n121_match_sequence_as:
                                                                                        jmp   n122_match_release_α
n121_match_sequence_β:
                                                                                        jmp   n126_match_rpos_β
n121_match_sequence_af:
                                                                                        jmp   n120_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n122_match_release_α:
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
.Lx351_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx351_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx351_1:
                        test             rax, rax
                                                                                        je    .Lx351_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx351_3]
                        lea              rdx, [rip + .Lx351_4]
                                                                                        jmp   rax
.Lx351_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx351_1
.Lx351_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx351_1
.Lx351_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx351_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx351_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1136]
                        mov              r14, qword ptr [rbp + 1144]
                        mov              r15, qword ptr [rbp + 1152]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1160]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1128]
                        add              rsp, 1376
                                                                                        jmp   n123_lit_string_α
#=======================================================================================================================
# A3      OUTPUT = "T3 MATCH"             :(N3)
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n124_assign_α
.Lx352_0:
                        .quad            .Lx352_0_s
.Lx352_0_s:
                        .string          "T3 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx353_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n139_var_α
.Lx353_0:
                        .quad            .Lx353_0_s
.Lx353_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:
                        mov              qword ptr [rsp + 1344], 6
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rsp + 1352], rax
                                                                                        jmp   n126_match_rpos_α
n125_lit_integer_β:
                                                                                        jmp   n127_match_lit_β
.Lx354_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n126_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n127_match_lit_β
                                                                                        jmp   n122_match_release_α
n126_match_rpos_β:
                                                                                        jmp   n127_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n127_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n128_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n128_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n125_lit_integer_α
n127_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n128_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n128_match_arbno_α:
                        mov              dword ptr [rbp + 1248], r14d
                        mov              dword ptr [rbp + 1252], r14d
                        mov              dword ptr [rbp + 1256], 0
                        mov              qword ptr [rbp + 1272], rsp
                        mov              qword ptr [rbp + 1264], 0
                                                                                        jmp   n127_match_lit_α
n128_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1252]
                        mov              rax, qword ptr [rbp + 1264]
                        sub              rsp, 1376
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1264], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n130_match_sequence_α
n128_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n130_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 1256]
                        add              eax, 1
                        mov              dword ptr [rbp + 1256], eax
                        mov              dword ptr [rbp + 1252], r14d
                                                                                        jmp   n127_match_lit_α
n128_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 1352]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1256]
                        test             ecx, ecx
                                                                                        jz    .Lx359_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1256], ecx
                        mov              qword ptr [rbp + 1264], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n130_match_sequence_β
.Lx359_2:
                        mov              r14d, dword ptr [rbp + 1248]
                        mov              rsp, qword ptr [rbp + 1272]
                                                                                        jmp   n133_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rsp + 1328], 1
                        mov              dword ptr [rsp + 1332], 5
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rsp + 1336], rax
                                                                                        jmp   main_γ
n129_lit_string_β:
                                                                                        jmp   main_ω
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n130_match_sequence_α:
                        mov              dword ptr [rbp + 1296], r14d
                                                                                        jmp   n132_match_lit_α
n130_match_sequence_as:
                                                                                        jmp   n128_match_arbno_as
n130_match_sequence_β:
                                                                                        jmp   n131_match_defer_β
n130_match_sequence_af:
                                                                                        jmp   n128_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n131_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx363_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]                    # ITEM
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
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx363_11:
                        test             rax, rax
                                                                                        jz    .Lx363_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx363_4]
                        lea              rdx, [rip + .Lx363_5]
                                                                                        jmp   rax
.Lx363_4:
                                                                                        jmp   n128_match_arbno_as
.Lx363_5:
                                                                                        jmp   n132_match_lit_β
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
                                                                                        js    n132_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx363_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n128_match_arbno_as
.Lx363_6:
                        add              rsp, 16
                                                                                        jmp   n132_match_lit_β
n131_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n132_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n128_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n128_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n131_match_defer_α
n132_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n128_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n133_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx366_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]                    # ITEM
                        cmp              eax, 3
                                                                                        jne   .Lx366_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx366_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx366_10
.Lx366_9:
                        xor              eax, eax
.Lx366_10:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rax
.Lx366_11:
                        test             rax, rax
                                                                                        jz    .Lx366_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx366_4]
                        lea              rdx, [rip + .Lx366_5]
                                                                                        jmp   rax
.Lx366_4:
                                                                                        jmp   n128_match_arbno_α
.Lx366_5:
                                                                                        jmp   n134_match_lit_β
.Lx366_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx366_2:
                        test             rax, rax
                                                                                        je    .Lx366_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx366_7]
                        lea              rdx, [rip + .Lx366_8]
                                                                                        jmp   rax
.Lx366_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx366_2
.Lx366_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx366_2
.Lx366_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n134_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx366_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n128_match_arbno_α
.Lx366_6:
                        add              rsp, 16
                                                                                        jmp   n134_match_lit_β
n133_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n134_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n120_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n120_match_head_β
                        add              r14d, 1
                                                                                        jmp   n133_match_defer_α
n134_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n120_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:
                        mov              qword ptr [rsp + 1184], 6
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 1192], rax
                                                                                        jmp   n136_match_pos_α
n135_lit_integer_β:
                                                                                        jmp   n120_match_head_β
.Lx369_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n136_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n120_match_head_β
                                                                                        jmp   n134_match_lit_α
n136_match_pos_β:
                                                                                        jmp   n120_match_head_β
#=======================================================================================================================
# B3      OUTPUT = "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n138_assign_α
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
                        .string          "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n138_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx372_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n139_var_α
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N3      S4 POS(0) "(" *ITEM ARBNO("," *ITEM) "," *ITEM ")" RPOS(0)  :S(A4)F(B4)
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:
                        sub              rsp, 1744
                        mov              qword ptr [rsp + 0], 0
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
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # S4
                        mov              rdx, qword ptr [1879052408]                    # S4
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n140_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n140_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1464], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 1472], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1480], r14                    # outer_δ
                        mov              qword ptr [rbp + 1488], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1496], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 1440], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1432], rax
                        mov              dword ptr [rbp + 1424], 0
.Lx375_0:
                        mov              r14d, dword ptr [rbp + 1424]
                                                                                        jmp   n141_match_sequence_α
n140_match_head_β:
                        add              dword ptr [rbp + 1424], 1
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, r15d
                                                                                        jg    .Lx375_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx375_1
                                                                                        jmp   .Lx375_0
.Lx375_1:
                        mov              rax, qword ptr [rbp + 1432]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1440]
                        mov              r10, qword ptr [1879048192]
.Lx375_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx375_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1472]
                        mov              r14, qword ptr [rbp + 1480]
                        mov              r15, qword ptr [rbp + 1488]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1496]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1464]
                        add              rsp, 1744
                                                                                        jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n141_match_sequence_α:
                        mov              dword ptr [rbp + 1504], r14d
                                                                                        jmp   n157_lit_integer_α
n141_match_sequence_as:
                                                                                        jmp   n142_match_release_α
n141_match_sequence_β:
                                                                                        jmp   n146_match_rpos_β
n141_match_sequence_af:
                                                                                        jmp   n140_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n142_match_release_α:
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
.Lx379_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx379_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx379_1:
                        test             rax, rax
                                                                                        je    .Lx379_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx379_3]
                        lea              rdx, [rip + .Lx379_4]
                                                                                        jmp   rax
.Lx379_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx379_1
.Lx379_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx379_1
.Lx379_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx379_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx379_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1472]
                        mov              r14, qword ptr [rbp + 1480]
                        mov              r15, qword ptr [rbp + 1488]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1496]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1464]
                        add              rsp, 1744
                                                                                        jmp   n143_lit_string_α
#=======================================================================================================================
# A4      OUTPUT = "T4 MATCH"             :(N4)
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n144_assign_α
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          "T4 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n144_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx381_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n161_var_α
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rsp + 1712], 6
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rsp + 1720], rax
                                                                                        jmp   n146_match_rpos_α
n145_lit_integer_β:
                                                                                        jmp   n147_match_lit_β
.Lx382_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n146_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n147_match_lit_β
                                                                                        jmp   n142_match_release_α
n146_match_rpos_β:
                                                                                        jmp   n147_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n147_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n148_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n148_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n145_lit_integer_α
n147_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n148_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n148_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx386_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]                    # ITEM
                        cmp              eax, 3
                                                                                        jne   .Lx386_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx386_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx386_10
.Lx386_9:
                        xor              eax, eax
.Lx386_10:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              qword ptr [rsi + 0], rax
.Lx386_11:
                        test             rax, rax
                                                                                        jz    .Lx386_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx386_4]
                        lea              rdx, [rip + .Lx386_5]
                                                                                        jmp   rax
.Lx386_4:
                                                                                        jmp   n147_match_lit_α
.Lx386_5:
                                                                                        jmp   n149_match_lit_β
.Lx386_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx386_2:
                        test             rax, rax
                                                                                        je    .Lx386_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx386_7]
                        lea              rdx, [rip + .Lx386_8]
                                                                                        jmp   rax
.Lx386_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx386_2
.Lx386_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx386_2
.Lx386_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n149_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx386_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n147_match_lit_α
.Lx386_6:
                        add              rsp, 16
                                                                                        jmp   n149_match_lit_β
n148_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n149_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n150_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n150_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n148_match_defer_α
n149_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n150_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n150_match_arbno_α:
                        mov              dword ptr [rbp + 1584], r14d
                        mov              dword ptr [rbp + 1588], r14d
                        mov              dword ptr [rbp + 1592], 0
                        mov              qword ptr [rbp + 1608], rsp
                        mov              qword ptr [rbp + 1600], 0
                                                                                        jmp   n149_match_lit_α
n150_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1588]
                        mov              rax, qword ptr [rbp + 1600]
                        sub              rsp, 1712
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1600], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n152_match_sequence_α
n150_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n152_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 1592]
                        add              eax, 1
                        mov              dword ptr [rbp + 1592], eax
                        mov              dword ptr [rbp + 1588], r14d
                                                                                        jmp   n149_match_lit_α
n150_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 1688]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1592]
                        test             ecx, ecx
                                                                                        jz    .Lx390_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1592], ecx
                        mov              qword ptr [rbp + 1600], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n152_match_sequence_β
.Lx390_2:
                        mov              r14d, dword ptr [rbp + 1584]
                        mov              rsp, qword ptr [rbp + 1608]
                                                                                        jmp   n155_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rsp + 1664], 1
                        mov              dword ptr [rsp + 1668], 5
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rsp + 1672], rax
                                                                                        jmp   main_γ
n151_lit_string_β:
                                                                                        jmp   main_ω
.Lx391_0:
                        .quad            .Lx391_0_s
.Lx391_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n152_match_sequence_α:
                        mov              dword ptr [rbp + 1632], r14d
                                                                                        jmp   n154_match_lit_α
n152_match_sequence_as:
                                                                                        jmp   n150_match_arbno_as
n152_match_sequence_β:
                                                                                        jmp   n153_match_defer_β
n152_match_sequence_af:
                                                                                        jmp   n150_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n153_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx394_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]                    # ITEM
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
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              qword ptr [rsi + 0], rax
.Lx394_11:
                        test             rax, rax
                                                                                        jz    .Lx394_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx394_4]
                        lea              rdx, [rip + .Lx394_5]
                                                                                        jmp   rax
.Lx394_4:
                                                                                        jmp   n150_match_arbno_as
.Lx394_5:
                                                                                        jmp   n154_match_lit_β
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
                                                                                        js    n154_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx394_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n150_match_arbno_as
.Lx394_6:
                        add              rsp, 16
                                                                                        jmp   n154_match_lit_β
n153_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n154_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n150_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n150_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n153_match_defer_α
n154_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n150_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n155_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx397_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]                    # ITEM
                        cmp              eax, 3
                                                                                        jne   .Lx397_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx397_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx397_10
.Lx397_9:
                        xor              eax, eax
.Lx397_10:
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              qword ptr [rsi + 0], rax
.Lx397_11:
                        test             rax, rax
                                                                                        jz    .Lx397_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx397_4]
                        lea              rdx, [rip + .Lx397_5]
                                                                                        jmp   rax
.Lx397_4:
                                                                                        jmp   n150_match_arbno_α
.Lx397_5:
                                                                                        jmp   n156_match_lit_β
.Lx397_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx397_2:
                        test             rax, rax
                                                                                        je    .Lx397_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx397_7]
                        lea              rdx, [rip + .Lx397_8]
                                                                                        jmp   rax
.Lx397_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx397_2
.Lx397_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx397_2
.Lx397_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n156_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx397_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n150_match_arbno_α
.Lx397_6:
                        add              rsp, 16
                                                                                        jmp   n156_match_lit_β
n155_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n156_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n140_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n140_match_head_β
                        add              r14d, 1
                                                                                        jmp   n155_match_defer_α
n156_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n140_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:
                        mov              qword ptr [rsp + 1520], 6
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rsp + 1528], rax
                                                                                        jmp   n158_match_pos_α
n157_lit_integer_β:
                                                                                        jmp   n140_match_head_β
.Lx400_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n158_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n140_match_head_β
                                                                                        jmp   n156_match_lit_α
n158_match_pos_β:
                                                                                        jmp   n140_match_head_β
#=======================================================================================================================
# B4      OUTPUT = "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n160_assign_α
.Lx402_0:
                        .quad            .Lx402_0_s
.Lx402_0_s:
                        .string          "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx403_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n161_var_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N4      S5 POS(0) "a" *ITEM2 ARBNO("," *ITEM2) "z" RPOS(0)  :S(A5)F(B5)
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:
                        sub              rsp, 2080
                        mov              qword ptr [rsp + 0], 0
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
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # S5
                        mov              rdx, qword ptr [1879052424]                    # S5
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n162_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n162_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1832], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 1840], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1848], r14                    # outer_δ
                        mov              qword ptr [rbp + 1856], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1864], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 1808], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1800], rax
                        mov              dword ptr [rbp + 1792], 0
.Lx406_0:
                        mov              r14d, dword ptr [rbp + 1792]
                                                                                        jmp   n163_match_sequence_α
n162_match_head_β:
                        add              dword ptr [rbp + 1792], 1
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, r15d
                                                                                        jg    .Lx406_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx406_1
                                                                                        jmp   .Lx406_0
.Lx406_1:
                        mov              rax, qword ptr [rbp + 1800]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1808]
                        mov              r10, qword ptr [1879048192]
.Lx406_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx406_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1840]
                        mov              r14, qword ptr [rbp + 1848]
                        mov              r15, qword ptr [rbp + 1856]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1864]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1832]
                        add              rsp, 2080
                                                                                        jmp   n179_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n163_match_sequence_α:
                        mov              dword ptr [rbp + 1872], r14d
                                                                                        jmp   n177_lit_integer_α
n163_match_sequence_as:
                                                                                        jmp   n164_match_release_α
n163_match_sequence_β:
                                                                                        jmp   n168_match_rpos_β
n163_match_sequence_af:
                                                                                        jmp   n162_match_head_β
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
.Lx410_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx410_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx410_1:
                        test             rax, rax
                                                                                        je    .Lx410_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx410_3]
                        lea              rdx, [rip + .Lx410_4]
                                                                                        jmp   rax
.Lx410_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx410_1
.Lx410_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx410_1
.Lx410_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx410_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx410_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1840]
                        mov              r14, qword ptr [rbp + 1848]
                        mov              r15, qword ptr [rbp + 1856]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1864]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1832]
                        add              rsp, 2080
                                                                                        jmp   n165_lit_string_α
#=======================================================================================================================
# A5      OUTPUT = "T5 MATCH"             :(N5)
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n166_assign_α
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "T5 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n166_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx412_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n181_var_α
.Lx412_0:
                        .quad            .Lx412_0_s
.Lx412_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:
                        mov              qword ptr [rsp + 2048], 6
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 2056], rax
                                                                                        jmp   n168_match_rpos_α
n167_lit_integer_β:
                                                                                        jmp   n169_match_lit_β
.Lx413_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n168_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n169_match_lit_β
                                                                                        jmp   n164_match_release_α
n168_match_rpos_β:
                                                                                        jmp   n169_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n169_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n170_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 122
                                                                                        jne   n170_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n167_lit_integer_α
n169_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n170_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n170_match_arbno_α:
                        mov              dword ptr [rbp + 1952], r14d
                        mov              dword ptr [rbp + 1956], r14d
                        mov              dword ptr [rbp + 1960], 0
                        mov              qword ptr [rbp + 1976], rsp
                        mov              qword ptr [rbp + 1968], 0
                                                                                        jmp   n169_match_lit_α
n170_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1956]
                        mov              rax, qword ptr [rbp + 1968]
                        sub              rsp, 2080
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1968], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n172_match_sequence_α
n170_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n172_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 1960]
                        add              eax, 1
                        mov              dword ptr [rbp + 1960], eax
                        mov              dword ptr [rbp + 1956], r14d
                                                                                        jmp   n169_match_lit_α
n170_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 2056]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1960]
                        test             ecx, ecx
                                                                                        jz    .Lx418_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1960], ecx
                        mov              qword ptr [rbp + 1968], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n172_match_sequence_β
.Lx418_2:
                        mov              r14d, dword ptr [rbp + 1952]
                        mov              rsp, qword ptr [rbp + 1976]
                                                                                        jmp   n175_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:
                        mov              qword ptr [rsp + 2032], 1
                        mov              dword ptr [rsp + 2036], 5
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rsp + 2040], rax
                                                                                        jmp   main_γ
n171_lit_string_β:
                                                                                        jmp   main_ω
.Lx419_0:
                        .quad            .Lx419_0_s
.Lx419_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n172_match_sequence_α:
                        mov              dword ptr [rbp + 2000], r14d
                                                                                        jmp   n174_match_lit_α
n172_match_sequence_as:
                                                                                        jmp   n170_match_arbno_as
n172_match_sequence_β:
                                                                                        jmp   n173_match_defer_β
n172_match_sequence_af:
                                                                                        jmp   n170_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n173_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx422_11
                        mov              rax, qword ptr [1879052304]                    # ITEM2
                        mov              rdx, qword ptr [1879052312]                    # ITEM2
                        cmp              eax, 3
                                                                                        jne   .Lx422_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx422_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx422_10
.Lx422_9:
                        xor              eax, eax
.Lx422_10:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              qword ptr [rsi + 0], rax
.Lx422_11:
                        test             rax, rax
                                                                                        jz    .Lx422_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx422_4]
                        lea              rdx, [rip + .Lx422_5]
                                                                                        jmp   rax
.Lx422_4:
                                                                                        jmp   n170_match_arbno_as
.Lx422_5:
                                                                                        jmp   n174_match_lit_β
.Lx422_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx422_2:
                        test             rax, rax
                                                                                        je    .Lx422_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx422_7]
                        lea              rdx, [rip + .Lx422_8]
                                                                                        jmp   rax
.Lx422_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx422_2
.Lx422_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx422_2
.Lx422_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n174_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx422_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n170_match_arbno_as
.Lx422_6:
                        add              rsp, 16
                                                                                        jmp   n174_match_lit_β
n173_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n174_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n170_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n170_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n173_match_defer_α
n174_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n170_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n175_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx425_11
                        mov              rax, qword ptr [1879052304]                    # ITEM2
                        mov              rdx, qword ptr [1879052312]                    # ITEM2
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
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              qword ptr [rsi + 0], rax
.Lx425_11:
                        test             rax, rax
                                                                                        jz    .Lx425_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx425_4]
                        lea              rdx, [rip + .Lx425_5]
                                                                                        jmp   rax
.Lx425_4:
                                                                                        jmp   n170_match_arbno_α
.Lx425_5:
                                                                                        jmp   n176_match_lit_β
.Lx425_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
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
                                                                                        js    n176_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx425_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n170_match_arbno_α
.Lx425_6:
                        add              rsp, 16
                                                                                        jmp   n176_match_lit_β
n175_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n176_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n162_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n162_match_head_β
                        add              r14d, 1
                                                                                        jmp   n175_match_defer_α
n176_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n162_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_integer_α:
                        mov              qword ptr [rsp + 1888], 6
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rsp + 1896], rax
                                                                                        jmp   n178_match_pos_α
n177_lit_integer_β:
                                                                                        jmp   n162_match_head_β
.Lx428_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n178_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n162_match_head_β
                                                                                        jmp   n176_match_lit_α
n178_match_pos_β:
                                                                                        jmp   n162_match_head_β
#=======================================================================================================================
# B5      OUTPUT = "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n180_assign_α
.Lx430_0:
                        .quad            .Lx430_0_s
.Lx430_0_s:
                        .string          "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n180_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx431_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n181_var_α
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N5      S6 POS(0) LISTP RPOS(0)         :S(A6)F(B6)
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:
                        sub              rsp, 2288
                        mov              qword ptr [rsp + 0], 0
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
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # S6
                        mov              rdx, qword ptr [1879052440]                    # S6
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n182_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n182_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2168], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 2176], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2184], r14                    # outer_δ
                        mov              qword ptr [rbp + 2192], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2200], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 2144], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2136], rax
                        mov              dword ptr [rbp + 2128], 0
.Lx434_0:
                        mov              r14d, dword ptr [rbp + 2128]
                                                                                        jmp   n183_match_sequence_α
n182_match_head_β:
                        add              dword ptr [rbp + 2128], 1
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              eax, r15d
                                                                                        jg    .Lx434_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx434_1
                                                                                        jmp   .Lx434_0
.Lx434_1:
                        mov              rax, qword ptr [rbp + 2136]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2144]
                        mov              r10, qword ptr [1879048192]
.Lx434_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx434_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2176]
                        mov              r14, qword ptr [rbp + 2184]
                        mov              r15, qword ptr [rbp + 2192]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2200]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2168]
                        add              rsp, 2288
                                                                                        jmp   n192_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n183_match_sequence_α:
                        mov              dword ptr [rbp + 2208], r14d
                                                                                        jmp   n190_lit_integer_α
n183_match_sequence_as:
                                                                                        jmp   n184_match_release_α
n183_match_sequence_β:
                                                                                        jmp   n188_match_rpos_β
n183_match_sequence_af:
                                                                                        jmp   n182_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n184_match_release_α:
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
.Lx438_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx438_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx438_1:
                        test             rax, rax
                                                                                        je    .Lx438_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx438_3]
                        lea              rdx, [rip + .Lx438_4]
                                                                                        jmp   rax
.Lx438_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx438_1
.Lx438_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx438_1
.Lx438_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx438_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx438_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2176]
                        mov              r14, qword ptr [rbp + 2184]
                        mov              r15, qword ptr [rbp + 2192]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2200]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2168]
                        add              rsp, 2288
                                                                                        jmp   n185_lit_string_α
#=======================================================================================================================
# A6      OUTPUT = "T6 MATCH"             :(N6)
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n186_assign_α
.Lx439_0:
                        .quad            .Lx439_0_s
.Lx439_0_s:
                        .string          "T6 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx440_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n194_var_α
.Lx440_0:
                        .quad            .Lx440_0_s
.Lx440_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:
                        mov              qword ptr [rsp + 2256], 6
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rsp + 2264], rax
                                                                                        jmp   n188_match_rpos_α
n187_lit_integer_β:
                                                                                        jmp   n189_match_patref_β
.Lx441_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n188_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n189_match_patref_β
                                                                                        jmp   n184_match_release_α
n188_match_rpos_β:
                                                                                        jmp   n189_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n189_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+112]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx443_11
                        mov              rax, qword ptr [1879052336]                    # LISTP
                        mov              rdx, qword ptr [1879052344]                    # LISTP
                        cmp              eax, 3
                                                                                        jne   .Lx443_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx443_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx443_10
.Lx443_9:
                        xor              eax, eax
.Lx443_10:
                        lea              rsi, [rip + g_sno_defer_cells+112]
                        mov              qword ptr [rsi + 0], rax
.Lx443_11:
                        test             rax, rax
                                                                                        jz    .Lx443_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx443_4]
                        lea              rdx, [rip + .Lx443_5]
                                                                                        jmp   rax
.Lx443_4:
                                                                                        jmp   n187_lit_integer_α
.Lx443_5:
                                                                                        jmp   n182_match_head_β
.Lx443_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx443_2:
                        test             rax, rax
                                                                                        je    .Lx443_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx443_7]
                        lea              rdx, [rip + .Lx443_8]
                                                                                        jmp   rax
.Lx443_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx443_2
.Lx443_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx443_2
.Lx443_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n182_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx443_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n187_lit_integer_α
.Lx443_6:
                        add              rsp, 16
                                                                                        jmp   n182_match_head_β
n189_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_integer_α:
                        mov              qword ptr [rsp + 2224], 6
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rsp + 2232], rax
                                                                                        jmp   n191_match_pos_α
n190_lit_integer_β:
                                                                                        jmp   n182_match_head_β
.Lx444_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n191_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n182_match_head_β
                                                                                        jmp   n189_match_patref_α
n191_match_pos_β:
                                                                                        jmp   n182_match_head_β
#=======================================================================================================================
# B6      OUTPUT = "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n193_assign_α
.Lx446_0:
                        .quad            .Lx446_0_s
.Lx446_0_s:
                        .string          "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n193_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx447_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n194_var_α
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N6      S7 POS(0) "(" *NEST ARBNO("," *NEST) ")" RPOS(0)  :S(A7)F(B7)
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:
                        sub              rsp, 2608
                        mov              qword ptr [rsp + 0], 0
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
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0
                        mov              qword ptr [rsp + 2416], 0
                        mov              qword ptr [rsp + 2424], 0
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0
                        mov              qword ptr [rsp + 2480], 0
                        mov              qword ptr [rsp + 2488], 0
                        mov              qword ptr [rsp + 2496], 0
                        mov              qword ptr [rsp + 2504], 0
                        mov              qword ptr [rsp + 2512], 0
                        mov              qword ptr [rsp + 2520], 0
                        mov              qword ptr [rsp + 2528], 0
                        mov              qword ptr [rsp + 2536], 0
                        mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                        mov              qword ptr [rsp + 2560], 0
                        mov              qword ptr [rsp + 2568], 0
                        mov              qword ptr [rsp + 2576], 0
                        mov              qword ptr [rsp + 2584], 0
                        mov              qword ptr [rsp + 2592], 0
                        mov              qword ptr [rsp + 2600], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S7
                        mov              rdx, qword ptr [1879052456]                    # S7
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n195_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n195_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2376], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 2384], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2392], r14                    # outer_δ
                        mov              qword ptr [rbp + 2400], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2408], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 2352], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2344], rax
                        mov              dword ptr [rbp + 2336], 0
.Lx450_0:
                        mov              r14d, dword ptr [rbp + 2336]
                                                                                        jmp   n196_match_sequence_α
n195_match_head_β:
                        add              dword ptr [rbp + 2336], 1
                        mov              eax, dword ptr [rbp + 2336]
                        cmp              eax, r15d
                                                                                        jg    .Lx450_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx450_1
                                                                                        jmp   .Lx450_0
.Lx450_1:
                        mov              rax, qword ptr [rbp + 2344]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2352]
                        mov              r10, qword ptr [1879048192]
.Lx450_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx450_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2384]
                        mov              r14, qword ptr [rbp + 2392]
                        mov              r15, qword ptr [rbp + 2400]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2408]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2376]
                        add              rsp, 2608
                                                                                        jmp   n211_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n196_match_sequence_α:
                        mov              dword ptr [rbp + 2416], r14d
                                                                                        jmp   n209_lit_integer_α
n196_match_sequence_as:
                                                                                        jmp   n197_match_release_α
n196_match_sequence_β:
                                                                                        jmp   n201_match_rpos_β
n196_match_sequence_af:
                                                                                        jmp   n195_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n197_match_release_α:
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
.Lx454_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx454_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx454_1:
                        test             rax, rax
                                                                                        je    .Lx454_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx454_3]
                        lea              rdx, [rip + .Lx454_4]
                                                                                        jmp   rax
.Lx454_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx454_1
.Lx454_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx454_1
.Lx454_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx454_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx454_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2384]
                        mov              r14, qword ptr [rbp + 2392]
                        mov              r15, qword ptr [rbp + 2400]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2408]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2376]
                        add              rsp, 2608
                                                                                        jmp   n198_lit_string_α
#=======================================================================================================================
# A7      OUTPUT = "T7 MATCH"             :(N7)
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n199_assign_α
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          "T7 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n199_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx456_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n213_var_α
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_integer_α:
                        mov              qword ptr [rsp + 2576], 6
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rsp + 2584], rax
                                                                                        jmp   n201_match_rpos_α
n200_lit_integer_β:
                                                                                        jmp   n202_match_lit_β
.Lx457_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n201_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n202_match_lit_β
                                                                                        jmp   n197_match_release_α
n201_match_rpos_β:
                                                                                        jmp   n202_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n202_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n203_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n203_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n200_lit_integer_α
n202_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n203_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n203_match_arbno_α:
                        mov              dword ptr [rbp + 2480], r14d
                        mov              dword ptr [rbp + 2484], r14d
                        mov              dword ptr [rbp + 2488], 0
                        mov              qword ptr [rbp + 2504], rsp
                        mov              qword ptr [rbp + 2496], 0
                                                                                        jmp   n202_match_lit_α
n203_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 2484]
                        mov              rax, qword ptr [rbp + 2496]
                        sub              rsp, 2608
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 2496], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n204_match_sequence_α
n203_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n204_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 2488]
                        add              eax, 1
                        mov              dword ptr [rbp + 2488], eax
                        mov              dword ptr [rbp + 2484], r14d
                                                                                        jmp   n202_match_lit_α
n203_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 2584]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 2488]
                        test             ecx, ecx
                                                                                        jz    .Lx462_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 2488], ecx
                        mov              qword ptr [rbp + 2496], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n204_match_sequence_β
.Lx462_2:
                        mov              r14d, dword ptr [rbp + 2480]
                        mov              rsp, qword ptr [rbp + 2504]
                                                                                        jmp   n207_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n204_match_sequence_α:
                        mov              dword ptr [rbp + 2528], r14d
                                                                                        jmp   n206_match_lit_α
n204_match_sequence_as:
                                                                                        jmp   n203_match_arbno_as
n204_match_sequence_β:
                                                                                        jmp   n205_match_defer_β
n204_match_sequence_af:
                                                                                        jmp   n203_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n205_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+120]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx465_11
                        mov              rax, qword ptr [1879052320]                    # NEST
                        mov              rdx, qword ptr [1879052328]                    # NEST
                        cmp              eax, 3
                                                                                        jne   .Lx465_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx465_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx465_10
.Lx465_9:
                        xor              eax, eax
.Lx465_10:
                        lea              rsi, [rip + g_sno_defer_cells+120]
                        mov              qword ptr [rsi + 0], rax
.Lx465_11:
                        test             rax, rax
                                                                                        jz    .Lx465_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx465_4]
                        lea              rdx, [rip + .Lx465_5]
                                                                                        jmp   rax
.Lx465_4:
                                                                                        jmp   n203_match_arbno_as
.Lx465_5:
                                                                                        jmp   n206_match_lit_β
.Lx465_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx465_2:
                        test             rax, rax
                                                                                        je    .Lx465_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx465_7]
                        lea              rdx, [rip + .Lx465_8]
                                                                                        jmp   rax
.Lx465_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx465_2
.Lx465_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx465_2
.Lx465_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n206_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx465_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n203_match_arbno_as
.Lx465_6:
                        add              rsp, 16
                                                                                        jmp   n206_match_lit_β
n205_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
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
                        lea              rsi, [rip + g_sno_defer_cells+128]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx468_11
                        mov              rax, qword ptr [1879052320]                    # NEST
                        mov              rdx, qword ptr [1879052328]                    # NEST
                        cmp              eax, 3
                                                                                        jne   .Lx468_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx468_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx468_10
.Lx468_9:
                        xor              eax, eax
.Lx468_10:
                        lea              rsi, [rip + g_sno_defer_cells+128]
                        mov              qword ptr [rsi + 0], rax
.Lx468_11:
                        test             rax, rax
                                                                                        jz    .Lx468_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx468_4]
                        lea              rdx, [rip + .Lx468_5]
                                                                                        jmp   rax
.Lx468_4:
                                                                                        jmp   n203_match_arbno_α
.Lx468_5:
                                                                                        jmp   n208_match_lit_β
.Lx468_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx468_2:
                        test             rax, rax
                                                                                        je    .Lx468_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx468_7]
                        lea              rdx, [rip + .Lx468_8]
                                                                                        jmp   rax
.Lx468_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx468_2
.Lx468_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx468_2
.Lx468_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n208_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx468_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n203_match_arbno_α
.Lx468_6:
                        add              rsp, 16
                                                                                        jmp   n208_match_lit_β
n207_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n208_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n195_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n195_match_head_β
                        add              r14d, 1
                                                                                        jmp   n207_match_defer_α
n208_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n195_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_integer_α:
                        mov              qword ptr [rsp + 2432], 6
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rsp + 2440], rax
                                                                                        jmp   n210_match_pos_α
n209_lit_integer_β:
                                                                                        jmp   n195_match_head_β
.Lx471_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n210_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n195_match_head_β
                                                                                        jmp   n208_match_lit_α
n210_match_pos_β:
                                                                                        jmp   n195_match_head_β
#=======================================================================================================================
# B7      OUTPUT = "T7 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n212_assign_α
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "T7 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n212_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx474_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n213_var_α
.Lx474_0:
                        .quad            .Lx474_0_s
.Lx474_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N7      S8 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)  :S(A8)F(B8)
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:
                        sub              rsp, 2944
                        mov              qword ptr [rsp + 0], 0
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
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0
                        mov              qword ptr [rsp + 2416], 0
                        mov              qword ptr [rsp + 2424], 0
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0
                        mov              qword ptr [rsp + 2480], 0
                        mov              qword ptr [rsp + 2488], 0
                        mov              qword ptr [rsp + 2496], 0
                        mov              qword ptr [rsp + 2504], 0
                        mov              qword ptr [rsp + 2512], 0
                        mov              qword ptr [rsp + 2520], 0
                        mov              qword ptr [rsp + 2528], 0
                        mov              qword ptr [rsp + 2536], 0
                        mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                        mov              qword ptr [rsp + 2560], 0
                        mov              qword ptr [rsp + 2568], 0
                        mov              qword ptr [rsp + 2576], 0
                        mov              qword ptr [rsp + 2584], 0
                        mov              qword ptr [rsp + 2592], 0
                        mov              qword ptr [rsp + 2600], 0
                        mov              qword ptr [rsp + 2608], 0
                        mov              qword ptr [rsp + 2616], 0
                        mov              qword ptr [rsp + 2624], 0
                        mov              qword ptr [rsp + 2632], 0
                        mov              qword ptr [rsp + 2640], 0
                        mov              qword ptr [rsp + 2648], 0
                        mov              qword ptr [rsp + 2656], 0
                        mov              qword ptr [rsp + 2664], 0
                        mov              qword ptr [rsp + 2672], 0
                        mov              qword ptr [rsp + 2680], 0
                        mov              qword ptr [rsp + 2688], 0
                        mov              qword ptr [rsp + 2696], 0
                        mov              qword ptr [rsp + 2704], 0
                        mov              qword ptr [rsp + 2712], 0
                        mov              qword ptr [rsp + 2720], 0
                        mov              qword ptr [rsp + 2728], 0
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2744], 0
                        mov              qword ptr [rsp + 2752], 0
                        mov              qword ptr [rsp + 2760], 0
                        mov              qword ptr [rsp + 2768], 0
                        mov              qword ptr [rsp + 2776], 0
                        mov              qword ptr [rsp + 2784], 0
                        mov              qword ptr [rsp + 2792], 0
                        mov              qword ptr [rsp + 2800], 0
                        mov              qword ptr [rsp + 2808], 0
                        mov              qword ptr [rsp + 2816], 0
                        mov              qword ptr [rsp + 2824], 0
                        mov              qword ptr [rsp + 2832], 0
                        mov              qword ptr [rsp + 2840], 0
                        mov              qword ptr [rsp + 2848], 0
                        mov              qword ptr [rsp + 2856], 0
                        mov              qword ptr [rsp + 2864], 0
                        mov              qword ptr [rsp + 2872], 0
                        mov              qword ptr [rsp + 2880], 0
                        mov              qword ptr [rsp + 2888], 0
                        mov              qword ptr [rsp + 2896], 0
                        mov              qword ptr [rsp + 2904], 0
                        mov              qword ptr [rsp + 2912], 0
                        mov              qword ptr [rsp + 2920], 0
                        mov              qword ptr [rsp + 2928], 0
                        mov              qword ptr [rsp + 2936], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # S8
                        mov              rdx, qword ptr [1879052472]                    # S8
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n214_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n214_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2696], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 2704], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2712], r14                    # outer_δ
                        mov              qword ptr [rbp + 2720], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2728], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 2672], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2664], rax
                        mov              dword ptr [rbp + 2656], 0
.Lx477_0:
                        mov              r14d, dword ptr [rbp + 2656]
                                                                                        jmp   n215_match_sequence_α
n214_match_head_β:
                        add              dword ptr [rbp + 2656], 1
                        mov              eax, dword ptr [rbp + 2656]
                        cmp              eax, r15d
                                                                                        jg    .Lx477_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx477_1
                                                                                        jmp   .Lx477_0
.Lx477_1:
                        mov              rax, qword ptr [rbp + 2664]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2672]
                        mov              r10, qword ptr [1879048192]
.Lx477_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx477_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2704]
                        mov              r14, qword ptr [rbp + 2712]
                        mov              r15, qword ptr [rbp + 2720]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2728]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2696]
                        add              rsp, 2944
                                                                                        jmp   n231_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n215_match_sequence_α:
                        mov              dword ptr [rbp + 2736], r14d
                                                                                        jmp   n229_lit_integer_α
n215_match_sequence_as:
                                                                                        jmp   n216_match_release_α
n215_match_sequence_β:
                                                                                        jmp   n220_match_rpos_β
n215_match_sequence_af:
                                                                                        jmp   n214_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n216_match_release_α:
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
.Lx481_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx481_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx481_1:
                        test             rax, rax
                                                                                        je    .Lx481_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx481_3]
                        lea              rdx, [rip + .Lx481_4]
                                                                                        jmp   rax
.Lx481_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx481_1
.Lx481_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx481_1
.Lx481_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx481_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx481_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2704]
                        mov              r14, qword ptr [rbp + 2712]
                        mov              r15, qword ptr [rbp + 2720]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2728]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2696]
                        add              rsp, 2944
                                                                                        jmp   n217_lit_string_α
#=======================================================================================================================
# A8      OUTPUT = "T8 MATCH"             :(N8)
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n218_assign_α
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "T8 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n218_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx483_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx483_0:
                        .quad            .Lx483_0_s
.Lx483_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_integer_α:
                        mov              qword ptr [rsp + 2912], 6
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rsp + 2920], rax
                                                                                        jmp   n220_match_rpos_α
n219_lit_integer_β:
                                                                                        jmp   n221_match_lit_β
.Lx484_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n220_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n221_match_lit_β
                                                                                        jmp   n216_match_release_α
n220_match_rpos_β:
                                                                                        jmp   n221_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n221_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n222_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n222_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n219_lit_integer_α
n221_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n222_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n222_match_arbno_α:
                        mov              dword ptr [rbp + 2816], r14d
                        mov              dword ptr [rbp + 2820], r14d
                        mov              dword ptr [rbp + 2824], 0
                        mov              qword ptr [rbp + 2840], rsp
                        mov              qword ptr [rbp + 2832], 0
                                                                                        jmp   n221_match_lit_α
n222_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 2820]
                        mov              rax, qword ptr [rbp + 2832]
                        sub              rsp, 2944
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 2832], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n224_match_sequence_α
n222_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n224_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 2824]
                        add              eax, 1
                        mov              dword ptr [rbp + 2824], eax
                        mov              dword ptr [rbp + 2820], r14d
                                                                                        jmp   n221_match_lit_α
n222_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 2920]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 2824]
                        test             ecx, ecx
                                                                                        jz    .Lx489_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 2824], ecx
                        mov              qword ptr [rbp + 2832], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n224_match_sequence_β
.Lx489_2:
                        mov              r14d, dword ptr [rbp + 2816]
                        mov              rsp, qword ptr [rbp + 2840]
                                                                                        jmp   n227_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:
                        mov              qword ptr [rsp + 2896], 1
                        mov              dword ptr [rsp + 2900], 5
                        mov              rax, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rsp + 2904], rax
                                                                                        jmp   main_γ
n223_lit_string_β:
                                                                                        jmp   main_ω
.Lx490_0:
                        .quad            .Lx490_0_s
.Lx490_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n224_match_sequence_α:
                        mov              dword ptr [rbp + 2864], r14d
                                                                                        jmp   n226_match_lit_α
n224_match_sequence_as:
                                                                                        jmp   n222_match_arbno_as
n224_match_sequence_β:
                                                                                        jmp   n225_match_defer_β
n224_match_sequence_af:
                                                                                        jmp   n222_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n225_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+136]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx493_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]                    # ITEM
                        cmp              eax, 3
                                                                                        jne   .Lx493_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx493_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx493_10
.Lx493_9:
                        xor              eax, eax
.Lx493_10:
                        lea              rsi, [rip + g_sno_defer_cells+136]
                        mov              qword ptr [rsi + 0], rax
.Lx493_11:
                        test             rax, rax
                                                                                        jz    .Lx493_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx493_4]
                        lea              rdx, [rip + .Lx493_5]
                                                                                        jmp   rax
.Lx493_4:
                                                                                        jmp   n222_match_arbno_as
.Lx493_5:
                                                                                        jmp   n226_match_lit_β
.Lx493_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx493_2:
                        test             rax, rax
                                                                                        je    .Lx493_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx493_7]
                        lea              rdx, [rip + .Lx493_8]
                                                                                        jmp   rax
.Lx493_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx493_2
.Lx493_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx493_2
.Lx493_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n226_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx493_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n222_match_arbno_as
.Lx493_6:
                        add              rsp, 16
                                                                                        jmp   n226_match_lit_β
n225_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n226_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n222_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n222_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n225_match_defer_α
n226_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n222_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n227_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+144]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx496_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]                    # ITEM
                        cmp              eax, 3
                                                                                        jne   .Lx496_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx496_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx496_10
.Lx496_9:
                        xor              eax, eax
.Lx496_10:
                        lea              rsi, [rip + g_sno_defer_cells+144]
                        mov              qword ptr [rsi + 0], rax
.Lx496_11:
                        test             rax, rax
                                                                                        jz    .Lx496_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx496_4]
                        lea              rdx, [rip + .Lx496_5]
                                                                                        jmp   rax
.Lx496_4:
                                                                                        jmp   n222_match_arbno_α
.Lx496_5:
                                                                                        jmp   n228_match_lit_β
.Lx496_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx496_2:
                        test             rax, rax
                                                                                        je    .Lx496_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx496_7]
                        lea              rdx, [rip + .Lx496_8]
                                                                                        jmp   rax
.Lx496_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx496_2
.Lx496_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx496_2
.Lx496_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n228_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx496_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n222_match_arbno_α
.Lx496_6:
                        add              rsp, 16
                                                                                        jmp   n228_match_lit_β
n227_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n228_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n214_match_head_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n214_match_head_β
                        add              r14d, 1
                                                                                        jmp   n227_match_defer_α
n228_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n214_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_integer_α:
                        mov              qword ptr [rsp + 2752], 6
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rsp + 2760], rax
                                                                                        jmp   n230_match_pos_α
n229_lit_integer_β:
                                                                                        jmp   n214_match_head_β
.Lx499_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n230_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n214_match_head_β
                                                                                        jmp   n228_match_lit_α
n230_match_pos_β:
                                                                                        jmp   n214_match_head_β
#=======================================================================================================================
# B8      OUTPUT = "T8 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx501_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n232_assign_α
.Lx501_0:
                        .quad            .Lx501_0_s
.Lx501_0_s:
                        .string          "T8 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n232_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx502_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx502_0:
                        .quad            .Lx502_0_s
.Lx502_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n233_goto_α:
                                                                                        jmp   n83_lit_string_α
n233_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n234_goto_α:
                                                                                        jmp   n97_lit_string_α
n234_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n235_goto_α:
                                                                                        jmp   n99_var_α
n235_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n236_goto_α:
                                                                                        jmp   n103_lit_string_α
n236_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n237_goto_α:
                                                                                        jmp   n117_lit_string_α
n237_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n238_goto_α:
                                                                                        jmp   n119_var_α
n238_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n239_goto_α:
                                                                                        jmp   n123_lit_string_α
n239_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n240_goto_α:
                                                                                        jmp   n137_lit_string_α
n240_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n241_goto_α:
                                                                                        jmp   n139_var_α
n241_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n242_goto_α:
                                                                                        jmp   n143_lit_string_α
n242_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n243_goto_α:
                                                                                        jmp   n159_lit_string_α
n243_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n244_goto_α:
                                                                                        jmp   n161_var_α
n244_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n245_goto_α:
                                                                                        jmp   n165_lit_string_α
n245_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n246_goto_α:
                                                                                        jmp   n179_lit_string_α
n246_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n247_goto_α:
                                                                                        jmp   n181_var_α
n247_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n248_goto_α:
                                                                                        jmp   n185_lit_string_α
n248_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n249_goto_α:
                                                                                        jmp   n192_lit_string_α
n249_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n250_goto_α:
                                                                                        jmp   n194_var_α
n250_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n251_goto_α:
                                                                                        jmp   n198_lit_string_α
n251_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n252_goto_α:
                                                                                        jmp   n211_lit_string_α
n252_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n253_goto_α:
                                                                                        jmp   n213_var_α
n253_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n254_goto_α:
                                                                                        jmp   n217_lit_string_α
n254_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n255_goto_α:
                                                                                        jmp   n231_lit_string_α
n255_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n256_goto_α:
                                                                                        jmp   main_γ
n256_goto_β:
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
