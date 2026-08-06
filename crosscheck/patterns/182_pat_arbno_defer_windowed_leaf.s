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
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + n16_match_alternate_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n16_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx23_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n21_match_span_α
.Lx23_21:
                        lea              rax, [rip + .Lx23_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n18_match_lit_α
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
                                                                                        jmp   n17_goto_β
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
n17_goto_α:
                                                                                        jmp   n16_match_alternate_af
n17_goto_β:
                                                                                        jmp   n16_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n18_match_lit_α:
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
n18_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n16_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n19_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx27_11
                        mov              rax, qword ptr [1879052320]                    # NEST
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx27_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx27_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx27_10
.Lx27_9:
                        xor              eax, eax
.Lx27_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx27_11:
                        test             rax, rax
                                                                                        jz    .Lx27_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx27_4]
                        lea              rdx, [rip + .Lx27_5]
                                                                                        jmp   rax
.Lx27_4:
                                                                                        jmp   n20_match_lit_α
.Lx27_5:
                                                                                        jmp   n18_match_lit_β
.Lx27_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx27_2:
                        test             rax, rax
                                                                                        je    .Lx27_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx27_7]
                        lea              rdx, [rip + .Lx27_8]
                                                                                        jmp   rax
.Lx27_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx27_2
.Lx27_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx27_2
.Lx27_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n18_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx27_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n20_match_lit_α
.Lx27_6:
                        add              rsp, 16
                                                                                        jmp   n18_match_lit_β
n19_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n20_match_lit_α:
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
n20_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n19_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx31_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx31_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx31_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx31_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx31_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx31_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx31_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx31_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx31_1
                        add              ecx, 1
                                                                                        jmp   .Lx31_0
.Lx31_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx31_240
                        add              rsp, 16
                                                                                        jmp   n16_match_alternate_af
.Lx31_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n16_match_alternate_s0
n21_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n16_match_alternate_af
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx32_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx32_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx33_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx33_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx33_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx33_0:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, qword ptr [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 176], r8
                        mov              dword ptr [rsp + 168], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + proc_PAT$3_ω]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n34_match_lit_α:
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
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx41_239
                        add              rsp, 128
                                                                                        jmp   proc_PAT$3_scanfail
.Lx41_239:
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        je    .Lx41_240
                        add              rsp, 128
                                                                                        jmp   proc_PAT$3_scanfail
.Lx41_240:
                        add              r14d, 1
                                                                                        jmp   n35_match_defer_α
n34_match_lit_β:
                        sub              r14d, 1
                        add              rsp, 128
                                                                                        jmp   proc_PAT$3_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n35_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx42_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx42_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx42_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx42_10
.Lx42_9:
                        xor              eax, eax
.Lx42_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx42_11:
                        test             rax, rax
                                                                                        jz    .Lx42_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx42_4]
                        lea              rdx, [rip + .Lx42_5]
                                                                                        jmp   rax
.Lx42_4:
                                                                                        jmp   n36_match_arbno_α
.Lx42_5:
                                                                                        jmp   n34_match_lit_β
.Lx42_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx42_2:
                        test             rax, rax
                                                                                        je    .Lx42_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx42_7]
                        lea              rdx, [rip + .Lx42_8]
                                                                                        jmp   rax
.Lx42_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx42_2
.Lx42_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx42_2
.Lx42_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n34_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx42_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n36_match_arbno_α
.Lx42_6:
                        add              rsp, 16
                                                                                        jmp   n34_match_lit_β
n35_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n36_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   n37_match_lit_α
n36_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 68]
                        mov              rax, qword ptr [rbp + 80]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -72
                                                                                        jmp   n38_match_lit_α
n36_match_arbno_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              r14d, eax
                                                                                        je    n38_match_lit_β
                        mov              rbp, qword ptr [rbp + 72]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   n37_match_lit_α
n36_match_arbno_af:
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              rsp, [rbp + 152]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx44_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -72]
                                                                                        jmp   n38_match_lit_β
.Lx44_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n35_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n37_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n36_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n36_match_arbno_β
                        add              r14d, 1
                        add              rsp, 128
                                                                                        jmp   proc_PAT$3_scanhit
n37_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n36_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n38_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n36_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n36_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n39_match_defer_α
n38_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n36_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n39_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx49_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx49_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx49_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx49_10
.Lx49_9:
                        xor              eax, eax
.Lx49_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx49_11:
                        test             rax, rax
                                                                                        jz    .Lx49_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx49_4]
                        lea              rdx, [rip + .Lx49_5]
                                                                                        jmp   rax
.Lx49_4:
                                                                                        jmp   n36_match_arbno_as
.Lx49_5:
                                                                                        jmp   n38_match_lit_β
.Lx49_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
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
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx49_2
.Lx49_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx49_2
.Lx49_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n38_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx49_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n36_match_arbno_as
.Lx49_6:
                        add              rsp, 16
                                                                                        jmp   n38_match_lit_β
n39_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx50_0
                        mov              ecx, dword ptr [rbp + 168]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx50_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx51_0
                        mov              eax, dword ptr [rbp + 168]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx51_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx51_0
                        mov              dword ptr [rbp + 168], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx51_0:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              rbp, qword ptr [rbp + 200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
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
                        mov              esi, 96
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
                        mov              esi, 160
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
n52_statement_begin_α:
                                                                                        jmp   n53_lit_string_α
n52_statement_begin_β:
                                                                                        jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n54_call_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd321:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd321]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx320_240
                                                                                        jmp   n56_statement_end_α
.Lx320_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n55_assign_α
n54_call_β:
                                                                                        jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # ITEM
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n57_statement_begin_α
#=======================================================================================================================
#         ITEM2 = SPAN("0123456789") | "x"
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:
                                                                                        jmp   n58_lit_string_α
n57_statement_begin_β:
                                                                                        jmp   n62_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n59_call_α
.Lx327_0:
                        .quad            .Lx327_0_s
.Lx327_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n59_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd329:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd329]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx328_240
                                                                                        jmp   n61_statement_end_α
.Lx328_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n60_assign_α
n59_call_β:
                                                                                        jmp   n61_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # ITEM2
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n61_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n62_statement_begin_α
#=======================================================================================================================
#         NEST  = SPAN("0123456789") | "(" *NEST ")"
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:
                                                                                        jmp   n63_lit_string_α
n62_statement_begin_β:
                                                                                        jmp   n67_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n64_call_α
.Lx335_0:
                        .quad            .Lx335_0_s
.Lx335_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n64_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd337:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd337]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx336_240
                                                                                        jmp   n66_statement_end_α
.Lx336_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n65_assign_α
n64_call_β:
                                                                                        jmp   n66_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # NEST
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n66_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n67_statement_begin_α
#=======================================================================================================================
#         LISTP = "(" *ITEM ARBNO("," *ITEM) ")"
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_begin_α:
                                                                                        jmp   n68_lit_string_α
n67_statement_begin_β:
                                                                                        jmp   n72_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n69_call_α
.Lx343_0:
                        .quad            .Lx343_0_s
.Lx343_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n69_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd345:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd345]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx344_240
                                                                                        jmp   n71_statement_end_α
.Lx344_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n70_assign_α
n69_call_β:
                                                                                        jmp   n71_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # LISTP
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n71_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n72_statement_begin_α
#=======================================================================================================================
#         S1 = "(1,22,333)"
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_begin_α:
                                                                                        jmp   n73_lit_string_α
n72_statement_begin_β:
                                                                                        jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n74_assign_α
.Lx351_0:
                        .quad            .Lx351_0_s
.Lx351_0_s:
                        .string          "(1,22,333)"
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # S1
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n75_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n76_statement_begin_α
#=======================================================================================================================
#         S2 = "(7)"
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:
                                                                                        jmp   n77_lit_string_α
n76_statement_begin_β:
                                                                                        jmp   n80_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n78_assign_α
.Lx357_0:
                        .quad            .Lx357_0_s
.Lx357_0_s:
                        .string          "(7)"
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # S2
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n79_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n80_statement_begin_α
#=======================================================================================================================
#         S3 = "(1,,2)"
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_begin_α:
                                                                                        jmp   n81_lit_string_α
n80_statement_begin_β:
                                                                                        jmp   n84_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n82_assign_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          "(1,,2)"
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # S3
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n83_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n84_statement_begin_α
#=======================================================================================================================
#         S4 = "(11,22)"
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_begin_α:
                                                                                        jmp   n85_lit_string_α
n84_statement_begin_β:
                                                                                        jmp   n88_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n86_assign_α
.Lx369_0:
                        .quad            .Lx369_0_s
.Lx369_0_s:
                        .string          "(11,22)"
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # S4
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n87_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n88_statement_begin_α
#=======================================================================================================================
#         S5 = "a1,2,3z"
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:
                                                                                        jmp   n89_lit_string_α
n88_statement_begin_β:
                                                                                        jmp   n92_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n90_assign_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          "a1,2,3z"
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # S5
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n91_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n92_statement_begin_α
#=======================================================================================================================
#         S6 = "(4,5)"
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_begin_α:
                                                                                        jmp   n93_lit_string_α
n92_statement_begin_β:
                                                                                        jmp   n96_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n94_assign_α
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          "(4,5)"
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # S6
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n95_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n96_statement_begin_α
#=======================================================================================================================
#         S7 = "(1,(2),3)"
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:
                                                                                        jmp   n97_lit_string_α
n96_statement_begin_β:
                                                                                        jmp   n100_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n98_assign_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "(1,(2),3)"
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # S7
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n99_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n100_statement_begin_α
#=======================================================================================================================
#         S8 = "(1,2,3,4,5,6,7,8,9,10,11,12)"
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_begin_α:
                                                                                        jmp   n101_lit_string_α
n100_statement_begin_β:
                                                                                        jmp   n104_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 28
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n102_assign_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "(1,2,3,4,5,6,7,8,9,10,11,12)"
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # S8
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n103_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n104_statement_begin_α
#=======================================================================================================================
#         S1 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)   :S(A1)F(B1)
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_begin_α:
                                                                                        jmp   n105_var_α
n104_statement_begin_β:
                                                                                        jmp   n124_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:
                        sub              rsp, 672
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # S1
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n106_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n106_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 464], r13                     # outer_Σ
                        mov              qword ptr [rbp + 472], r14                     # outer_δ
                        mov              qword ptr [rbp + 480], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 488], rax                     # cap_gen
                        mov              qword ptr [rbp + 456], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 432], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 424], rax                     # patstk_mark
                        mov              dword ptr [rbp + 416], 0                       # start_δ
.Lx401_0:
                        mov              r14d, dword ptr [rbp + 416]
                                                                                        jmp   n107_lit_integer_α
n106_match_begin_β:
                        add              dword ptr [rbp + 416], 1
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, r15d
                                                                                        jg    .Lx401_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx401_1
                                                                                        jmp   .Lx401_0
.Lx401_1:
                        mov              rax, qword ptr [rbp + 424]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 432]
.Lx401_2:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx401_2
                        mov              r13, qword ptr [rbp + 464]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 472]                     # outer_δ
                        mov              r15, qword ptr [rbp + 480]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 488]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 456]                     # old_rbp
                        add              rsp, 672
                                                                                        jmp   n124_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:
                        mov              qword ptr [rsp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n108_match_pos_α
.Lx402_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n108_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n106_match_begin_β
                                                                                        jmp   n109_match_lit_α
n108_match_pos_β:
                                                                                        jmp   n106_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n109_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n106_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n106_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n110_match_defer_α
n109_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n106_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n110_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx406_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx406_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx406_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx406_10
.Lx406_9:
                        xor              eax, eax
.Lx406_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx406_11:
                        test             rax, rax
                                                                                        jz    .Lx406_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx406_4]
                        lea              rdx, [rip + .Lx406_5]
                                                                                        jmp   rax
.Lx406_4:
                                                                                        jmp   n111_match_arbno_α
.Lx406_5:
                                                                                        jmp   n109_match_lit_β
.Lx406_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx406_2:
                        test             rax, rax
                                                                                        je    .Lx406_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx406_7]
                        lea              rdx, [rip + .Lx406_8]
                                                                                        jmp   rax
.Lx406_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx406_2
.Lx406_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx406_2
.Lx406_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n109_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx406_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n111_match_arbno_α
.Lx406_6:
                        add              rsp, 16
                                                                                        jmp   n109_match_lit_β
n110_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n111_match_arbno_α:
                        mov              dword ptr [rbp + 560], r14d
                        mov              dword ptr [rbp + 564], r14d
                        mov              dword ptr [rbp + 568], 0
                        mov              qword ptr [rbp + 584], rsp
                        mov              qword ptr [rbp + 576], 0
                                                                                        jmp   n112_match_lit_α
n111_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 564]
                        mov              rax, qword ptr [rbp + 576]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 576], rsp
                        mov              rbp, rsp
                        add              rbp, -568
                                                                                        jmp   n122_match_lit_α
n111_match_arbno_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              r14d, eax
                                                                                        je    n122_match_lit_β
                        mov              rbp, qword ptr [rbp + 568]
                        mov              eax, dword ptr [rbp + 568]
                        add              eax, 1
                        mov              dword ptr [rbp + 568], eax
                        mov              dword ptr [rbp + 564], r14d
                                                                                        jmp   n112_match_lit_α
n111_match_arbno_af:
                        mov              rax, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              rsp, [rbp + 648]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 568]
                        test             ecx, ecx
                                                                                        jz    .Lx408_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 568], ecx
                        mov              qword ptr [rbp + 576], rax
                        lea              rbp, [rax + -568]
                                                                                        jmp   n122_match_lit_β
.Lx408_2:
                        mov              r14d, dword ptr [rbp + 560]
                        mov              rsp, qword ptr [rbp + 584]
                                                                                        jmp   n110_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n112_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n111_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n111_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n113_lit_integer_α
n112_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n111_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:
                        mov              qword ptr [rsp + 640], 3                       # result
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 648], rax
                                                                                        jmp   n114_match_rpos_α
.Lx411_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n114_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n112_match_lit_β
                                                                                        jmp   n115_match_end_α
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
                        mov              rsi, r12
                        mov              r10, rsi
.Lx414_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx414_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx414_1:
                        test             rax, rax
                                                                                        je    .Lx414_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx414_3]
                        lea              rdx, [rip + .Lx414_4]
                                                                                        jmp   rax
.Lx414_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx414_1
.Lx414_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx414_1
.Lx414_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx414_6:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx414_6
                        mov              r13, qword ptr [rbp + 464]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 472]                     # outer_δ
                        mov              r15, qword ptr [rbp + 480]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 488]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 456]                     # old_rbp
                                                                                        jmp   n116_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:
                        add              rsp, 672
                                                                                        jmp   n117_statement_begin_α
#=======================================================================================================================
# A1      OUTPUT = "T1 MATCH"             :(N1)
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α:
                                                                                        jmp   n118_lit_string_α
n117_statement_begin_β:
                                                                                        jmp   n128_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n119_assign_α
.Lx419_0:
                        .quad            .Lx419_0_s
.Lx419_0_s:
                        .string          "T1 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx420_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n120_statement_end_α
.Lx420_0:
                        .quad            .Lx420_0_s
.Lx420_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n128_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:
                        mov              qword ptr [rsp + 624], 2                       # result
                        mov              dword ptr [rsp + 628], 5
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rsp + 632], rax
                                                                                        jmp   main_γ
n121_lit_string_β:
                                                                                        jmp   main_ω
.Lx423_0:
                        .quad            .Lx423_0_s
.Lx423_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n122_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n111_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n111_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n123_match_defer_α
n122_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n111_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n123_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx426_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx426_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx426_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx426_10
.Lx426_9:
                        xor              eax, eax
.Lx426_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx426_11:
                        test             rax, rax
                                                                                        jz    .Lx426_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx426_4]
                        lea              rdx, [rip + .Lx426_5]
                                                                                        jmp   rax
.Lx426_4:
                                                                                        jmp   n111_match_arbno_as
.Lx426_5:
                                                                                        jmp   n122_match_lit_β
.Lx426_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx426_2:
                        test             rax, rax
                                                                                        je    .Lx426_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx426_7]
                        lea              rdx, [rip + .Lx426_8]
                                                                                        jmp   rax
.Lx426_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx426_2
.Lx426_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx426_2
.Lx426_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n122_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx426_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n111_match_arbno_as
.Lx426_6:
                        add              rsp, 16
                                                                                        jmp   n122_match_lit_β
n123_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B1      OUTPUT = "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_begin_α:
                                                                                        jmp   n125_lit_string_α
n124_statement_begin_β:
                                                                                        jmp   n128_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n126_assign_α
.Lx429_0:
                        .quad            .Lx429_0_s
.Lx429_0_s:
                        .string          "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n126_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx430_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n127_statement_end_α
.Lx430_0:
                        .quad            .Lx430_0_s
.Lx430_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n128_statement_begin_α
#=======================================================================================================================
# N1      S2 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)  :S(A2)F(B2)
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_begin_α:
                                                                                        jmp   n129_var_α
n128_statement_begin_β:
                                                                                        jmp   n148_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_α:
                        sub              rsp, 976
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # S2
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n130_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n130_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 768], r13                     # outer_Σ
                        mov              qword ptr [rbp + 776], r14                     # outer_δ
                        mov              qword ptr [rbp + 784], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 792], rax                     # cap_gen
                        mov              qword ptr [rbp + 760], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 736], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 728], rax                     # patstk_mark
                        mov              dword ptr [rbp + 720], 0                       # start_δ
.Lx437_0:
                        mov              r14d, dword ptr [rbp + 720]
                                                                                        jmp   n131_lit_integer_α
n130_match_begin_β:
                        add              dword ptr [rbp + 720], 1
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, r15d
                                                                                        jg    .Lx437_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx437_1
                                                                                        jmp   .Lx437_0
.Lx437_1:
                        mov              rax, qword ptr [rbp + 728]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 736]
.Lx437_2:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx437_2
                        mov              r13, qword ptr [rbp + 768]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 776]                     # outer_δ
                        mov              r15, qword ptr [rbp + 784]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 792]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 760]                     # old_rbp
                        add              rsp, 976
                                                                                        jmp   n148_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:
                        mov              qword ptr [rsp + 800], 3                       # result
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rsp + 808], rax
                                                                                        jmp   n132_match_pos_α
.Lx438_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n132_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n130_match_begin_β
                                                                                        jmp   n133_match_lit_α
n132_match_pos_β:
                                                                                        jmp   n130_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n133_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n130_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n130_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n134_match_defer_α
n133_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n130_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n134_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx442_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx442_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx442_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx442_10
.Lx442_9:
                        xor              eax, eax
.Lx442_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx442_11:
                        test             rax, rax
                                                                                        jz    .Lx442_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx442_4]
                        lea              rdx, [rip + .Lx442_5]
                                                                                        jmp   rax
.Lx442_4:
                                                                                        jmp   n135_match_arbno_α
.Lx442_5:
                                                                                        jmp   n133_match_lit_β
.Lx442_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx442_2:
                        test             rax, rax
                                                                                        je    .Lx442_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx442_7]
                        lea              rdx, [rip + .Lx442_8]
                                                                                        jmp   rax
.Lx442_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx442_2
.Lx442_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx442_2
.Lx442_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n133_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx442_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n135_match_arbno_α
.Lx442_6:
                        add              rsp, 16
                                                                                        jmp   n133_match_lit_β
n134_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n135_match_arbno_α:
                        mov              dword ptr [rbp + 864], r14d
                        mov              dword ptr [rbp + 868], r14d
                        mov              dword ptr [rbp + 872], 0
                        mov              qword ptr [rbp + 888], rsp
                        mov              qword ptr [rbp + 880], 0
                                                                                        jmp   n136_match_lit_α
n135_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 868]
                        mov              rax, qword ptr [rbp + 880]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 880], rsp
                        mov              rbp, rsp
                        add              rbp, -872
                                                                                        jmp   n146_match_lit_α
n135_match_arbno_as:
                        mov              eax, dword ptr [rbp + 880]
                        cmp              r14d, eax
                                                                                        je    n146_match_lit_β
                        mov              rbp, qword ptr [rbp + 872]
                        mov              eax, dword ptr [rbp + 872]
                        add              eax, 1
                        mov              dword ptr [rbp + 872], eax
                        mov              dword ptr [rbp + 868], r14d
                                                                                        jmp   n136_match_lit_α
n135_match_arbno_af:
                        mov              rax, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 872]
                        lea              rsp, [rbp + 952]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 872]
                        test             ecx, ecx
                                                                                        jz    .Lx444_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 872], ecx
                        mov              qword ptr [rbp + 880], rax
                        lea              rbp, [rax + -872]
                                                                                        jmp   n146_match_lit_β
.Lx444_2:
                        mov              r14d, dword ptr [rbp + 864]
                        mov              rsp, qword ptr [rbp + 888]
                                                                                        jmp   n134_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n136_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n135_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n135_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n137_lit_integer_α
n136_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n135_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:
                        mov              qword ptr [rsp + 944], 3                       # result
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rsp + 952], rax
                                                                                        jmp   n138_match_rpos_α
.Lx447_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n138_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n136_match_lit_β
                                                                                        jmp   n139_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n139_match_end_α:
                        mov              rax, qword ptr [rbp + 728]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 736]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx450_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx450_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx450_1:
                        test             rax, rax
                                                                                        je    .Lx450_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx450_3]
                        lea              rdx, [rip + .Lx450_4]
                                                                                        jmp   rax
.Lx450_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx450_1
.Lx450_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx450_1
.Lx450_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx450_6:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx450_6
                        mov              r13, qword ptr [rbp + 768]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 776]                     # outer_δ
                        mov              r15, qword ptr [rbp + 784]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 792]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 760]                     # old_rbp
                                                                                        jmp   n140_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_end_α:
                        add              rsp, 976
                                                                                        jmp   n141_statement_begin_α
#=======================================================================================================================
# A2      OUTPUT = "T2 MATCH"             :(N2)
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_begin_α:
                                                                                        jmp   n142_lit_string_α
n141_statement_begin_β:
                                                                                        jmp   n152_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n143_assign_α
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          "T2 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n143_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx456_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n144_statement_end_α
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n152_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:
                        mov              qword ptr [rsp + 928], 2                       # result
                        mov              dword ptr [rsp + 932], 5
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rsp + 936], rax
                                                                                        jmp   main_γ
n145_lit_string_β:
                                                                                        jmp   main_ω
.Lx459_0:
                        .quad            .Lx459_0_s
.Lx459_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n146_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n135_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n135_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n147_match_defer_α
n146_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n135_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n147_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx462_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx462_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx462_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx462_10
.Lx462_9:
                        xor              eax, eax
.Lx462_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx462_11:
                        test             rax, rax
                                                                                        jz    .Lx462_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx462_4]
                        lea              rdx, [rip + .Lx462_5]
                                                                                        jmp   rax
.Lx462_4:
                                                                                        jmp   n135_match_arbno_as
.Lx462_5:
                                                                                        jmp   n146_match_lit_β
.Lx462_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx462_2:
                        test             rax, rax
                                                                                        je    .Lx462_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx462_7]
                        lea              rdx, [rip + .Lx462_8]
                                                                                        jmp   rax
.Lx462_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx462_2
.Lx462_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx462_2
.Lx462_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n146_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx462_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n135_match_arbno_as
.Lx462_6:
                        add              rsp, 16
                                                                                        jmp   n146_match_lit_β
n147_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B2      OUTPUT = "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_begin_α:
                                                                                        jmp   n149_lit_string_α
n148_statement_begin_β:
                                                                                        jmp   n152_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n150_assign_α
.Lx465_0:
                        .quad            .Lx465_0_s
.Lx465_0_s:
                        .string          "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n150_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx466_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n151_statement_end_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n152_statement_begin_α
#=======================================================================================================================
# N2      S3 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)  :S(A3)F(B3)
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_begin_α:
                                                                                        jmp   n153_var_α
n152_statement_begin_β:
                                                                                        jmp   n172_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:
                        sub              rsp, 1280
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # S3
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n154_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n154_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 1072], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1080], r14                    # outer_δ
                        mov              qword ptr [rbp + 1088], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1096], rax                    # cap_gen
                        mov              qword ptr [rbp + 1064], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 1040], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1032], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1024], 0                      # start_δ
.Lx473_0:
                        mov              r14d, dword ptr [rbp + 1024]
                                                                                        jmp   n155_lit_integer_α
n154_match_begin_β:
                        add              dword ptr [rbp + 1024], 1
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, r15d
                                                                                        jg    .Lx473_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx473_1
                                                                                        jmp   .Lx473_0
.Lx473_1:
                        mov              rax, qword ptr [rbp + 1032]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1040]
.Lx473_2:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx473_2
                        mov              r13, qword ptr [rbp + 1072]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1080]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1088]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1096]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1064]                    # old_rbp
                        add              rsp, 1280
                                                                                        jmp   n172_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:
                        mov              qword ptr [rsp + 1104], 3                      # result
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rsp + 1112], rax
                                                                                        jmp   n156_match_pos_α
.Lx474_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n156_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n154_match_begin_β
                                                                                        jmp   n157_match_lit_α
n156_match_pos_β:
                                                                                        jmp   n154_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n157_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n154_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n154_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n158_match_defer_α
n157_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n154_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n158_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx478_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx478_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx478_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx478_10
.Lx478_9:
                        xor              eax, eax
.Lx478_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx478_11:
                        test             rax, rax
                                                                                        jz    .Lx478_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx478_4]
                        lea              rdx, [rip + .Lx478_5]
                                                                                        jmp   rax
.Lx478_4:
                                                                                        jmp   n159_match_arbno_α
.Lx478_5:
                                                                                        jmp   n157_match_lit_β
.Lx478_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
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
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx478_2
.Lx478_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx478_2
.Lx478_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n157_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx478_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n159_match_arbno_α
.Lx478_6:
                        add              rsp, 16
                                                                                        jmp   n157_match_lit_β
n158_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n159_match_arbno_α:
                        mov              dword ptr [rbp + 1168], r14d
                        mov              dword ptr [rbp + 1172], r14d
                        mov              dword ptr [rbp + 1176], 0
                        mov              qword ptr [rbp + 1192], rsp
                        mov              qword ptr [rbp + 1184], 0
                                                                                        jmp   n160_match_lit_α
n159_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1172]
                        mov              rax, qword ptr [rbp + 1184]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1184], rsp
                        mov              rbp, rsp
                        add              rbp, -1176
                                                                                        jmp   n170_match_lit_α
n159_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              r14d, eax
                                                                                        je    n170_match_lit_β
                        mov              rbp, qword ptr [rbp + 1176]
                        mov              eax, dword ptr [rbp + 1176]
                        add              eax, 1
                        mov              dword ptr [rbp + 1176], eax
                        mov              dword ptr [rbp + 1172], r14d
                                                                                        jmp   n160_match_lit_α
n159_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1176]
                        lea              rsp, [rbp + 1256]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1176]
                        test             ecx, ecx
                                                                                        jz    .Lx480_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1176], ecx
                        mov              qword ptr [rbp + 1184], rax
                        lea              rbp, [rax + -1176]
                                                                                        jmp   n170_match_lit_β
.Lx480_2:
                        mov              r14d, dword ptr [rbp + 1168]
                        mov              rsp, qword ptr [rbp + 1192]
                                                                                        jmp   n158_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n160_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n159_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n159_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n161_lit_integer_α
n160_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n159_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:
                        mov              qword ptr [rsp + 1248], 3                      # result
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rsp + 1256], rax
                                                                                        jmp   n162_match_rpos_α
.Lx483_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n162_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n160_match_lit_β
                                                                                        jmp   n163_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n163_match_end_α:
                        mov              rax, qword ptr [rbp + 1032]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1040]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx486_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx486_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx486_1:
                        test             rax, rax
                                                                                        je    .Lx486_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx486_3]
                        lea              rdx, [rip + .Lx486_4]
                                                                                        jmp   rax
.Lx486_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx486_1
.Lx486_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx486_1
.Lx486_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx486_6:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx486_6
                        mov              r13, qword ptr [rbp + 1072]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1080]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1088]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1096]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1064]                    # old_rbp
                                                                                        jmp   n164_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_end_α:
                        add              rsp, 1280
                                                                                        jmp   n165_statement_begin_α
#=======================================================================================================================
# A3      OUTPUT = "T3 MATCH"             :(N3)
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_begin_α:
                                                                                        jmp   n166_lit_string_α
n165_statement_begin_β:
                                                                                        jmp   n176_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n167_assign_α
.Lx491_0:
                        .quad            .Lx491_0_s
.Lx491_0_s:
                        .string          "T3 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n167_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx492_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n168_statement_end_α
.Lx492_0:
                        .quad            .Lx492_0_s
.Lx492_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n176_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:
                        mov              qword ptr [rsp + 1232], 2                      # result
                        mov              dword ptr [rsp + 1236], 5
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rsp + 1240], rax
                                                                                        jmp   main_γ
n169_lit_string_β:
                                                                                        jmp   main_ω
.Lx495_0:
                        .quad            .Lx495_0_s
.Lx495_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n170_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n159_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n159_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n171_match_defer_α
n170_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n159_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n171_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx498_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx498_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx498_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx498_10
.Lx498_9:
                        xor              eax, eax
.Lx498_10:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rax
.Lx498_11:
                        test             rax, rax
                                                                                        jz    .Lx498_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx498_4]
                        lea              rdx, [rip + .Lx498_5]
                                                                                        jmp   rax
.Lx498_4:
                                                                                        jmp   n159_match_arbno_as
.Lx498_5:
                                                                                        jmp   n170_match_lit_β
.Lx498_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx498_2:
                        test             rax, rax
                                                                                        je    .Lx498_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx498_7]
                        lea              rdx, [rip + .Lx498_8]
                                                                                        jmp   rax
.Lx498_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx498_2
.Lx498_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx498_2
.Lx498_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n170_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx498_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n159_match_arbno_as
.Lx498_6:
                        add              rsp, 16
                                                                                        jmp   n170_match_lit_β
n171_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B3      OUTPUT = "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_begin_α:
                                                                                        jmp   n173_lit_string_α
n172_statement_begin_β:
                                                                                        jmp   n176_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx501_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n174_assign_α
.Lx501_0:
                        .quad            .Lx501_0_s
.Lx501_0_s:
                        .string          "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n174_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx502_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n175_statement_end_α
.Lx502_0:
                        .quad            .Lx502_0_s
.Lx502_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n176_statement_begin_α
#=======================================================================================================================
# N3      S4 POS(0) "(" *ITEM ARBNO("," *ITEM) "," *ITEM ")" RPOS(0)  :S(A4)F(B4)
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_begin_α:
                                                                                        jmp   n177_var_α
n176_statement_begin_β:
                                                                                        jmp   n198_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:
                        sub              rsp, 1616
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # S4
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n178_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n178_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 1376], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1384], r14                    # outer_δ
                        mov              qword ptr [rbp + 1392], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1400], rax                    # cap_gen
                        mov              qword ptr [rbp + 1368], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 1344], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1336], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1328], 0                      # start_δ
.Lx509_0:
                        mov              r14d, dword ptr [rbp + 1328]
                                                                                        jmp   n179_lit_integer_α
n178_match_begin_β:
                        add              dword ptr [rbp + 1328], 1
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, r15d
                                                                                        jg    .Lx509_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx509_1
                                                                                        jmp   .Lx509_0
.Lx509_1:
                        mov              rax, qword ptr [rbp + 1336]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1344]
.Lx509_2:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx509_2
                        mov              r13, qword ptr [rbp + 1376]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1384]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1392]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1400]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1368]                    # old_rbp
                        add              rsp, 1616
                                                                                        jmp   n198_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:
                        mov              qword ptr [rsp + 1408], 3                      # result
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rsp + 1416], rax
                                                                                        jmp   n180_match_pos_α
.Lx510_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n180_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n178_match_begin_β
                                                                                        jmp   n181_match_lit_α
n180_match_pos_β:
                                                                                        jmp   n178_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n181_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n178_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n178_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n182_match_defer_α
n181_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n178_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n182_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx514_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx514_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx514_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx514_10
.Lx514_9:
                        xor              eax, eax
.Lx514_10:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              qword ptr [rsi + 0], rax
.Lx514_11:
                        test             rax, rax
                                                                                        jz    .Lx514_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx514_4]
                        lea              rdx, [rip + .Lx514_5]
                                                                                        jmp   rax
.Lx514_4:
                                                                                        jmp   n183_match_arbno_α
.Lx514_5:
                                                                                        jmp   n181_match_lit_β
.Lx514_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
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
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx514_2
.Lx514_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx514_2
.Lx514_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n181_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx514_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n183_match_arbno_α
.Lx514_6:
                        add              rsp, 16
                                                                                        jmp   n181_match_lit_β
n182_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n183_match_arbno_α:
                        mov              dword ptr [rbp + 1472], r14d
                        mov              dword ptr [rbp + 1476], r14d
                        mov              dword ptr [rbp + 1480], 0
                        mov              qword ptr [rbp + 1496], rsp
                        mov              qword ptr [rbp + 1488], 0
                                                                                        jmp   n184_match_lit_α
n183_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1476]
                        mov              rax, qword ptr [rbp + 1488]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1488], rsp
                        mov              rbp, rsp
                        add              rbp, -1480
                                                                                        jmp   n196_match_lit_α
n183_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              r14d, eax
                                                                                        je    n196_match_lit_β
                        mov              rbp, qword ptr [rbp + 1480]
                        mov              eax, dword ptr [rbp + 1480]
                        add              eax, 1
                        mov              dword ptr [rbp + 1480], eax
                        mov              dword ptr [rbp + 1476], r14d
                                                                                        jmp   n184_match_lit_α
n183_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1496]
                        mov              rdx, qword ptr [rbp + 1480]
                        lea              rsp, [rbp + 1560]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1480]
                        test             ecx, ecx
                                                                                        jz    .Lx516_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1480], ecx
                        mov              qword ptr [rbp + 1488], rax
                        lea              rbp, [rax + -1480]
                                                                                        jmp   n196_match_lit_β
.Lx516_2:
                        mov              r14d, dword ptr [rbp + 1472]
                        mov              rsp, qword ptr [rbp + 1496]
                                                                                        jmp   n182_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n184_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n183_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n183_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n185_match_defer_α
n184_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n183_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n185_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx519_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx519_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx519_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx519_10
.Lx519_9:
                        xor              eax, eax
.Lx519_10:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              qword ptr [rsi + 0], rax
.Lx519_11:
                        test             rax, rax
                                                                                        jz    .Lx519_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx519_4]
                        lea              rdx, [rip + .Lx519_5]
                                                                                        jmp   rax
.Lx519_4:
                                                                                        jmp   n186_match_lit_α
.Lx519_5:
                                                                                        jmp   n184_match_lit_β
.Lx519_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx519_2:
                        test             rax, rax
                                                                                        je    .Lx519_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx519_7]
                        lea              rdx, [rip + .Lx519_8]
                                                                                        jmp   rax
.Lx519_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx519_2
.Lx519_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx519_2
.Lx519_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n184_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx519_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n186_match_lit_α
.Lx519_6:
                        add              rsp, 16
                                                                                        jmp   n184_match_lit_β
n185_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n186_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n185_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n185_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n187_lit_integer_α
n186_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n185_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:
                        mov              qword ptr [rsp + 1584], 3                      # result
                        mov              rax, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rsp + 1592], rax
                                                                                        jmp   n188_match_rpos_α
.Lx522_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n188_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n186_match_lit_β
                                                                                        jmp   n189_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n189_match_end_α:
                        mov              rax, qword ptr [rbp + 1336]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1344]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx525_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx525_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx525_1:
                        test             rax, rax
                                                                                        je    .Lx525_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx525_3]
                        lea              rdx, [rip + .Lx525_4]
                                                                                        jmp   rax
.Lx525_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx525_1
.Lx525_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx525_1
.Lx525_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx525_6:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx525_6
                        mov              r13, qword ptr [rbp + 1376]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1384]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1392]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1400]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1368]                    # old_rbp
                                                                                        jmp   n190_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_end_α:
                        add              rsp, 1616
                                                                                        jmp   n191_statement_begin_α
#=======================================================================================================================
# A4      OUTPUT = "T4 MATCH"             :(N4)
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_begin_α:
                                                                                        jmp   n192_lit_string_α
n191_statement_begin_β:
                                                                                        jmp   n202_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n193_assign_α
.Lx530_0:
                        .quad            .Lx530_0_s
.Lx530_0_s:
                        .string          "T4 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n193_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx531_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n194_statement_end_α
.Lx531_0:
                        .quad            .Lx531_0_s
.Lx531_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n202_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rsp + 1536], 2                      # result
                        mov              dword ptr [rsp + 1540], 5
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rsp + 1544], rax
                                                                                        jmp   main_γ
n195_lit_string_β:
                                                                                        jmp   main_ω
.Lx534_0:
                        .quad            .Lx534_0_s
.Lx534_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n196_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n183_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n183_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n197_match_defer_α
n196_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n183_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n197_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx537_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx537_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx537_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx537_10
.Lx537_9:
                        xor              eax, eax
.Lx537_10:
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              qword ptr [rsi + 0], rax
.Lx537_11:
                        test             rax, rax
                                                                                        jz    .Lx537_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx537_4]
                        lea              rdx, [rip + .Lx537_5]
                                                                                        jmp   rax
.Lx537_4:
                                                                                        jmp   n183_match_arbno_as
.Lx537_5:
                                                                                        jmp   n196_match_lit_β
.Lx537_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx537_2:
                        test             rax, rax
                                                                                        je    .Lx537_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx537_7]
                        lea              rdx, [rip + .Lx537_8]
                                                                                        jmp   rax
.Lx537_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx537_2
.Lx537_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx537_2
.Lx537_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n196_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx537_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n183_match_arbno_as
.Lx537_6:
                        add              rsp, 16
                                                                                        jmp   n196_match_lit_β
n197_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B4      OUTPUT = "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_begin_α:
                                                                                        jmp   n199_lit_string_α
n198_statement_begin_β:
                                                                                        jmp   n202_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n200_assign_α
.Lx540_0:
                        .quad            .Lx540_0_s
.Lx540_0_s:
                        .string          "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n200_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx541_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n201_statement_end_α
.Lx541_0:
                        .quad            .Lx541_0_s
.Lx541_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n202_statement_begin_α
#=======================================================================================================================
# N4      S5 POS(0) "a" *ITEM2 ARBNO("," *ITEM2) "z" RPOS(0)  :S(A5)F(B5)
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_begin_α:
                                                                                        jmp   n203_var_α
n202_statement_begin_β:
                                                                                        jmp   n222_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:
                        sub              rsp, 1920
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # S5
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n204_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n204_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 1712], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1720], r14                    # outer_δ
                        mov              qword ptr [rbp + 1728], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1736], rax                    # cap_gen
                        mov              qword ptr [rbp + 1704], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 1680], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1672], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1664], 0                      # start_δ
.Lx548_0:
                        mov              r14d, dword ptr [rbp + 1664]
                                                                                        jmp   n205_lit_integer_α
n204_match_begin_β:
                        add              dword ptr [rbp + 1664], 1
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, r15d
                                                                                        jg    .Lx548_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx548_1
                                                                                        jmp   .Lx548_0
.Lx548_1:
                        mov              rax, qword ptr [rbp + 1672]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1680]
.Lx548_2:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx548_2
                        mov              r13, qword ptr [rbp + 1712]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1720]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1728]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1736]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1704]                    # old_rbp
                        add              rsp, 1920
                                                                                        jmp   n222_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_integer_α:
                        mov              qword ptr [rsp + 1744], 3                      # result
                        mov              rax, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rsp + 1752], rax
                                                                                        jmp   n206_match_pos_α
.Lx549_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n206_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n204_match_begin_β
                                                                                        jmp   n207_match_lit_α
n206_match_pos_β:
                                                                                        jmp   n204_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n207_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n204_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n204_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n208_match_defer_α
n207_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n204_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n208_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx553_11
                        mov              rax, qword ptr [1879052304]                    # ITEM2
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx553_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx553_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx553_10
.Lx553_9:
                        xor              eax, eax
.Lx553_10:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              qword ptr [rsi + 0], rax
.Lx553_11:
                        test             rax, rax
                                                                                        jz    .Lx553_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx553_4]
                        lea              rdx, [rip + .Lx553_5]
                                                                                        jmp   rax
.Lx553_4:
                                                                                        jmp   n209_match_arbno_α
.Lx553_5:
                                                                                        jmp   n207_match_lit_β
.Lx553_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx553_2:
                        test             rax, rax
                                                                                        je    .Lx553_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx553_7]
                        lea              rdx, [rip + .Lx553_8]
                                                                                        jmp   rax
.Lx553_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx553_2
.Lx553_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx553_2
.Lx553_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n207_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx553_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n209_match_arbno_α
.Lx553_6:
                        add              rsp, 16
                                                                                        jmp   n207_match_lit_β
n208_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n209_match_arbno_α:
                        mov              dword ptr [rbp + 1808], r14d
                        mov              dword ptr [rbp + 1812], r14d
                        mov              dword ptr [rbp + 1816], 0
                        mov              qword ptr [rbp + 1832], rsp
                        mov              qword ptr [rbp + 1824], 0
                                                                                        jmp   n210_match_lit_α
n209_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1812]
                        mov              rax, qword ptr [rbp + 1824]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1824], rsp
                        mov              rbp, rsp
                        add              rbp, -1816
                                                                                        jmp   n220_match_lit_α
n209_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              r14d, eax
                                                                                        je    n220_match_lit_β
                        mov              rbp, qword ptr [rbp + 1816]
                        mov              eax, dword ptr [rbp + 1816]
                        add              eax, 1
                        mov              dword ptr [rbp + 1816], eax
                        mov              dword ptr [rbp + 1812], r14d
                                                                                        jmp   n210_match_lit_α
n209_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1832]
                        mov              rdx, qword ptr [rbp + 1816]
                        lea              rsp, [rbp + 1896]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1816]
                        test             ecx, ecx
                                                                                        jz    .Lx555_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1816], ecx
                        mov              qword ptr [rbp + 1824], rax
                        lea              rbp, [rax + -1816]
                                                                                        jmp   n220_match_lit_β
.Lx555_2:
                        mov              r14d, dword ptr [rbp + 1808]
                        mov              rsp, qword ptr [rbp + 1832]
                                                                                        jmp   n208_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n210_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n209_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 122
                                                                                        jne   n209_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n211_lit_integer_α
n210_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n209_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_integer_α:
                        mov              qword ptr [rsp + 1888], 3                      # result
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rsp + 1896], rax
                                                                                        jmp   n212_match_rpos_α
.Lx558_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n212_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n210_match_lit_β
                                                                                        jmp   n213_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n213_match_end_α:
                        mov              rax, qword ptr [rbp + 1672]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1680]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx561_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx561_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx561_1:
                        test             rax, rax
                                                                                        je    .Lx561_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx561_3]
                        lea              rdx, [rip + .Lx561_4]
                                                                                        jmp   rax
.Lx561_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx561_1
.Lx561_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx561_1
.Lx561_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx561_6:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx561_6
                        mov              r13, qword ptr [rbp + 1712]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1720]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1728]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1736]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1704]                    # old_rbp
                                                                                        jmp   n214_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_end_α:
                        add              rsp, 1920
                                                                                        jmp   n215_statement_begin_α
#=======================================================================================================================
# A5      OUTPUT = "T5 MATCH"             :(N5)
#-----------------------------------------------------------------------------------------------------------------------
n215_statement_begin_α:
                                                                                        jmp   n216_lit_string_α
n215_statement_begin_β:
                                                                                        jmp   n226_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx566_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n217_assign_α
.Lx566_0:
                        .quad            .Lx566_0_s
.Lx566_0_s:
                        .string          "T5 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n217_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx567_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n218_statement_end_α
.Lx567_0:
                        .quad            .Lx567_0_s
.Lx567_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n226_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        mov              qword ptr [rsp + 1872], 2                      # result
                        mov              dword ptr [rsp + 1876], 5
                        mov              rax, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rsp + 1880], rax
                                                                                        jmp   main_γ
n219_lit_string_β:
                                                                                        jmp   main_ω
.Lx570_0:
                        .quad            .Lx570_0_s
.Lx570_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n220_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n209_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n209_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n221_match_defer_α
n220_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n209_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n221_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx573_11
                        mov              rax, qword ptr [1879052304]                    # ITEM2
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx573_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx573_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx573_10
.Lx573_9:
                        xor              eax, eax
.Lx573_10:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              qword ptr [rsi + 0], rax
.Lx573_11:
                        test             rax, rax
                                                                                        jz    .Lx573_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx573_4]
                        lea              rdx, [rip + .Lx573_5]
                                                                                        jmp   rax
.Lx573_4:
                                                                                        jmp   n209_match_arbno_as
.Lx573_5:
                                                                                        jmp   n220_match_lit_β
.Lx573_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx573_2:
                        test             rax, rax
                                                                                        je    .Lx573_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx573_7]
                        lea              rdx, [rip + .Lx573_8]
                                                                                        jmp   rax
.Lx573_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx573_2
.Lx573_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx573_2
.Lx573_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n220_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx573_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n209_match_arbno_as
.Lx573_6:
                        add              rsp, 16
                                                                                        jmp   n220_match_lit_β
n221_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B5      OUTPUT = "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_begin_α:
                                                                                        jmp   n223_lit_string_α
n222_statement_begin_β:
                                                                                        jmp   n226_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n224_assign_α
.Lx576_0:
                        .quad            .Lx576_0_s
.Lx576_0_s:
                        .string          "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n224_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx577_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n225_statement_end_α
.Lx577_0:
                        .quad            .Lx577_0_s
.Lx577_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n226_statement_begin_α
#=======================================================================================================================
# N5      S6 POS(0) LISTP RPOS(0)         :S(A6)F(B6)
#-----------------------------------------------------------------------------------------------------------------------
n226_statement_begin_α:
                                                                                        jmp   n227_var_α
n226_statement_begin_β:
                                                                                        jmp   n240_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:
                        sub              rsp, 2112
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # S6
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n228_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n228_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 2016], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2024], r14                    # outer_δ
                        mov              qword ptr [rbp + 2032], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2040], rax                    # cap_gen
                        mov              qword ptr [rbp + 2008], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 1984], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1976], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1968], 0                      # start_δ
.Lx584_0:
                        mov              r14d, dword ptr [rbp + 1968]
                                                                                        jmp   n229_lit_integer_α
n228_match_begin_β:
                        add              dword ptr [rbp + 1968], 1
                        mov              eax, dword ptr [rbp + 1968]
                        cmp              eax, r15d
                                                                                        jg    .Lx584_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx584_1
                                                                                        jmp   .Lx584_0
.Lx584_1:
                        mov              rax, qword ptr [rbp + 1976]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1984]
.Lx584_2:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx584_2
                        mov              r13, qword ptr [rbp + 2016]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2024]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2032]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2040]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2008]                    # old_rbp
                        add              rsp, 2112
                                                                                        jmp   n240_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_integer_α:
                        mov              qword ptr [rsp + 2048], 3                      # result
                        mov              rax, qword ptr [rip + .Lx585_0]
                        mov              qword ptr [rsp + 2056], rax
                                                                                        jmp   n230_match_pos_α
.Lx585_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n230_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n228_match_begin_β
                                                                                        jmp   n231_match_patref_α
n230_match_pos_β:
                                                                                        jmp   n228_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n231_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+112]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx587_11
                        mov              rax, qword ptr [1879052336]                    # LISTP
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 8
                                                                                        jne   .Lx587_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx587_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx587_10
.Lx587_9:
                        xor              eax, eax
.Lx587_10:
                        lea              rsi, [rip + g_sno_defer_cells+112]
                        mov              qword ptr [rsi + 0], rax
.Lx587_11:
                        test             rax, rax
                                                                                        jz    .Lx587_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx587_4]
                        lea              rdx, [rip + .Lx587_5]
                                                                                        jmp   rax
.Lx587_4:
                                                                                        jmp   n232_lit_integer_α
.Lx587_5:
                                                                                        jmp   n228_match_begin_β
.Lx587_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx587_2:
                        test             rax, rax
                                                                                        je    .Lx587_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx587_7]
                        lea              rdx, [rip + .Lx587_8]
                                                                                        jmp   rax
.Lx587_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx587_2
.Lx587_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx587_2
.Lx587_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n228_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx587_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n232_lit_integer_α
.Lx587_6:
                        add              rsp, 16
                                                                                        jmp   n228_match_begin_β
n231_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_integer_α:
                        mov              qword ptr [rsp + 2080], 3                      # result
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rsp + 2088], rax
                                                                                        jmp   n233_match_rpos_α
.Lx588_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n233_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n231_match_patref_β
                                                                                        jmp   n234_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n234_match_end_α:
                        mov              rax, qword ptr [rbp + 1976]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1984]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx591_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx591_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx591_1:
                        test             rax, rax
                                                                                        je    .Lx591_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx591_3]
                        lea              rdx, [rip + .Lx591_4]
                                                                                        jmp   rax
.Lx591_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx591_1
.Lx591_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx591_1
.Lx591_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx591_6:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx591_6
                        mov              r13, qword ptr [rbp + 2016]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2024]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2032]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2040]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2008]                    # old_rbp
                                                                                        jmp   n235_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_end_α:
                        add              rsp, 2112
                                                                                        jmp   n236_statement_begin_α
#=======================================================================================================================
# A6      OUTPUT = "T6 MATCH"             :(N6)
#-----------------------------------------------------------------------------------------------------------------------
n236_statement_begin_α:
                                                                                        jmp   n237_lit_string_α
n236_statement_begin_β:
                                                                                        jmp   n244_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx596_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n238_assign_α
.Lx596_0:
                        .quad            .Lx596_0_s
.Lx596_0_s:
                        .string          "T6 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n238_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx597_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n239_statement_end_α
.Lx597_0:
                        .quad            .Lx597_0_s
.Lx597_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n244_statement_begin_α
#=======================================================================================================================
# B6      OUTPUT = "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n240_statement_begin_α:
                                                                                        jmp   n241_lit_string_α
n240_statement_begin_β:
                                                                                        jmp   n244_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n242_assign_α
.Lx602_0:
                        .quad            .Lx602_0_s
.Lx602_0_s:
                        .string          "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n242_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx603_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n243_statement_end_α
.Lx603_0:
                        .quad            .Lx603_0_s
.Lx603_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n243_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n244_statement_begin_α
#=======================================================================================================================
# N6      S7 POS(0) "(" *NEST ARBNO("," *NEST) ")" RPOS(0)  :S(A7)F(B7)
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_begin_α:
                                                                                        jmp   n245_var_α
n244_statement_begin_β:
                                                                                        jmp   n263_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n245_var_α:
                        sub              rsp, 2400
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S7
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n246_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n246_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 2208], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2216], r14                    # outer_δ
                        mov              qword ptr [rbp + 2224], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2232], rax                    # cap_gen
                        mov              qword ptr [rbp + 2200], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 2176], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2168], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2160], 0                      # start_δ
.Lx610_0:
                        mov              r14d, dword ptr [rbp + 2160]
                                                                                        jmp   n247_lit_integer_α
n246_match_begin_β:
                        add              dword ptr [rbp + 2160], 1
                        mov              eax, dword ptr [rbp + 2160]
                        cmp              eax, r15d
                                                                                        jg    .Lx610_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx610_1
                                                                                        jmp   .Lx610_0
.Lx610_1:
                        mov              rax, qword ptr [rbp + 2168]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2176]
.Lx610_2:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx610_2
                        mov              r13, qword ptr [rbp + 2208]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2216]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2224]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2232]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2200]                    # old_rbp
                        add              rsp, 2400
                                                                                        jmp   n263_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_integer_α:
                        mov              qword ptr [rsp + 2240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rsp + 2248], rax
                                                                                        jmp   n248_match_pos_α
.Lx611_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n248_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n246_match_begin_β
                                                                                        jmp   n249_match_lit_α
n248_match_pos_β:
                                                                                        jmp   n246_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n249_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n246_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n246_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n250_match_defer_α
n249_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n246_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n250_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+120]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx615_11
                        mov              rax, qword ptr [1879052320]                    # NEST
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx615_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx615_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx615_10
.Lx615_9:
                        xor              eax, eax
.Lx615_10:
                        lea              rsi, [rip + g_sno_defer_cells+120]
                        mov              qword ptr [rsi + 0], rax
.Lx615_11:
                        test             rax, rax
                                                                                        jz    .Lx615_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx615_4]
                        lea              rdx, [rip + .Lx615_5]
                                                                                        jmp   rax
.Lx615_4:
                                                                                        jmp   n251_match_arbno_α
.Lx615_5:
                                                                                        jmp   n249_match_lit_β
.Lx615_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx615_2:
                        test             rax, rax
                                                                                        je    .Lx615_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx615_7]
                        lea              rdx, [rip + .Lx615_8]
                                                                                        jmp   rax
.Lx615_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx615_2
.Lx615_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx615_2
.Lx615_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n249_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx615_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n251_match_arbno_α
.Lx615_6:
                        add              rsp, 16
                                                                                        jmp   n249_match_lit_β
n250_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n251_match_arbno_α:
                        mov              dword ptr [rbp + 2288], r14d
                        mov              dword ptr [rbp + 2292], r14d
                        mov              dword ptr [rbp + 2296], 0
                        mov              qword ptr [rbp + 2312], rsp
                        mov              qword ptr [rbp + 2304], 0
                                                                                        jmp   n252_match_lit_α
n251_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 2292]
                        mov              rax, qword ptr [rbp + 2304]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 2304], rsp
                        mov              rbp, rsp
                        add              rbp, -2296
                                                                                        jmp   n261_match_lit_α
n251_match_arbno_as:
                        mov              eax, dword ptr [rbp + 2304]
                        cmp              r14d, eax
                                                                                        je    n261_match_lit_β
                        mov              rbp, qword ptr [rbp + 2296]
                        mov              eax, dword ptr [rbp + 2296]
                        add              eax, 1
                        mov              dword ptr [rbp + 2296], eax
                        mov              dword ptr [rbp + 2292], r14d
                                                                                        jmp   n252_match_lit_α
n251_match_arbno_af:
                        mov              rax, qword ptr [rbp + 2312]
                        mov              rdx, qword ptr [rbp + 2296]
                        lea              rsp, [rbp + 2376]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 2296]
                        test             ecx, ecx
                                                                                        jz    .Lx617_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 2296], ecx
                        mov              qword ptr [rbp + 2304], rax
                        lea              rbp, [rax + -2296]
                                                                                        jmp   n261_match_lit_β
.Lx617_2:
                        mov              r14d, dword ptr [rbp + 2288]
                        mov              rsp, qword ptr [rbp + 2312]
                                                                                        jmp   n250_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n252_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n251_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n251_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n253_lit_integer_α
n252_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n251_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_integer_α:
                        mov              qword ptr [rsp + 2368], 3                      # result
                        mov              rax, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rsp + 2376], rax
                                                                                        jmp   n254_match_rpos_α
.Lx620_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n254_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n252_match_lit_β
                                                                                        jmp   n255_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n255_match_end_α:
                        mov              rax, qword ptr [rbp + 2168]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2176]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx623_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx623_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx623_1:
                        test             rax, rax
                                                                                        je    .Lx623_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx623_3]
                        lea              rdx, [rip + .Lx623_4]
                                                                                        jmp   rax
.Lx623_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx623_1
.Lx623_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx623_1
.Lx623_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx623_6:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx623_6
                        mov              r13, qword ptr [rbp + 2208]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2216]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2224]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2232]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2200]                    # old_rbp
                                                                                        jmp   n256_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_end_α:
                        add              rsp, 2400
                                                                                        jmp   n257_statement_begin_α
#=======================================================================================================================
# A7      OUTPUT = "T7 MATCH"             :(N7)
#-----------------------------------------------------------------------------------------------------------------------
n257_statement_begin_α:
                                                                                        jmp   n258_lit_string_α
n257_statement_begin_β:
                                                                                        jmp   n267_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx628_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n259_assign_α
.Lx628_0:
                        .quad            .Lx628_0_s
.Lx628_0_s:
                        .string          "T7 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n259_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx629_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n260_statement_end_α
.Lx629_0:
                        .quad            .Lx629_0_s
.Lx629_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n260_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n267_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n261_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n251_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n251_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n262_match_defer_α
n261_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n251_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n262_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+128]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx634_11
                        mov              rax, qword ptr [1879052320]                    # NEST
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx634_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx634_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx634_10
.Lx634_9:
                        xor              eax, eax
.Lx634_10:
                        lea              rsi, [rip + g_sno_defer_cells+128]
                        mov              qword ptr [rsi + 0], rax
.Lx634_11:
                        test             rax, rax
                                                                                        jz    .Lx634_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx634_4]
                        lea              rdx, [rip + .Lx634_5]
                                                                                        jmp   rax
.Lx634_4:
                                                                                        jmp   n251_match_arbno_as
.Lx634_5:
                                                                                        jmp   n261_match_lit_β
.Lx634_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx634_2:
                        test             rax, rax
                                                                                        je    .Lx634_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx634_7]
                        lea              rdx, [rip + .Lx634_8]
                                                                                        jmp   rax
.Lx634_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx634_2
.Lx634_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx634_2
.Lx634_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n261_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx634_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n251_match_arbno_as
.Lx634_6:
                        add              rsp, 16
                                                                                        jmp   n261_match_lit_β
n262_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B7      OUTPUT = "T7 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n263_statement_begin_α:
                                                                                        jmp   n264_lit_string_α
n263_statement_begin_β:
                                                                                        jmp   n267_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n265_assign_α
.Lx637_0:
                        .quad            .Lx637_0_s
.Lx637_0_s:
                        .string          "T7 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n265_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx638_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n266_statement_end_α
.Lx638_0:
                        .quad            .Lx638_0_s
.Lx638_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n266_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n267_statement_begin_α
#=======================================================================================================================
# N7      S8 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)  :S(A8)F(B8)
#-----------------------------------------------------------------------------------------------------------------------
n267_statement_begin_α:
                                                                                        jmp   n268_var_α
n267_statement_begin_β:
                                                                                        jmp   n287_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:
                        sub              rsp, 2704
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # S8
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n269_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n269_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 2496], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2504], r14                    # outer_δ
                        mov              qword ptr [rbp + 2512], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2520], rax                    # cap_gen
                        mov              qword ptr [rbp + 2488], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 2464], rsp                    # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2456], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2448], 0                      # start_δ
.Lx645_0:
                        mov              r14d, dword ptr [rbp + 2448]
                                                                                        jmp   n270_lit_integer_α
n269_match_begin_β:
                        add              dword ptr [rbp + 2448], 1
                        mov              eax, dword ptr [rbp + 2448]
                        cmp              eax, r15d
                                                                                        jg    .Lx645_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx645_1
                                                                                        jmp   .Lx645_0
.Lx645_1:
                        mov              rax, qword ptr [rbp + 2456]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2464]
.Lx645_2:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx645_2
                        mov              r13, qword ptr [rbp + 2496]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2504]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2512]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2520]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2488]                    # old_rbp
                        add              rsp, 2704
                                                                                        jmp   n287_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_integer_α:
                        mov              qword ptr [rsp + 2528], 3                      # result
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rsp + 2536], rax
                                                                                        jmp   n271_match_pos_α
.Lx646_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n271_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n269_match_begin_β
                                                                                        jmp   n272_match_lit_α
n271_match_pos_β:
                                                                                        jmp   n269_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n272_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n269_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n269_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n273_match_defer_α
n272_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n269_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n273_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+136]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx650_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx650_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx650_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx650_10
.Lx650_9:
                        xor              eax, eax
.Lx650_10:
                        lea              rsi, [rip + g_sno_defer_cells+136]
                        mov              qword ptr [rsi + 0], rax
.Lx650_11:
                        test             rax, rax
                                                                                        jz    .Lx650_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx650_4]
                        lea              rdx, [rip + .Lx650_5]
                                                                                        jmp   rax
.Lx650_4:
                                                                                        jmp   n274_match_arbno_α
.Lx650_5:
                                                                                        jmp   n272_match_lit_β
.Lx650_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx650_2:
                        test             rax, rax
                                                                                        je    .Lx650_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx650_7]
                        lea              rdx, [rip + .Lx650_8]
                                                                                        jmp   rax
.Lx650_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx650_2
.Lx650_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx650_2
.Lx650_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n272_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx650_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n274_match_arbno_α
.Lx650_6:
                        add              rsp, 16
                                                                                        jmp   n272_match_lit_β
n273_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n274_match_arbno_α:
                        mov              dword ptr [rbp + 2592], r14d
                        mov              dword ptr [rbp + 2596], r14d
                        mov              dword ptr [rbp + 2600], 0
                        mov              qword ptr [rbp + 2616], rsp
                        mov              qword ptr [rbp + 2608], 0
                                                                                        jmp   n275_match_lit_α
n274_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 2596]
                        mov              rax, qword ptr [rbp + 2608]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 2608], rsp
                        mov              rbp, rsp
                        add              rbp, -2600
                                                                                        jmp   n285_match_lit_α
n274_match_arbno_as:
                        mov              eax, dword ptr [rbp + 2608]
                        cmp              r14d, eax
                                                                                        je    n285_match_lit_β
                        mov              rbp, qword ptr [rbp + 2600]
                        mov              eax, dword ptr [rbp + 2600]
                        add              eax, 1
                        mov              dword ptr [rbp + 2600], eax
                        mov              dword ptr [rbp + 2596], r14d
                                                                                        jmp   n275_match_lit_α
n274_match_arbno_af:
                        mov              rax, qword ptr [rbp + 2616]
                        mov              rdx, qword ptr [rbp + 2600]
                        lea              rsp, [rbp + 2680]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 2600]
                        test             ecx, ecx
                                                                                        jz    .Lx652_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 2600], ecx
                        mov              qword ptr [rbp + 2608], rax
                        lea              rbp, [rax + -2600]
                                                                                        jmp   n285_match_lit_β
.Lx652_2:
                        mov              r14d, dword ptr [rbp + 2592]
                        mov              rsp, qword ptr [rbp + 2616]
                                                                                        jmp   n273_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n275_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n274_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n274_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n276_lit_integer_α
n275_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n274_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_integer_α:
                        mov              qword ptr [rsp + 2672], 3                      # result
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rsp + 2680], rax
                                                                                        jmp   n277_match_rpos_α
.Lx655_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n277_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n275_match_lit_β
                                                                                        jmp   n278_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n278_match_end_α:
                        mov              rax, qword ptr [rbp + 2456]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2464]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
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
.Lx658_6:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx658_6
                        mov              r13, qword ptr [rbp + 2496]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2504]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2512]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2520]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2488]                    # old_rbp
                                                                                        jmp   n279_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n279_statement_end_α:
                        add              rsp, 2704
                                                                                        jmp   n280_statement_begin_α
#=======================================================================================================================
# A8      OUTPUT = "T8 MATCH"             :(N8)
#-----------------------------------------------------------------------------------------------------------------------
n280_statement_begin_α:
                                                                                        jmp   n281_lit_string_α
n280_statement_begin_β:
                                                                                        jmp   n291_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n282_assign_α
.Lx663_0:
                        .quad            .Lx663_0_s
.Lx663_0_s:
                        .string          "T8 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n282_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx664_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n283_statement_end_α
.Lx664_0:
                        .quad            .Lx664_0_s
.Lx664_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n283_statement_end_α:
                                                                                        jmp   n291_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:
                        mov              qword ptr [rsp + 2656], 2                      # result
                        mov              dword ptr [rsp + 2660], 5
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rsp + 2664], rax
                                                                                        jmp   main_γ
n284_lit_string_β:
                                                                                        jmp   main_ω
.Lx667_0:
                        .quad            .Lx667_0_s
.Lx667_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n285_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n274_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n274_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n286_match_defer_α
n285_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n274_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n286_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+144]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx670_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx670_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx670_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx670_10
.Lx670_9:
                        xor              eax, eax
.Lx670_10:
                        lea              rsi, [rip + g_sno_defer_cells+144]
                        mov              qword ptr [rsi + 0], rax
.Lx670_11:
                        test             rax, rax
                                                                                        jz    .Lx670_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx670_4]
                        lea              rdx, [rip + .Lx670_5]
                                                                                        jmp   rax
.Lx670_4:
                                                                                        jmp   n274_match_arbno_as
.Lx670_5:
                                                                                        jmp   n285_match_lit_β
.Lx670_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx670_2:
                        test             rax, rax
                                                                                        je    .Lx670_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx670_7]
                        lea              rdx, [rip + .Lx670_8]
                                                                                        jmp   rax
.Lx670_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx670_2
.Lx670_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx670_2
.Lx670_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n285_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx670_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n274_match_arbno_as
.Lx670_6:
                        add              rsp, 16
                                                                                        jmp   n285_match_lit_β
n286_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B8      OUTPUT = "T8 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n287_statement_begin_α:
                                                                                        jmp   n288_lit_string_α
n287_statement_begin_β:
                                                                                        jmp   n291_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx673_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n289_assign_α
.Lx673_0:
                        .quad            .Lx673_0_s
.Lx673_0_s:
                        .string          "T8 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n289_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx674_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n290_statement_end_α
.Lx674_0:
                        .quad            .Lx674_0_s
.Lx674_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n290_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n291_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n291_statement_begin_α:
                                                                                        jmp   n292_statement_end_α
n291_statement_begin_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n292_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n293_goto_α:
                                                                                        jmp   n117_statement_begin_α
n293_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n294_goto_α:
                                                                                        jmp   n124_statement_begin_α
n294_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n295_goto_α:
                                                                                        jmp   n128_statement_begin_α
n295_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n296_goto_α:
                                                                                        jmp   n141_statement_begin_α
n296_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n297_goto_α:
                                                                                        jmp   n148_statement_begin_α
n297_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n298_goto_α:
                                                                                        jmp   n152_statement_begin_α
n298_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n299_goto_α:
                                                                                        jmp   n165_statement_begin_α
n299_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n300_goto_α:
                                                                                        jmp   n172_statement_begin_α
n300_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n301_goto_α:
                                                                                        jmp   n176_statement_begin_α
n301_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n302_goto_α:
                                                                                        jmp   n191_statement_begin_α
n302_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n303_goto_α:
                                                                                        jmp   n198_statement_begin_α
n303_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n304_goto_α:
                                                                                        jmp   n202_statement_begin_α
n304_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n305_goto_α:
                                                                                        jmp   n215_statement_begin_α
n305_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n306_goto_α:
                                                                                        jmp   n222_statement_begin_α
n306_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n307_goto_α:
                                                                                        jmp   n226_statement_begin_α
n307_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n308_goto_α:
                                                                                        jmp   n236_statement_begin_α
n308_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n309_goto_α:
                                                                                        jmp   n240_statement_begin_α
n309_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n310_goto_α:
                                                                                        jmp   n244_statement_begin_α
n310_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n311_goto_α:
                                                                                        jmp   n257_statement_begin_α
n311_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n312_goto_α:
                                                                                        jmp   n263_statement_begin_α
n312_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n313_goto_α:
                                                                                        jmp   n267_statement_begin_α
n313_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n314_goto_α:
                                                                                        jmp   n280_statement_begin_α
n314_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n315_goto_α:
                                                                                        jmp   n287_statement_begin_α
n315_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n316_goto_α:
                                                                                        jmp   n291_statement_begin_α
n316_goto_β:
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
