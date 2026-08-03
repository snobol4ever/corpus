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
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanhit
n0_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   .Lx3_0
                        mov              ecx, dword ptr [rbp + 40]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx3_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   .Lx4_0
                        mov              eax, dword ptr [rbp + 40]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx4_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx4_0
                        mov              dword ptr [rbp + 40], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx4_0:
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
                        lea              rax, [rip + n5_match_alternate_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n5_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx9_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n7_match_span_α
.Lx9_21:
                        lea              rax, [rip + .Lx9_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n6_match_lit_α
n5_match_alternate_s0:
                        lea              rax, [rip + .Lx9_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n5_match_alternate_as
n5_match_alternate_s1:
                        lea              rax, [rip + .Lx9_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n5_match_alternate_as
.Lx9_40:
                                                                                        jmp   n7_match_span_β
.Lx9_41:
                                                                                        jmp   n6_match_lit_β
n5_match_alternate_as:
                                                                                        jmp   proc_PAT$1_γ
n5_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n5_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx9_19:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n5_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 120
                                                                                        jne   n5_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n5_match_alternate_s1
n6_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n5_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n7_match_span_α:
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx13_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx13_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx13_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx13_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx13_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx13_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx13_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx13_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx13_1
                        add              ecx, 1
                                                                                        jmp   .Lx13_0
.Lx13_1:
                        cmp              ecx, r14d
                                                                                        jle   n5_match_alternate_af
                        mov              dword ptr [rbp + 52], r14d
                        mov              r14d, ecx
                                                                                        jmp   n5_match_alternate_s0
n7_match_span_β:
                        mov              r14d, dword ptr [rbp + 52]
                                                                                        jmp   n5_match_alternate_af
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx14_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx14_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx15_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx15_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx15_0
                        mov              dword ptr [rbp + 104], eax
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
                        lea              rax, [rip + n16_match_alternate_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n16_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx23_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n21_match_span_α
.Lx23_21:
                        lea              rax, [rip + .Lx23_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n17_match_sequence_α
n16_match_alternate_s0:
                        lea              rax, [rip + .Lx23_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n16_match_alternate_as
n16_match_alternate_s1:
                        lea              rax, [rip + .Lx23_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n16_match_alternate_as
.Lx23_40:
                                                                                        jmp   n21_match_span_β
.Lx23_41:
                                                                                        jmp   n17_match_sequence_β
n16_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n16_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n16_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx23_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_match_sequence_α:
                        mov              dword ptr [rbp + 48], r14d
                                                                                        jmp   n20_match_lit_α
n17_match_sequence_as:
                                                                                        jmp   n16_match_alternate_s1
n17_match_sequence_β:
                                                                                        jmp   n18_match_lit_β
n17_match_sequence_af:
                                                                                        jmp   n16_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n18_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n19_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n19_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n16_match_alternate_s1
n18_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n19_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx28_11
                        mov              rax, qword ptr [1879052320]                    # NEST
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx28_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx28_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx28_10
.Lx28_9:
                        xor              eax, eax
.Lx28_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx28_11:
                        test             rax, rax
                                                                                        jz    .Lx28_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx28_4]
                        lea              rdx, [rip + .Lx28_5]
                                                                                        jmp   rax
.Lx28_4:
                                                                                        jmp   n18_match_lit_α
.Lx28_5:
                                                                                        jmp   n20_match_lit_β
.Lx28_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx28_2:
                        test             rax, rax
                                                                                        je    .Lx28_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx28_7]
                        lea              rdx, [rip + .Lx28_8]
                                                                                        jmp   rax
.Lx28_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx28_2
.Lx28_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx28_2
.Lx28_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n20_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx28_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n18_match_lit_α
.Lx28_6:
                        add              rsp, 16
                                                                                        jmp   n20_match_lit_β
n19_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n20_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n16_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n16_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n19_match_defer_α
n20_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n16_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n21_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx32_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx32_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx32_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx32_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx32_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx32_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx32_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx32_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx32_1
                        add              ecx, 1
                                                                                        jmp   .Lx32_0
.Lx32_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx32_240
                        add              rsp, 16
                                                                                        jmp   n16_match_alternate_af
.Lx32_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n16_match_alternate_s0
n21_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n16_match_alternate_af
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx33_0
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx33_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx34_0
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx34_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx34_0
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx34_0:
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
                        lea              rax, [rip + n35_match_sequence_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n35_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n42_match_lit_α
n35_match_sequence_as:
                                                                                        jmp   proc_PAT$3_γ
n35_match_sequence_β:
                                                                                        jmp   n36_match_lit_β
n35_match_sequence_af:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n37_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n37_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$3_γ
n36_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n37_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n37_match_arbno_α:
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                                                                                        jmp   n36_match_lit_α
n37_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 84]
                        mov              rax, qword ptr [rbp + 96]
                        sub              rsp, 176
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 96], rsp
                        mov              rbp, rsp
                        add              rbp, -8
                                                                                        jmp   n38_match_sequence_α
n37_match_arbno_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              r14d, eax
                                                                                        je    n38_match_sequence_β
                        mov              rbp, qword ptr [rbp + 8]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                                                                                        jmp   n36_match_lit_α
n37_match_arbno_af:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 8]
                        lea              rsp, [rbp + 184]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 88]
                        test             ecx, ecx
                                                                                        jz    .Lx48_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 88], ecx
                        mov              qword ptr [rbp + 96], rax
                        lea              rbp, [rax + -8]
                                                                                        jmp   n38_match_sequence_β
.Lx48_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   n41_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n38_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n40_match_lit_α
n38_match_sequence_as:
                                                                                        jmp   n37_match_arbno_as
n38_match_sequence_β:
                                                                                        jmp   n39_match_defer_β
n38_match_sequence_af:
                                                                                        jmp   n37_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n39_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx51_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx51_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx51_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx51_10
.Lx51_9:
                        xor              eax, eax
.Lx51_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx51_11:
                        test             rax, rax
                                                                                        jz    .Lx51_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx51_4]
                        lea              rdx, [rip + .Lx51_5]
                                                                                        jmp   rax
.Lx51_4:
                                                                                        jmp   n37_match_arbno_as
.Lx51_5:
                                                                                        jmp   n40_match_lit_β
.Lx51_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx51_2:
                        test             rax, rax
                                                                                        je    .Lx51_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx51_7]
                        lea              rdx, [rip + .Lx51_8]
                                                                                        jmp   rax
.Lx51_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx51_2
.Lx51_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx51_2
.Lx51_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n40_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx51_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n37_match_arbno_as
.Lx51_6:
                        add              rsp, 16
                                                                                        jmp   n40_match_lit_β
n39_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n40_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n37_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n37_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n39_match_defer_α
n40_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n37_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n41_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx54_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx54_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx54_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx54_10
.Lx54_9:
                        xor              eax, eax
.Lx54_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx54_11:
                        test             rax, rax
                                                                                        jz    .Lx54_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx54_4]
                        lea              rdx, [rip + .Lx54_5]
                                                                                        jmp   rax
.Lx54_4:
                                                                                        jmp   n37_match_arbno_α
.Lx54_5:
                                                                                        jmp   n42_match_lit_β
.Lx54_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx54_2:
                        test             rax, rax
                                                                                        je    .Lx54_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx54_7]
                        lea              rdx, [rip + .Lx54_8]
                                                                                        jmp   rax
.Lx54_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx54_2
.Lx54_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx54_2
.Lx54_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n42_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx54_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n37_match_arbno_α
.Lx54_6:
                        add              rsp, 16
                                                                                        jmp   n42_match_lit_β
n41_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n42_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$3_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   proc_PAT$3_ω
                        add              r14d, 1
                                                                                        jmp   n41_match_defer_α
n42_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$3_ω
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 208], 1
                                                                                        jne   .Lx57_0
                        mov              ecx, dword ptr [rbp + 200]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx57_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 208], 1
                                                                                        jne   .Lx58_0
                        mov              eax, dword ptr [rbp + 200]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx58_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx58_0
                        mov              dword ptr [rbp + 200], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx58_0:
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
#         ITEM  = SPAN("0123456789")
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:
                                                                                        jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n61_call_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:
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
                        lea              rdi, [rip + .Lrkfnzd343]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx342_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n64_statement_begin_α
.Lx342_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n62_assign_α
n61_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n64_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # ITEM
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n63_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n64_statement_begin_α
#=======================================================================================================================
#         ITEM2 = SPAN("0123456789") | "x"
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:
                                                                                        jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n66_call_α
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:
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
                        lea              rdi, [rip + .Lrkfnzd351]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx350_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n69_statement_begin_α
.Lx350_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n67_assign_α
n66_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # ITEM2
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n68_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n69_statement_begin_α
#=======================================================================================================================
#         NEST  = SPAN("0123456789") | "(" *NEST ")"
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:
                                                                                        jmp   n70_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n71_call_α
.Lx357_0:
                        .quad            .Lx357_0_s
.Lx357_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:
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
                        lea              rdi, [rip + .Lrkfnzd359]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx358_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n74_statement_begin_α
.Lx358_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n72_assign_α
n71_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n74_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # NEST
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n73_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n74_statement_begin_α
#=======================================================================================================================
#         LISTP = "(" *ITEM ARBNO("," *ITEM) ")"
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_begin_α:
                                                                                        jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n76_call_α
.Lx365_0:
                        .quad            .Lx365_0_s
.Lx365_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:
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
                                                                                        jmp   n79_statement_begin_α
.Lx366_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n77_assign_α
n76_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n79_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # LISTP
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n78_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n79_statement_begin_α
#=======================================================================================================================
#         S1 = "(1,22,333)"
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_begin_α:
                                                                                        jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n81_assign_α
.Lx373_0:
                        .quad            .Lx373_0_s
.Lx373_0_s:
                        .string          "(1,22,333)"
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # S1
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n82_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n83_statement_begin_α
#=======================================================================================================================
#         S2 = "(7)"
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_begin_α:
                                                                                        jmp   n84_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n85_assign_α
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "(7)"
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # S2
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n86_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n87_statement_begin_α
#=======================================================================================================================
#         S3 = "(1,,2)"
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:
                                                                                        jmp   n88_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n89_assign_α
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          "(1,,2)"
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # S3
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n90_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n91_statement_begin_α
#=======================================================================================================================
#         S4 = "(11,22)"
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_begin_α:
                                                                                        jmp   n92_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n93_assign_α
.Lx391_0:
                        .quad            .Lx391_0_s
.Lx391_0_s:
                        .string          "(11,22)"
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # S4
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n94_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n95_statement_begin_α
#=======================================================================================================================
#         S5 = "a1,2,3z"
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_begin_α:
                                                                                        jmp   n96_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n97_assign_α
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          "a1,2,3z"
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # S5
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n98_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n99_statement_begin_α
#=======================================================================================================================
#         S6 = "(4,5)"
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_begin_α:
                                                                                        jmp   n100_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n101_assign_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "(4,5)"
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # S6
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n102_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n103_statement_begin_α
#=======================================================================================================================
#         S7 = "(1,(2),3)"
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_begin_α:
                                                                                        jmp   n104_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n105_assign_α
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "(1,(2),3)"
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # S7
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n106_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n107_statement_begin_α
#=======================================================================================================================
#         S8 = "(1,2,3,4,5,6,7,8,9,10,11,12)"
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_begin_α:
                                                                                        jmp   n108_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 28
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n109_assign_α
.Lx415_0:
                        .quad            .Lx415_0_s
.Lx415_0_s:
                        .string          "(1,2,3,4,5,6,7,8,9,10,11,12)"
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # S8
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n110_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n111_statement_begin_α
#=======================================================================================================================
#         S1 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)   :S(A1)F(B1)
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α:
                                                                                        jmp   n112_var_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # S1
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n113_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n113_match_begin_α:
                        sub              rsp, 688
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
                        mov              rdi, qword ptr [rsp + 688]                     # var
                        mov              rsi, qword ptr [rsp + 696]
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
                        mov              qword ptr [rbp + 432], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 424], rax                     # patstk_mark
                        mov              dword ptr [rbp + 416], 0                       # start_δ
.Lx423_0:
                        mov              r14d, dword ptr [rbp + 416]
                                                                                        jmp   n114_match_sequence_α
n113_match_begin_β:
                        add              dword ptr [rbp + 416], 1
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, r15d
                                                                                        jg    .Lx423_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx423_1
                                                                                        jmp   .Lx423_0
.Lx423_1:
                        mov              rax, qword ptr [rbp + 424]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 432]
                        mov              r10, qword ptr [1879048192]
.Lx423_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx423_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 464]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 472]                     # outer_δ
                        mov              r15, qword ptr [rbp + 480]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 488]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 456]                     # old_rbp
                        add              rsp, 704
                                                                                        jmp   n133_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n114_match_sequence_α:
                        mov              dword ptr [rbp + 496], r14d
                                                                                        jmp   n131_lit_integer_α
n114_match_sequence_as:
                                                                                        jmp   n115_match_end_α
n114_match_sequence_β:
                                                                                        jmp   n122_match_rpos_β
n114_match_sequence_af:
                                                                                        jmp   n113_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n115_match_end_α:
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
.Lx427_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx427_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx427_1:
                        test             rax, rax
                                                                                        je    .Lx427_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx427_3]
                        lea              rdx, [rip + .Lx427_4]
                                                                                        jmp   rax
.Lx427_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx427_1
.Lx427_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx427_1
.Lx427_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx427_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx427_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 464]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 472]                     # outer_δ
                        mov              r15, qword ptr [rbp + 480]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 488]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n116_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:
                        mov              rbp, qword ptr [rbp + 456]                     # old_rbp
                        add              rsp, 704
                                                                                        jmp   n117_statement_begin_α
#=======================================================================================================================
# A1      OUTPUT = "T1 MATCH"             :(N1)
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α:
                                                                                        jmp   n118_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n119_assign_α
.Lx432_0:
                        .quad            .Lx432_0_s
.Lx432_0_s:
                        .string          "T1 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx433_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n120_statement_end_α
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n137_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:
                        mov              qword ptr [rsp + 672], 3                       # result
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rsp + 680], rax
                                                                                        jmp   n122_match_rpos_α
n121_lit_integer_β:
                                                                                        jmp   n123_match_lit_β
.Lx436_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n122_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n123_match_lit_β
                                                                                        jmp   n115_match_end_α
n122_match_rpos_β:
                                                                                        jmp   n123_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n123_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n124_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n124_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n121_lit_integer_α
n123_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n124_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n124_match_arbno_α:
                        mov              dword ptr [rbp + 576], r14d
                        mov              dword ptr [rbp + 580], r14d
                        mov              dword ptr [rbp + 584], 0
                        mov              qword ptr [rbp + 600], rsp
                        mov              qword ptr [rbp + 592], 0
                                                                                        jmp   n123_match_lit_α
n124_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 580]
                        mov              rax, qword ptr [rbp + 592]
                        sub              rsp, 704
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 592], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n126_match_sequence_α
n124_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n126_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 584]
                        add              eax, 1
                        mov              dword ptr [rbp + 584], eax
                        mov              dword ptr [rbp + 580], r14d
                                                                                        jmp   n123_match_lit_α
n124_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 680]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 584]
                        test             ecx, ecx
                                                                                        jz    .Lx441_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 584], ecx
                        mov              qword ptr [rbp + 592], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n126_match_sequence_β
.Lx441_2:
                        mov              r14d, dword ptr [rbp + 576]
                        mov              rsp, qword ptr [rbp + 600]
                                                                                        jmp   n129_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rsp + 656], 2                       # result
                        mov              dword ptr [rsp + 660], 5
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rsp + 664], rax
                                                                                        jmp   main_γ
n125_lit_string_β:
                                                                                        jmp   main_ω
.Lx442_0:
                        .quad            .Lx442_0_s
.Lx442_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n126_match_sequence_α:
                        mov              dword ptr [rbp + 624], r14d
                                                                                        jmp   n128_match_lit_α
n126_match_sequence_as:
                                                                                        jmp   n124_match_arbno_as
n126_match_sequence_β:
                                                                                        jmp   n127_match_defer_β
n126_match_sequence_af:
                                                                                        jmp   n124_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n127_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx445_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx445_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx445_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx445_10
.Lx445_9:
                        xor              eax, eax
.Lx445_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx445_11:
                        test             rax, rax
                                                                                        jz    .Lx445_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx445_4]
                        lea              rdx, [rip + .Lx445_5]
                                                                                        jmp   rax
.Lx445_4:
                                                                                        jmp   n124_match_arbno_as
.Lx445_5:
                                                                                        jmp   n128_match_lit_β
.Lx445_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx445_2:
                        test             rax, rax
                                                                                        je    .Lx445_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx445_7]
                        lea              rdx, [rip + .Lx445_8]
                                                                                        jmp   rax
.Lx445_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx445_2
.Lx445_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx445_2
.Lx445_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n128_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx445_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n124_match_arbno_as
.Lx445_6:
                        add              rsp, 16
                                                                                        jmp   n128_match_lit_β
n127_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n128_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n124_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n124_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n127_match_defer_α
n128_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n124_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n129_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx448_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx448_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx448_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx448_10
.Lx448_9:
                        xor              eax, eax
.Lx448_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx448_11:
                        test             rax, rax
                                                                                        jz    .Lx448_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx448_4]
                        lea              rdx, [rip + .Lx448_5]
                                                                                        jmp   rax
.Lx448_4:
                                                                                        jmp   n124_match_arbno_α
.Lx448_5:
                                                                                        jmp   n130_match_lit_β
.Lx448_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx448_2:
                        test             rax, rax
                                                                                        je    .Lx448_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx448_7]
                        lea              rdx, [rip + .Lx448_8]
                                                                                        jmp   rax
.Lx448_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx448_2
.Lx448_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx448_2
.Lx448_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n130_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx448_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n124_match_arbno_α
.Lx448_6:
                        add              rsp, 16
                                                                                        jmp   n130_match_lit_β
n129_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n130_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n113_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n113_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n129_match_defer_α
n130_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n113_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:
                        mov              qword ptr [rsp + 512], 3                       # result
                        mov              rax, qword ptr [rip + .Lx451_0]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n132_match_pos_α
n131_lit_integer_β:
                                                                                        jmp   n113_match_begin_β
.Lx451_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n132_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n113_match_begin_β
                                                                                        jmp   n130_match_lit_α
n132_match_pos_β:
                                                                                        jmp   n113_match_begin_β
#=======================================================================================================================
# B1      OUTPUT = "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_begin_α:
                                                                                        jmp   n134_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n135_assign_α
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx456_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n136_statement_end_α
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n137_statement_begin_α
#=======================================================================================================================
# N1      S2 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)  :S(A2)F(B2)
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_begin_α:
                                                                                        jmp   n138_var_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # S2
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n139_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n139_match_begin_α:
                        sub              rsp, 1024
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
                        mov              rdi, qword ptr [rsp + 1024]                    # var
                        mov              rsi, qword ptr [rsp + 1032]
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
                        mov              qword ptr [rbp + 768], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 760], rax                     # patstk_mark
                        mov              dword ptr [rbp + 752], 0                       # start_δ
.Lx463_0:
                        mov              r14d, dword ptr [rbp + 752]
                                                                                        jmp   n140_match_sequence_α
n139_match_begin_β:
                        add              dword ptr [rbp + 752], 1
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, r15d
                                                                                        jg    .Lx463_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx463_1
                                                                                        jmp   .Lx463_0
.Lx463_1:
                        mov              rax, qword ptr [rbp + 760]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 768]
                        mov              r10, qword ptr [1879048192]
.Lx463_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx463_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 800]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 808]                     # outer_δ
                        mov              r15, qword ptr [rbp + 816]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 824]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 792]                     # old_rbp
                        add              rsp, 1040
                                                                                        jmp   n159_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n140_match_sequence_α:
                        mov              dword ptr [rbp + 832], r14d
                                                                                        jmp   n157_lit_integer_α
n140_match_sequence_as:
                                                                                        jmp   n141_match_end_α
n140_match_sequence_β:
                                                                                        jmp   n148_match_rpos_β
n140_match_sequence_af:
                                                                                        jmp   n139_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n141_match_end_α:
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
.Lx467_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx467_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx467_1:
                        test             rax, rax
                                                                                        je    .Lx467_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx467_3]
                        lea              rdx, [rip + .Lx467_4]
                                                                                        jmp   rax
.Lx467_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx467_1
.Lx467_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx467_1
.Lx467_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx467_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx467_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 800]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 808]                     # outer_δ
                        mov              r15, qword ptr [rbp + 816]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 824]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n142_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_end_α:
                        mov              rbp, qword ptr [rbp + 792]                     # old_rbp
                        add              rsp, 1040
                                                                                        jmp   n143_statement_begin_α
#=======================================================================================================================
# A2      OUTPUT = "T2 MATCH"             :(N2)
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_begin_α:
                                                                                        jmp   n144_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n145_assign_α
.Lx472_0:
                        .quad            .Lx472_0_s
.Lx472_0_s:
                        .string          "T2 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n145_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx473_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n146_statement_end_α
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n163_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:
                        mov              qword ptr [rsp + 1008], 3                      # result
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rsp + 1016], rax
                                                                                        jmp   n148_match_rpos_α
n147_lit_integer_β:
                                                                                        jmp   n149_match_lit_β
.Lx476_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n148_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n149_match_lit_β
                                                                                        jmp   n141_match_end_α
n148_match_rpos_β:
                                                                                        jmp   n149_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n149_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n150_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n150_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n147_lit_integer_α
n149_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n150_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n150_match_arbno_α:
                        mov              dword ptr [rbp + 912], r14d
                        mov              dword ptr [rbp + 916], r14d
                        mov              dword ptr [rbp + 920], 0
                        mov              qword ptr [rbp + 936], rsp
                        mov              qword ptr [rbp + 928], 0
                                                                                        jmp   n149_match_lit_α
n150_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 916]
                        mov              rax, qword ptr [rbp + 928]
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 928], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n152_match_sequence_α
n150_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n152_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 920]
                        add              eax, 1
                        mov              dword ptr [rbp + 920], eax
                        mov              dword ptr [rbp + 916], r14d
                                                                                        jmp   n149_match_lit_α
n150_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 1016]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 920]
                        test             ecx, ecx
                                                                                        jz    .Lx481_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 920], ecx
                        mov              qword ptr [rbp + 928], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n152_match_sequence_β
.Lx481_2:
                        mov              r14d, dword ptr [rbp + 912]
                        mov              rsp, qword ptr [rbp + 936]
                                                                                        jmp   n155_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rsp + 992], 2                       # result
                        mov              dword ptr [rsp + 996], 5
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rsp + 1000], rax
                                                                                        jmp   main_γ
n151_lit_string_β:
                                                                                        jmp   main_ω
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n152_match_sequence_α:
                        mov              dword ptr [rbp + 960], r14d
                                                                                        jmp   n154_match_lit_α
n152_match_sequence_as:
                                                                                        jmp   n150_match_arbno_as
n152_match_sequence_β:
                                                                                        jmp   n153_match_defer_β
n152_match_sequence_af:
                                                                                        jmp   n150_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n153_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx485_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx485_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx485_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx485_10
.Lx485_9:
                        xor              eax, eax
.Lx485_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx485_11:
                        test             rax, rax
                                                                                        jz    .Lx485_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx485_4]
                        lea              rdx, [rip + .Lx485_5]
                                                                                        jmp   rax
.Lx485_4:
                                                                                        jmp   n150_match_arbno_as
.Lx485_5:
                                                                                        jmp   n154_match_lit_β
.Lx485_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx485_2:
                        test             rax, rax
                                                                                        je    .Lx485_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx485_7]
                        lea              rdx, [rip + .Lx485_8]
                                                                                        jmp   rax
.Lx485_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx485_2
.Lx485_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx485_2
.Lx485_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n154_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx485_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n150_match_arbno_as
.Lx485_6:
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
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx488_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx488_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx488_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx488_10
.Lx488_9:
                        xor              eax, eax
.Lx488_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx488_11:
                        test             rax, rax
                                                                                        jz    .Lx488_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx488_4]
                        lea              rdx, [rip + .Lx488_5]
                                                                                        jmp   rax
.Lx488_4:
                                                                                        jmp   n150_match_arbno_α
.Lx488_5:
                                                                                        jmp   n156_match_lit_β
.Lx488_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx488_2:
                        test             rax, rax
                                                                                        je    .Lx488_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx488_7]
                        lea              rdx, [rip + .Lx488_8]
                                                                                        jmp   rax
.Lx488_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx488_2
.Lx488_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx488_2
.Lx488_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n156_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx488_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n150_match_arbno_α
.Lx488_6:
                        add              rsp, 16
                                                                                        jmp   n156_match_lit_β
n155_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n156_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n139_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n139_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n155_match_defer_α
n156_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n139_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:
                        mov              qword ptr [rsp + 848], 3                       # result
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rsp + 856], rax
                                                                                        jmp   n158_match_pos_α
n157_lit_integer_β:
                                                                                        jmp   n139_match_begin_β
.Lx491_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n158_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n139_match_begin_β
                                                                                        jmp   n156_match_lit_α
n158_match_pos_β:
                                                                                        jmp   n139_match_begin_β
#=======================================================================================================================
# B2      OUTPUT = "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_begin_α:
                                                                                        jmp   n160_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n161_assign_α
.Lx495_0:
                        .quad            .Lx495_0_s
.Lx495_0_s:
                        .string          "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx496_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n162_statement_end_α
.Lx496_0:
                        .quad            .Lx496_0_s
.Lx496_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n163_statement_begin_α
#=======================================================================================================================
# N2      S3 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)  :S(A3)F(B3)
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_begin_α:
                                                                                        jmp   n164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # S3
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n165_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n165_match_begin_α:
                        sub              rsp, 1360
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
                        mov              rdi, qword ptr [rsp + 1360]                    # var
                        mov              rsi, qword ptr [rsp + 1368]
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
                        mov              qword ptr [rbp + 1104], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1096], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1088], 0                      # start_δ
.Lx503_0:
                        mov              r14d, dword ptr [rbp + 1088]
                                                                                        jmp   n166_match_sequence_α
n165_match_begin_β:
                        add              dword ptr [rbp + 1088], 1
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, r15d
                                                                                        jg    .Lx503_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx503_1
                                                                                        jmp   .Lx503_0
.Lx503_1:
                        mov              rax, qword ptr [rbp + 1096]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1104]
                        mov              r10, qword ptr [1879048192]
.Lx503_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx503_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1136]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1144]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1152]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1160]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1128]                    # old_rbp
                        add              rsp, 1376
                                                                                        jmp   n185_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n166_match_sequence_α:
                        mov              dword ptr [rbp + 1168], r14d
                                                                                        jmp   n183_lit_integer_α
n166_match_sequence_as:
                                                                                        jmp   n167_match_end_α
n166_match_sequence_β:
                                                                                        jmp   n174_match_rpos_β
n166_match_sequence_af:
                                                                                        jmp   n165_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n167_match_end_α:
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
.Lx507_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx507_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx507_1:
                        test             rax, rax
                                                                                        je    .Lx507_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx507_3]
                        lea              rdx, [rip + .Lx507_4]
                                                                                        jmp   rax
.Lx507_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx507_1
.Lx507_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx507_1
.Lx507_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx507_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx507_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1136]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1144]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1152]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1160]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n168_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_end_α:
                        mov              rbp, qword ptr [rbp + 1128]                    # old_rbp
                        add              rsp, 1376
                                                                                        jmp   n169_statement_begin_α
#=======================================================================================================================
# A3      OUTPUT = "T3 MATCH"             :(N3)
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_begin_α:
                                                                                        jmp   n170_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx512_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n171_assign_α
.Lx512_0:
                        .quad            .Lx512_0_s
.Lx512_0_s:
                        .string          "T3 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n171_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx513_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n172_statement_end_α
.Lx513_0:
                        .quad            .Lx513_0_s
.Lx513_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n189_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:
                        mov              qword ptr [rsp + 1344], 3                      # result
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rsp + 1352], rax
                                                                                        jmp   n174_match_rpos_α
n173_lit_integer_β:
                                                                                        jmp   n175_match_lit_β
.Lx516_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n174_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n175_match_lit_β
                                                                                        jmp   n167_match_end_α
n174_match_rpos_β:
                                                                                        jmp   n175_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n175_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n176_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n176_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n173_lit_integer_α
n175_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n176_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n176_match_arbno_α:
                        mov              dword ptr [rbp + 1248], r14d
                        mov              dword ptr [rbp + 1252], r14d
                        mov              dword ptr [rbp + 1256], 0
                        mov              qword ptr [rbp + 1272], rsp
                        mov              qword ptr [rbp + 1264], 0
                                                                                        jmp   n175_match_lit_α
n176_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1252]
                        mov              rax, qword ptr [rbp + 1264]
                        sub              rsp, 1376
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1264], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n178_match_sequence_α
n176_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n178_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 1256]
                        add              eax, 1
                        mov              dword ptr [rbp + 1256], eax
                        mov              dword ptr [rbp + 1252], r14d
                                                                                        jmp   n175_match_lit_α
n176_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 1352]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1256]
                        test             ecx, ecx
                                                                                        jz    .Lx521_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1256], ecx
                        mov              qword ptr [rbp + 1264], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n178_match_sequence_β
.Lx521_2:
                        mov              r14d, dword ptr [rbp + 1248]
                        mov              rsp, qword ptr [rbp + 1272]
                                                                                        jmp   n181_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:
                        mov              qword ptr [rsp + 1328], 2                      # result
                        mov              dword ptr [rsp + 1332], 5
                        mov              rax, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rsp + 1336], rax
                                                                                        jmp   main_γ
n177_lit_string_β:
                                                                                        jmp   main_ω
.Lx522_0:
                        .quad            .Lx522_0_s
.Lx522_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n178_match_sequence_α:
                        mov              dword ptr [rbp + 1296], r14d
                                                                                        jmp   n180_match_lit_α
n178_match_sequence_as:
                                                                                        jmp   n176_match_arbno_as
n178_match_sequence_β:
                                                                                        jmp   n179_match_defer_β
n178_match_sequence_af:
                                                                                        jmp   n176_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n179_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx525_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx525_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx525_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx525_10
.Lx525_9:
                        xor              eax, eax
.Lx525_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx525_11:
                        test             rax, rax
                                                                                        jz    .Lx525_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx525_4]
                        lea              rdx, [rip + .Lx525_5]
                                                                                        jmp   rax
.Lx525_4:
                                                                                        jmp   n176_match_arbno_as
.Lx525_5:
                                                                                        jmp   n180_match_lit_β
.Lx525_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx525_2:
                        test             rax, rax
                                                                                        je    .Lx525_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx525_7]
                        lea              rdx, [rip + .Lx525_8]
                                                                                        jmp   rax
.Lx525_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx525_2
.Lx525_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx525_2
.Lx525_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n180_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx525_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n176_match_arbno_as
.Lx525_6:
                        add              rsp, 16
                                                                                        jmp   n180_match_lit_β
n179_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n180_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n176_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n176_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n179_match_defer_α
n180_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n176_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n181_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx528_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx528_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx528_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx528_10
.Lx528_9:
                        xor              eax, eax
.Lx528_10:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rax
.Lx528_11:
                        test             rax, rax
                                                                                        jz    .Lx528_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx528_4]
                        lea              rdx, [rip + .Lx528_5]
                                                                                        jmp   rax
.Lx528_4:
                                                                                        jmp   n176_match_arbno_α
.Lx528_5:
                                                                                        jmp   n182_match_lit_β
.Lx528_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx528_2:
                        test             rax, rax
                                                                                        je    .Lx528_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx528_7]
                        lea              rdx, [rip + .Lx528_8]
                                                                                        jmp   rax
.Lx528_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx528_2
.Lx528_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx528_2
.Lx528_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n182_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx528_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n176_match_arbno_α
.Lx528_6:
                        add              rsp, 16
                                                                                        jmp   n182_match_lit_β
n181_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n182_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n165_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n165_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n181_match_defer_α
n182_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n165_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_integer_α:
                        mov              qword ptr [rsp + 1184], 3                      # result
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rsp + 1192], rax
                                                                                        jmp   n184_match_pos_α
n183_lit_integer_β:
                                                                                        jmp   n165_match_begin_β
.Lx531_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n184_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n165_match_begin_β
                                                                                        jmp   n182_match_lit_α
n184_match_pos_β:
                                                                                        jmp   n165_match_begin_β
#=======================================================================================================================
# B3      OUTPUT = "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_begin_α:
                                                                                        jmp   n186_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n187_assign_α
.Lx535_0:
                        .quad            .Lx535_0_s
.Lx535_0_s:
                        .string          "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n187_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx536_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n188_statement_end_α
.Lx536_0:
                        .quad            .Lx536_0_s
.Lx536_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n189_statement_begin_α
#=======================================================================================================================
# N3      S4 POS(0) "(" *ITEM ARBNO("," *ITEM) "," *ITEM ")" RPOS(0)  :S(A4)F(B4)
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_begin_α:
                                                                                        jmp   n190_var_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # S4
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n191_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n191_match_begin_α:
                        sub              rsp, 1728
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
                        mov              rdi, qword ptr [rsp + 1728]                    # var
                        mov              rsi, qword ptr [rsp + 1736]
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
                        mov              qword ptr [rbp + 1440], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1432], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1424], 0                      # start_δ
.Lx543_0:
                        mov              r14d, dword ptr [rbp + 1424]
                                                                                        jmp   n192_match_sequence_α
n191_match_begin_β:
                        add              dword ptr [rbp + 1424], 1
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, r15d
                                                                                        jg    .Lx543_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx543_1
                                                                                        jmp   .Lx543_0
.Lx543_1:
                        mov              rax, qword ptr [rbp + 1432]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1440]
                        mov              r10, qword ptr [1879048192]
.Lx543_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx543_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1472]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1480]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1488]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1496]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1464]                    # old_rbp
                        add              rsp, 1744
                                                                                        jmp   n213_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n192_match_sequence_α:
                        mov              dword ptr [rbp + 1504], r14d
                                                                                        jmp   n211_lit_integer_α
n192_match_sequence_as:
                                                                                        jmp   n193_match_end_α
n192_match_sequence_β:
                                                                                        jmp   n200_match_rpos_β
n192_match_sequence_af:
                                                                                        jmp   n191_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n193_match_end_α:
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
.Lx547_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx547_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx547_1:
                        test             rax, rax
                                                                                        je    .Lx547_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx547_3]
                        lea              rdx, [rip + .Lx547_4]
                                                                                        jmp   rax
.Lx547_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx547_1
.Lx547_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx547_1
.Lx547_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx547_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx547_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1472]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1480]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1488]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1496]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n194_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_end_α:
                        mov              rbp, qword ptr [rbp + 1464]                    # old_rbp
                        add              rsp, 1744
                                                                                        jmp   n195_statement_begin_α
#=======================================================================================================================
# A4      OUTPUT = "T4 MATCH"             :(N4)
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_begin_α:
                                                                                        jmp   n196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx552_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n197_assign_α
.Lx552_0:
                        .quad            .Lx552_0_s
.Lx552_0_s:
                        .string          "T4 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n197_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx553_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n198_statement_end_α
.Lx553_0:
                        .quad            .Lx553_0_s
.Lx553_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n217_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:
                        mov              qword ptr [rsp + 1712], 3                      # result
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rsp + 1720], rax
                                                                                        jmp   n200_match_rpos_α
n199_lit_integer_β:
                                                                                        jmp   n201_match_lit_β
.Lx556_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n200_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n201_match_lit_β
                                                                                        jmp   n193_match_end_α
n200_match_rpos_β:
                                                                                        jmp   n201_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n201_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n202_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n202_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n199_lit_integer_α
n201_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n202_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n202_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx560_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx560_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx560_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx560_10
.Lx560_9:
                        xor              eax, eax
.Lx560_10:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              qword ptr [rsi + 0], rax
.Lx560_11:
                        test             rax, rax
                                                                                        jz    .Lx560_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx560_4]
                        lea              rdx, [rip + .Lx560_5]
                                                                                        jmp   rax
.Lx560_4:
                                                                                        jmp   n201_match_lit_α
.Lx560_5:
                                                                                        jmp   n203_match_lit_β
.Lx560_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx560_2:
                        test             rax, rax
                                                                                        je    .Lx560_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx560_7]
                        lea              rdx, [rip + .Lx560_8]
                                                                                        jmp   rax
.Lx560_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx560_2
.Lx560_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx560_2
.Lx560_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n203_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx560_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n201_match_lit_α
.Lx560_6:
                        add              rsp, 16
                                                                                        jmp   n203_match_lit_β
n202_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n203_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n204_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n204_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n202_match_defer_α
n203_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n204_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n204_match_arbno_α:
                        mov              dword ptr [rbp + 1584], r14d
                        mov              dword ptr [rbp + 1588], r14d
                        mov              dword ptr [rbp + 1592], 0
                        mov              qword ptr [rbp + 1608], rsp
                        mov              qword ptr [rbp + 1600], 0
                                                                                        jmp   n203_match_lit_α
n204_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1588]
                        mov              rax, qword ptr [rbp + 1600]
                        sub              rsp, 1712
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1600], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n206_match_sequence_α
n204_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n206_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 1592]
                        add              eax, 1
                        mov              dword ptr [rbp + 1592], eax
                        mov              dword ptr [rbp + 1588], r14d
                                                                                        jmp   n203_match_lit_α
n204_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 1688]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1592]
                        test             ecx, ecx
                                                                                        jz    .Lx564_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1592], ecx
                        mov              qword ptr [rbp + 1600], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n206_match_sequence_β
.Lx564_2:
                        mov              r14d, dword ptr [rbp + 1584]
                        mov              rsp, qword ptr [rbp + 1608]
                                                                                        jmp   n209_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:
                        mov              qword ptr [rsp + 1664], 2                      # result
                        mov              dword ptr [rsp + 1668], 5
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rsp + 1672], rax
                                                                                        jmp   main_γ
n205_lit_string_β:
                                                                                        jmp   main_ω
.Lx565_0:
                        .quad            .Lx565_0_s
.Lx565_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n206_match_sequence_α:
                        mov              dword ptr [rbp + 1632], r14d
                                                                                        jmp   n208_match_lit_α
n206_match_sequence_as:
                                                                                        jmp   n204_match_arbno_as
n206_match_sequence_β:
                                                                                        jmp   n207_match_defer_β
n206_match_sequence_af:
                                                                                        jmp   n204_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n207_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx568_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx568_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx568_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx568_10
.Lx568_9:
                        xor              eax, eax
.Lx568_10:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              qword ptr [rsi + 0], rax
.Lx568_11:
                        test             rax, rax
                                                                                        jz    .Lx568_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx568_4]
                        lea              rdx, [rip + .Lx568_5]
                                                                                        jmp   rax
.Lx568_4:
                                                                                        jmp   n204_match_arbno_as
.Lx568_5:
                                                                                        jmp   n208_match_lit_β
.Lx568_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx568_2:
                        test             rax, rax
                                                                                        je    .Lx568_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx568_7]
                        lea              rdx, [rip + .Lx568_8]
                                                                                        jmp   rax
.Lx568_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx568_2
.Lx568_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx568_2
.Lx568_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n208_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx568_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n204_match_arbno_as
.Lx568_6:
                        add              rsp, 16
                                                                                        jmp   n208_match_lit_β
n207_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n208_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n204_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n204_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n207_match_defer_α
n208_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n204_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n209_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx571_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx571_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx571_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx571_10
.Lx571_9:
                        xor              eax, eax
.Lx571_10:
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              qword ptr [rsi + 0], rax
.Lx571_11:
                        test             rax, rax
                                                                                        jz    .Lx571_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx571_4]
                        lea              rdx, [rip + .Lx571_5]
                                                                                        jmp   rax
.Lx571_4:
                                                                                        jmp   n204_match_arbno_α
.Lx571_5:
                                                                                        jmp   n210_match_lit_β
.Lx571_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx571_2:
                        test             rax, rax
                                                                                        je    .Lx571_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx571_7]
                        lea              rdx, [rip + .Lx571_8]
                                                                                        jmp   rax
.Lx571_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx571_2
.Lx571_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx571_2
.Lx571_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n210_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx571_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n204_match_arbno_α
.Lx571_6:
                        add              rsp, 16
                                                                                        jmp   n210_match_lit_β
n209_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n210_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n191_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n191_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n209_match_defer_α
n210_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n191_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_integer_α:
                        mov              qword ptr [rsp + 1520], 3                      # result
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rsp + 1528], rax
                                                                                        jmp   n212_match_pos_α
n211_lit_integer_β:
                                                                                        jmp   n191_match_begin_β
.Lx574_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n212_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n191_match_begin_β
                                                                                        jmp   n210_match_lit_α
n212_match_pos_β:
                                                                                        jmp   n191_match_begin_β
#=======================================================================================================================
# B4      OUTPUT = "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_begin_α:
                                                                                        jmp   n214_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n215_assign_α
.Lx578_0:
                        .quad            .Lx578_0_s
.Lx578_0_s:
                        .string          "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n215_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx579_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n216_statement_end_α
.Lx579_0:
                        .quad            .Lx579_0_s
.Lx579_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n216_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n217_statement_begin_α
#=======================================================================================================================
# N4      S5 POS(0) "a" *ITEM2 ARBNO("," *ITEM2) "z" RPOS(0)  :S(A5)F(B5)
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_begin_α:
                                                                                        jmp   n218_var_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # S5
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n219_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n219_match_begin_α:
                        sub              rsp, 2064
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
                        mov              rdi, qword ptr [rsp + 2064]                    # var
                        mov              rsi, qword ptr [rsp + 2072]
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
                        mov              qword ptr [rbp + 1808], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1800], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1792], 0                      # start_δ
.Lx586_0:
                        mov              r14d, dword ptr [rbp + 1792]
                                                                                        jmp   n220_match_sequence_α
n219_match_begin_β:
                        add              dword ptr [rbp + 1792], 1
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, r15d
                                                                                        jg    .Lx586_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx586_1
                                                                                        jmp   .Lx586_0
.Lx586_1:
                        mov              rax, qword ptr [rbp + 1800]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1808]
                        mov              r10, qword ptr [1879048192]
.Lx586_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx586_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1840]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1848]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1856]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1864]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1832]                    # old_rbp
                        add              rsp, 2080
                                                                                        jmp   n239_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n220_match_sequence_α:
                        mov              dword ptr [rbp + 1872], r14d
                                                                                        jmp   n237_lit_integer_α
n220_match_sequence_as:
                                                                                        jmp   n221_match_end_α
n220_match_sequence_β:
                                                                                        jmp   n228_match_rpos_β
n220_match_sequence_af:
                                                                                        jmp   n219_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n221_match_end_α:
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
.Lx590_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx590_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx590_1:
                        test             rax, rax
                                                                                        je    .Lx590_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx590_3]
                        lea              rdx, [rip + .Lx590_4]
                                                                                        jmp   rax
.Lx590_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx590_1
.Lx590_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx590_1
.Lx590_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx590_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx590_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1840]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1848]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1856]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1864]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n222_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_end_α:
                        mov              rbp, qword ptr [rbp + 1832]                    # old_rbp
                        add              rsp, 2080
                                                                                        jmp   n223_statement_begin_α
#=======================================================================================================================
# A5      OUTPUT = "T5 MATCH"             :(N5)
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_begin_α:
                                                                                        jmp   n224_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx595_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n225_assign_α
.Lx595_0:
                        .quad            .Lx595_0_s
.Lx595_0_s:
                        .string          "T5 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n225_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx596_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n226_statement_end_α
.Lx596_0:
                        .quad            .Lx596_0_s
.Lx596_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n226_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n243_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_integer_α:
                        mov              qword ptr [rsp + 2048], 3                      # result
                        mov              rax, qword ptr [rip + .Lx599_0]
                        mov              qword ptr [rsp + 2056], rax
                                                                                        jmp   n228_match_rpos_α
n227_lit_integer_β:
                                                                                        jmp   n229_match_lit_β
.Lx599_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n228_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n229_match_lit_β
                                                                                        jmp   n221_match_end_α
n228_match_rpos_β:
                                                                                        jmp   n229_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n229_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n230_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 122
                                                                                        jne   n230_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n227_lit_integer_α
n229_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n230_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n230_match_arbno_α:
                        mov              dword ptr [rbp + 1952], r14d
                        mov              dword ptr [rbp + 1956], r14d
                        mov              dword ptr [rbp + 1960], 0
                        mov              qword ptr [rbp + 1976], rsp
                        mov              qword ptr [rbp + 1968], 0
                                                                                        jmp   n229_match_lit_α
n230_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1956]
                        mov              rax, qword ptr [rbp + 1968]
                        sub              rsp, 2080
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1968], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n232_match_sequence_α
n230_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n232_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 1960]
                        add              eax, 1
                        mov              dword ptr [rbp + 1960], eax
                        mov              dword ptr [rbp + 1956], r14d
                                                                                        jmp   n229_match_lit_α
n230_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 2056]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1960]
                        test             ecx, ecx
                                                                                        jz    .Lx604_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1960], ecx
                        mov              qword ptr [rbp + 1968], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n232_match_sequence_β
.Lx604_2:
                        mov              r14d, dword ptr [rbp + 1952]
                        mov              rsp, qword ptr [rbp + 1976]
                                                                                        jmp   n235_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:
                        mov              qword ptr [rsp + 2032], 2                      # result
                        mov              dword ptr [rsp + 2036], 5
                        mov              rax, qword ptr [rip + .Lx605_0]
                        mov              qword ptr [rsp + 2040], rax
                                                                                        jmp   main_γ
n231_lit_string_β:
                                                                                        jmp   main_ω
.Lx605_0:
                        .quad            .Lx605_0_s
.Lx605_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n232_match_sequence_α:
                        mov              dword ptr [rbp + 2000], r14d
                                                                                        jmp   n234_match_lit_α
n232_match_sequence_as:
                                                                                        jmp   n230_match_arbno_as
n232_match_sequence_β:
                                                                                        jmp   n233_match_defer_β
n232_match_sequence_af:
                                                                                        jmp   n230_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n233_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx608_11
                        mov              rax, qword ptr [1879052304]                    # ITEM2
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx608_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx608_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx608_10
.Lx608_9:
                        xor              eax, eax
.Lx608_10:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              qword ptr [rsi + 0], rax
.Lx608_11:
                        test             rax, rax
                                                                                        jz    .Lx608_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx608_4]
                        lea              rdx, [rip + .Lx608_5]
                                                                                        jmp   rax
.Lx608_4:
                                                                                        jmp   n230_match_arbno_as
.Lx608_5:
                                                                                        jmp   n234_match_lit_β
.Lx608_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx608_2:
                        test             rax, rax
                                                                                        je    .Lx608_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx608_7]
                        lea              rdx, [rip + .Lx608_8]
                                                                                        jmp   rax
.Lx608_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx608_2
.Lx608_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx608_2
.Lx608_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n234_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx608_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n230_match_arbno_as
.Lx608_6:
                        add              rsp, 16
                                                                                        jmp   n234_match_lit_β
n233_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n234_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n230_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n230_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n233_match_defer_α
n234_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n230_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n235_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx611_11
                        mov              rax, qword ptr [1879052304]                    # ITEM2
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx611_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx611_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx611_10
.Lx611_9:
                        xor              eax, eax
.Lx611_10:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              qword ptr [rsi + 0], rax
.Lx611_11:
                        test             rax, rax
                                                                                        jz    .Lx611_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx611_4]
                        lea              rdx, [rip + .Lx611_5]
                                                                                        jmp   rax
.Lx611_4:
                                                                                        jmp   n230_match_arbno_α
.Lx611_5:
                                                                                        jmp   n236_match_lit_β
.Lx611_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx611_2:
                        test             rax, rax
                                                                                        je    .Lx611_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx611_7]
                        lea              rdx, [rip + .Lx611_8]
                                                                                        jmp   rax
.Lx611_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx611_2
.Lx611_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx611_2
.Lx611_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n236_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx611_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n230_match_arbno_α
.Lx611_6:
                        add              rsp, 16
                                                                                        jmp   n236_match_lit_β
n235_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n236_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n219_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n219_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n235_match_defer_α
n236_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n219_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_integer_α:
                        mov              qword ptr [rsp + 1888], 3                      # result
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rsp + 1896], rax
                                                                                        jmp   n238_match_pos_α
n237_lit_integer_β:
                                                                                        jmp   n219_match_begin_β
.Lx614_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n238_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n219_match_begin_β
                                                                                        jmp   n236_match_lit_α
n238_match_pos_β:
                                                                                        jmp   n219_match_begin_β
#=======================================================================================================================
# B5      OUTPUT = "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_begin_α:
                                                                                        jmp   n240_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n241_assign_α
.Lx618_0:
                        .quad            .Lx618_0_s
.Lx618_0_s:
                        .string          "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n241_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx619_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n242_statement_end_α
.Lx619_0:
                        .quad            .Lx619_0_s
.Lx619_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n243_statement_begin_α
#=======================================================================================================================
# N5      S6 POS(0) LISTP RPOS(0)         :S(A6)F(B6)
#-----------------------------------------------------------------------------------------------------------------------
n243_statement_begin_α:
                                                                                        jmp   n244_var_α
#-----------------------------------------------------------------------------------------------------------------------
n244_var_α:
                        sub              rsp, 2288
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
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n245_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n245_match_begin_α:
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
                        mov              qword ptr [rbp + 2144], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2136], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2128], 0                      # start_δ
.Lx626_0:
                        mov              r14d, dword ptr [rbp + 2128]
                                                                                        jmp   n246_match_sequence_α
n245_match_begin_β:
                        add              dword ptr [rbp + 2128], 1
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              eax, r15d
                                                                                        jg    .Lx626_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx626_1
                                                                                        jmp   .Lx626_0
.Lx626_1:
                        mov              rax, qword ptr [rbp + 2136]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2144]
                        mov              r10, qword ptr [1879048192]
.Lx626_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx626_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2176]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2184]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2192]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2200]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2168]                    # old_rbp
                        add              rsp, 2288
                                                                                        jmp   n258_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n246_match_sequence_α:
                        mov              dword ptr [rbp + 2208], r14d
                                                                                        jmp   n256_lit_integer_α
n246_match_sequence_as:
                                                                                        jmp   n247_match_end_α
n246_match_sequence_β:
                                                                                        jmp   n254_match_rpos_β
n246_match_sequence_af:
                                                                                        jmp   n245_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n247_match_end_α:
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
.Lx630_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx630_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx630_1:
                        test             rax, rax
                                                                                        je    .Lx630_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx630_3]
                        lea              rdx, [rip + .Lx630_4]
                                                                                        jmp   rax
.Lx630_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx630_1
.Lx630_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx630_1
.Lx630_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx630_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx630_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2176]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2184]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2192]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2200]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n248_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_end_α:
                        mov              rbp, qword ptr [rbp + 2168]                    # old_rbp
                        add              rsp, 2288
                                                                                        jmp   n249_statement_begin_α
#=======================================================================================================================
# A6      OUTPUT = "T6 MATCH"             :(N6)
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_begin_α:
                                                                                        jmp   n250_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n251_assign_α
.Lx635_0:
                        .quad            .Lx635_0_s
.Lx635_0_s:
                        .string          "T6 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n251_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx636_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n252_statement_end_α
.Lx636_0:
                        .quad            .Lx636_0_s
.Lx636_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n262_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_integer_α:
                        mov              qword ptr [rsp + 2256], 3                      # result
                        mov              rax, qword ptr [rip + .Lx639_0]
                        mov              qword ptr [rsp + 2264], rax
                                                                                        jmp   n254_match_rpos_α
n253_lit_integer_β:
                                                                                        jmp   n255_match_patref_β
.Lx639_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n254_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n255_match_patref_β
                                                                                        jmp   n247_match_end_α
n254_match_rpos_β:
                                                                                        jmp   n255_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n255_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+112]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx641_11
                        mov              rax, qword ptr [1879052336]                    # LISTP
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 8
                                                                                        jne   .Lx641_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx641_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx641_10
.Lx641_9:
                        xor              eax, eax
.Lx641_10:
                        lea              rsi, [rip + g_sno_defer_cells+112]
                        mov              qword ptr [rsi + 0], rax
.Lx641_11:
                        test             rax, rax
                                                                                        jz    .Lx641_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx641_4]
                        lea              rdx, [rip + .Lx641_5]
                                                                                        jmp   rax
.Lx641_4:
                                                                                        jmp   n253_lit_integer_α
.Lx641_5:
                                                                                        jmp   n245_match_begin_β
.Lx641_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx641_2:
                        test             rax, rax
                                                                                        je    .Lx641_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx641_7]
                        lea              rdx, [rip + .Lx641_8]
                                                                                        jmp   rax
.Lx641_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx641_2
.Lx641_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx641_2
.Lx641_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n245_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx641_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n253_lit_integer_α
.Lx641_6:
                        add              rsp, 16
                                                                                        jmp   n245_match_begin_β
n255_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_integer_α:
                        mov              qword ptr [rsp + 2224], 3                      # result
                        mov              rax, qword ptr [rip + .Lx642_0]
                        mov              qword ptr [rsp + 2232], rax
                                                                                        jmp   n257_match_pos_α
n256_lit_integer_β:
                                                                                        jmp   n245_match_begin_β
.Lx642_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n257_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n245_match_begin_β
                                                                                        jmp   n255_match_patref_α
n257_match_pos_β:
                                                                                        jmp   n245_match_begin_β
#=======================================================================================================================
# B6      OUTPUT = "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n258_statement_begin_α:
                                                                                        jmp   n259_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n260_assign_α
.Lx646_0:
                        .quad            .Lx646_0_s
.Lx646_0_s:
                        .string          "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n260_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx647_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n261_statement_end_α
.Lx647_0:
                        .quad            .Lx647_0_s
.Lx647_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n261_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n262_statement_begin_α
#=======================================================================================================================
# N6      S7 POS(0) "(" *NEST ARBNO("," *NEST) ")" RPOS(0)  :S(A7)F(B7)
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_begin_α:
                                                                                        jmp   n263_var_α
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:
                        sub              rsp, 2608
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
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n264_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n264_match_begin_α:
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
                        mov              qword ptr [rbp + 2352], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2344], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2336], 0                      # start_δ
.Lx654_0:
                        mov              r14d, dword ptr [rbp + 2336]
                                                                                        jmp   n265_match_sequence_α
n264_match_begin_β:
                        add              dword ptr [rbp + 2336], 1
                        mov              eax, dword ptr [rbp + 2336]
                        cmp              eax, r15d
                                                                                        jg    .Lx654_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx654_1
                                                                                        jmp   .Lx654_0
.Lx654_1:
                        mov              rax, qword ptr [rbp + 2344]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2352]
                        mov              r10, qword ptr [1879048192]
.Lx654_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx654_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2384]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2392]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2400]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2408]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2376]                    # old_rbp
                        add              rsp, 2608
                                                                                        jmp   n283_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n265_match_sequence_α:
                        mov              dword ptr [rbp + 2416], r14d
                                                                                        jmp   n281_lit_integer_α
n265_match_sequence_as:
                                                                                        jmp   n266_match_end_α
n265_match_sequence_β:
                                                                                        jmp   n273_match_rpos_β
n265_match_sequence_af:
                                                                                        jmp   n264_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n266_match_end_α:
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
.Lx658_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx658_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx658_1:
                        test             rax, rax
                                                                                        je    .Lx658_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx658_3]
                        lea              rdx, [rip + .Lx658_4]
                                                                                        jmp   rax
.Lx658_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx658_1
.Lx658_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx658_1
.Lx658_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx658_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx658_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2384]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2392]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2400]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2408]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n267_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n267_statement_end_α:
                        mov              rbp, qword ptr [rbp + 2376]                    # old_rbp
                        add              rsp, 2608
                                                                                        jmp   n268_statement_begin_α
#=======================================================================================================================
# A7      OUTPUT = "T7 MATCH"             :(N7)
#-----------------------------------------------------------------------------------------------------------------------
n268_statement_begin_α:
                                                                                        jmp   n269_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n270_assign_α
.Lx663_0:
                        .quad            .Lx663_0_s
.Lx663_0_s:
                        .string          "T7 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n270_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx664_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n271_statement_end_α
.Lx664_0:
                        .quad            .Lx664_0_s
.Lx664_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n271_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n287_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_integer_α:
                        mov              qword ptr [rsp + 2576], 3                      # result
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rsp + 2584], rax
                                                                                        jmp   n273_match_rpos_α
n272_lit_integer_β:
                                                                                        jmp   n274_match_lit_β
.Lx667_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n273_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n274_match_lit_β
                                                                                        jmp   n266_match_end_α
n273_match_rpos_β:
                                                                                        jmp   n274_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n274_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n275_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n275_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n272_lit_integer_α
n274_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n275_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n275_match_arbno_α:
                        mov              dword ptr [rbp + 2480], r14d
                        mov              dword ptr [rbp + 2484], r14d
                        mov              dword ptr [rbp + 2488], 0
                        mov              qword ptr [rbp + 2504], rsp
                        mov              qword ptr [rbp + 2496], 0
                                                                                        jmp   n274_match_lit_α
n275_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 2484]
                        mov              rax, qword ptr [rbp + 2496]
                        sub              rsp, 2608
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 2496], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n276_match_sequence_α
n275_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n276_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 2488]
                        add              eax, 1
                        mov              dword ptr [rbp + 2488], eax
                        mov              dword ptr [rbp + 2484], r14d
                                                                                        jmp   n274_match_lit_α
n275_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 2584]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 2488]
                        test             ecx, ecx
                                                                                        jz    .Lx672_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 2488], ecx
                        mov              qword ptr [rbp + 2496], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n276_match_sequence_β
.Lx672_2:
                        mov              r14d, dword ptr [rbp + 2480]
                        mov              rsp, qword ptr [rbp + 2504]
                                                                                        jmp   n279_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n276_match_sequence_α:
                        mov              dword ptr [rbp + 2528], r14d
                                                                                        jmp   n278_match_lit_α
n276_match_sequence_as:
                                                                                        jmp   n275_match_arbno_as
n276_match_sequence_β:
                                                                                        jmp   n277_match_defer_β
n276_match_sequence_af:
                                                                                        jmp   n275_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n277_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+120]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx675_11
                        mov              rax, qword ptr [1879052320]                    # NEST
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx675_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx675_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx675_10
.Lx675_9:
                        xor              eax, eax
.Lx675_10:
                        lea              rsi, [rip + g_sno_defer_cells+120]
                        mov              qword ptr [rsi + 0], rax
.Lx675_11:
                        test             rax, rax
                                                                                        jz    .Lx675_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx675_4]
                        lea              rdx, [rip + .Lx675_5]
                                                                                        jmp   rax
.Lx675_4:
                                                                                        jmp   n275_match_arbno_as
.Lx675_5:
                                                                                        jmp   n278_match_lit_β
.Lx675_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx675_2:
                        test             rax, rax
                                                                                        je    .Lx675_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx675_7]
                        lea              rdx, [rip + .Lx675_8]
                                                                                        jmp   rax
.Lx675_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx675_2
.Lx675_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx675_2
.Lx675_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n278_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx675_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n275_match_arbno_as
.Lx675_6:
                        add              rsp, 16
                                                                                        jmp   n278_match_lit_β
n277_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n278_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n275_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n275_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n277_match_defer_α
n278_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n275_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n279_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+128]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx678_11
                        mov              rax, qword ptr [1879052320]                    # NEST
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx678_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx678_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx678_10
.Lx678_9:
                        xor              eax, eax
.Lx678_10:
                        lea              rsi, [rip + g_sno_defer_cells+128]
                        mov              qword ptr [rsi + 0], rax
.Lx678_11:
                        test             rax, rax
                                                                                        jz    .Lx678_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx678_4]
                        lea              rdx, [rip + .Lx678_5]
                                                                                        jmp   rax
.Lx678_4:
                                                                                        jmp   n275_match_arbno_α
.Lx678_5:
                                                                                        jmp   n280_match_lit_β
.Lx678_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx678_2:
                        test             rax, rax
                                                                                        je    .Lx678_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx678_7]
                        lea              rdx, [rip + .Lx678_8]
                                                                                        jmp   rax
.Lx678_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx678_2
.Lx678_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx678_2
.Lx678_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n280_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx678_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n275_match_arbno_α
.Lx678_6:
                        add              rsp, 16
                                                                                        jmp   n280_match_lit_β
n279_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n280_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n264_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n264_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n279_match_defer_α
n280_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n264_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_integer_α:
                        mov              qword ptr [rsp + 2432], 3                      # result
                        mov              rax, qword ptr [rip + .Lx681_0]
                        mov              qword ptr [rsp + 2440], rax
                                                                                        jmp   n282_match_pos_α
n281_lit_integer_β:
                                                                                        jmp   n264_match_begin_β
.Lx681_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n282_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n264_match_begin_β
                                                                                        jmp   n280_match_lit_α
n282_match_pos_β:
                                                                                        jmp   n264_match_begin_β
#=======================================================================================================================
# B7      OUTPUT = "T7 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n283_statement_begin_α:
                                                                                        jmp   n284_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx685_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n285_assign_α
.Lx685_0:
                        .quad            .Lx685_0_s
.Lx685_0_s:
                        .string          "T7 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n285_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx686_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n286_statement_end_α
.Lx686_0:
                        .quad            .Lx686_0_s
.Lx686_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n286_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n287_statement_begin_α
#=======================================================================================================================
# N7      S8 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)  :S(A8)F(B8)
#-----------------------------------------------------------------------------------------------------------------------
n287_statement_begin_α:
                                                                                        jmp   n288_var_α
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # S8
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n289_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n289_match_begin_α:
                        sub              rsp, 2928
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
                        mov              rdi, qword ptr [rsp + 2928]                    # var
                        mov              rsi, qword ptr [rsp + 2936]
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
                        mov              qword ptr [rbp + 2672], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2664], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2656], 0                      # start_δ
.Lx693_0:
                        mov              r14d, dword ptr [rbp + 2656]
                                                                                        jmp   n290_match_sequence_α
n289_match_begin_β:
                        add              dword ptr [rbp + 2656], 1
                        mov              eax, dword ptr [rbp + 2656]
                        cmp              eax, r15d
                                                                                        jg    .Lx693_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx693_1
                                                                                        jmp   .Lx693_0
.Lx693_1:
                        mov              rax, qword ptr [rbp + 2664]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2672]
                        mov              r10, qword ptr [1879048192]
.Lx693_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx693_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2704]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2712]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2720]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2728]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2696]                    # old_rbp
                        add              rsp, 2944
                                                                                        jmp   n309_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n290_match_sequence_α:
                        mov              dword ptr [rbp + 2736], r14d
                                                                                        jmp   n307_lit_integer_α
n290_match_sequence_as:
                                                                                        jmp   n291_match_end_α
n290_match_sequence_β:
                                                                                        jmp   n298_match_rpos_β
n290_match_sequence_af:
                                                                                        jmp   n289_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n291_match_end_α:
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
.Lx697_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx697_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx697_1:
                        test             rax, rax
                                                                                        je    .Lx697_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx697_3]
                        lea              rdx, [rip + .Lx697_4]
                                                                                        jmp   rax
.Lx697_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx697_1
.Lx697_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx697_1
.Lx697_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx697_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx697_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2704]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2712]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2720]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2728]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n292_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n292_statement_end_α:
                        mov              rbp, qword ptr [rbp + 2696]                    # old_rbp
                        add              rsp, 2944
                                                                                        jmp   n293_statement_begin_α
#=======================================================================================================================
# A8      OUTPUT = "T8 MATCH"             :(N8)
#-----------------------------------------------------------------------------------------------------------------------
n293_statement_begin_α:
                                                                                        jmp   n294_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx702_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n295_assign_α
.Lx702_0:
                        .quad            .Lx702_0_s
.Lx702_0_s:
                        .string          "T8 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n295_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx703_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n296_statement_end_α
.Lx703_0:
                        .quad            .Lx703_0_s
.Lx703_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n296_statement_end_α:
                                                                                        jmp   n313_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_integer_α:
                        mov              qword ptr [rsp + 2912], 3                      # result
                        mov              rax, qword ptr [rip + .Lx706_0]
                        mov              qword ptr [rsp + 2920], rax
                                                                                        jmp   n298_match_rpos_α
n297_lit_integer_β:
                                                                                        jmp   n299_match_lit_β
.Lx706_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n298_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n299_match_lit_β
                                                                                        jmp   n291_match_end_α
n298_match_rpos_β:
                                                                                        jmp   n299_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n299_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n300_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n300_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n297_lit_integer_α
n299_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n300_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n300_match_arbno_α:
                        mov              dword ptr [rbp + 2816], r14d
                        mov              dword ptr [rbp + 2820], r14d
                        mov              dword ptr [rbp + 2824], 0
                        mov              qword ptr [rbp + 2840], rsp
                        mov              qword ptr [rbp + 2832], 0
                                                                                        jmp   n299_match_lit_α
n300_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 2820]
                        mov              rax, qword ptr [rbp + 2832]
                        sub              rsp, 2944
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 2832], rsp
                        mov              rbp, rsp
                        add              rbp, 24
                                                                                        jmp   n302_match_sequence_α
n300_match_arbno_as:
                        mov              eax, dword ptr [rbp + -16]
                        cmp              r14d, eax
                                                                                        je    n302_match_sequence_β
                        mov              rbp, qword ptr [rbp + -24]
                        mov              eax, dword ptr [rbp + 2824]
                        add              eax, 1
                        mov              dword ptr [rbp + 2824], eax
                        mov              dword ptr [rbp + 2820], r14d
                                                                                        jmp   n299_match_lit_α
n300_match_arbno_af:
                        mov              rax, qword ptr [rbp + -8]
                        mov              rdx, qword ptr [rbp + -24]
                        lea              rsp, [rbp + 2920]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 2824]
                        test             ecx, ecx
                                                                                        jz    .Lx711_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 2824], ecx
                        mov              qword ptr [rbp + 2832], rax
                        lea              rbp, [rax + 24]
                                                                                        jmp   n302_match_sequence_β
.Lx711_2:
                        mov              r14d, dword ptr [rbp + 2816]
                        mov              rsp, qword ptr [rbp + 2840]
                                                                                        jmp   n305_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_string_α:
                        mov              qword ptr [rsp + 2896], 2                      # result
                        mov              dword ptr [rsp + 2900], 5
                        mov              rax, qword ptr [rip + .Lx712_0]
                        mov              qword ptr [rsp + 2904], rax
                                                                                        jmp   main_γ
n301_lit_string_β:
                                                                                        jmp   main_ω
.Lx712_0:
                        .quad            .Lx712_0_s
.Lx712_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n302_match_sequence_α:
                        mov              dword ptr [rbp + 2864], r14d
                                                                                        jmp   n304_match_lit_α
n302_match_sequence_as:
                                                                                        jmp   n300_match_arbno_as
n302_match_sequence_β:
                                                                                        jmp   n303_match_defer_β
n302_match_sequence_af:
                                                                                        jmp   n300_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n303_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+136]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx715_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx715_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx715_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx715_10
.Lx715_9:
                        xor              eax, eax
.Lx715_10:
                        lea              rsi, [rip + g_sno_defer_cells+136]
                        mov              qword ptr [rsi + 0], rax
.Lx715_11:
                        test             rax, rax
                                                                                        jz    .Lx715_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx715_4]
                        lea              rdx, [rip + .Lx715_5]
                                                                                        jmp   rax
.Lx715_4:
                                                                                        jmp   n300_match_arbno_as
.Lx715_5:
                                                                                        jmp   n304_match_lit_β
.Lx715_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx715_2:
                        test             rax, rax
                                                                                        je    .Lx715_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx715_7]
                        lea              rdx, [rip + .Lx715_8]
                                                                                        jmp   rax
.Lx715_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx715_2
.Lx715_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx715_2
.Lx715_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n304_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx715_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n300_match_arbno_as
.Lx715_6:
                        add              rsp, 16
                                                                                        jmp   n304_match_lit_β
n303_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n304_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n300_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n300_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n303_match_defer_α
n304_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n300_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n305_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+144]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx718_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx718_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx718_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx718_10
.Lx718_9:
                        xor              eax, eax
.Lx718_10:
                        lea              rsi, [rip + g_sno_defer_cells+144]
                        mov              qword ptr [rsi + 0], rax
.Lx718_11:
                        test             rax, rax
                                                                                        jz    .Lx718_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx718_4]
                        lea              rdx, [rip + .Lx718_5]
                                                                                        jmp   rax
.Lx718_4:
                                                                                        jmp   n300_match_arbno_α
.Lx718_5:
                                                                                        jmp   n306_match_lit_β
.Lx718_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx718_2:
                        test             rax, rax
                                                                                        je    .Lx718_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx718_7]
                        lea              rdx, [rip + .Lx718_8]
                                                                                        jmp   rax
.Lx718_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx718_2
.Lx718_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx718_2
.Lx718_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n306_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx718_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n300_match_arbno_α
.Lx718_6:
                        add              rsp, 16
                                                                                        jmp   n306_match_lit_β
n305_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n306_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n289_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n289_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n305_match_defer_α
n306_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n289_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:
                        mov              qword ptr [rsp + 2752], 3                      # result
                        mov              rax, qword ptr [rip + .Lx721_0]
                        mov              qword ptr [rsp + 2760], rax
                                                                                        jmp   n308_match_pos_α
n307_lit_integer_β:
                                                                                        jmp   n289_match_begin_β
.Lx721_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n308_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n289_match_begin_β
                                                                                        jmp   n306_match_lit_α
n308_match_pos_β:
                                                                                        jmp   n289_match_begin_β
#=======================================================================================================================
# B8      OUTPUT = "T8 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n309_statement_begin_α:
                                                                                        jmp   n310_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx725_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n311_assign_α
.Lx725_0:
                        .quad            .Lx725_0_s
.Lx725_0_s:
                        .string          "T8 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n311_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx726_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n312_statement_end_α
.Lx726_0:
                        .quad            .Lx726_0_s
.Lx726_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n312_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n313_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n313_statement_begin_α:
                                                                                        jmp   n314_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n314_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n315_goto_α:
                                                                                        jmp   n117_statement_begin_α
n315_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n316_goto_α:
                                                                                        jmp   n133_statement_begin_α
n316_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n317_goto_α:
                                                                                        jmp   n137_statement_begin_α
n317_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n318_goto_α:
                                                                                        jmp   n143_statement_begin_α
n318_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n319_goto_α:
                                                                                        jmp   n159_statement_begin_α
n319_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n320_goto_α:
                                                                                        jmp   n163_statement_begin_α
n320_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n321_goto_α:
                                                                                        jmp   n169_statement_begin_α
n321_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n322_goto_α:
                                                                                        jmp   n185_statement_begin_α
n322_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n323_goto_α:
                                                                                        jmp   n189_statement_begin_α
n323_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n324_goto_α:
                                                                                        jmp   n195_statement_begin_α
n324_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n325_goto_α:
                                                                                        jmp   n213_statement_begin_α
n325_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n326_goto_α:
                                                                                        jmp   n217_statement_begin_α
n326_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n327_goto_α:
                                                                                        jmp   n223_statement_begin_α
n327_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n328_goto_α:
                                                                                        jmp   n239_statement_begin_α
n328_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n329_goto_α:
                                                                                        jmp   n243_statement_begin_α
n329_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n330_goto_α:
                                                                                        jmp   n249_statement_begin_α
n330_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n331_goto_α:
                                                                                        jmp   n258_statement_begin_α
n331_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n332_goto_α:
                                                                                        jmp   n262_statement_begin_α
n332_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n333_goto_α:
                                                                                        jmp   n268_statement_begin_α
n333_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n334_goto_α:
                                                                                        jmp   n283_statement_begin_α
n334_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n335_goto_α:
                                                                                        jmp   n287_statement_begin_α
n335_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n336_goto_α:
                                                                                        jmp   n293_statement_begin_α
n336_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n337_goto_α:
                                                                                        jmp   n309_statement_begin_α
n337_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n338_goto_α:
                                                                                        jmp   n313_statement_begin_α
n338_goto_β:
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
