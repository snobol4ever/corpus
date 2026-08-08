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
                        sub              rsp, 224
                        mov              qword ptr [rsp + 200], rcx
                        mov              qword ptr [rsp + 208], rdx
                        mov              qword ptr [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 192], r8
                        mov              dword ptr [rsp + 184], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + proc_PAT$3_ω]
                        mov              qword ptr [rbp + 160], rax
#-----------------------------------------------------------------------------------------------------------------------
n34_match_lit_α:
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
                                                                                        jle   .Lx41_239
                        add              rsp, 144
                                                                                        jmp   proc_PAT$3_scanfail
.Lx41_239:
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        je    .Lx41_240
                        add              rsp, 144
                                                                                        jmp   proc_PAT$3_scanfail
.Lx41_240:
                        add              r14d, 1
                                                                                        jmp   n35_match_defer_α
n34_match_lit_β:
                        sub              r14d, 1
                        add              rsp, 144
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
                        mov              qword ptr [rbp + 96], rbp
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
                        add              rbp, -88
                                                                                        jmp   n38_match_lit_α
n36_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n38_match_lit_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   n37_match_lit_α
n36_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 168]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx44_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n38_match_lit_β
.Lx44_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rbp, qword ptr [rbp + 96]
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
                        add              rsp, 144
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
                        cmp              qword ptr [rbp + 192], 1
                                                                                        jne   .Lx50_0
                        mov              ecx, dword ptr [rbp + 184]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx50_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 192], 1
                                                                                        jne   .Lx51_0
                        mov              eax, dword ptr [rbp + 184]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx51_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx51_0
                        mov              dword ptr [rbp + 184], eax
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
                                                                                        jmp   qword ptr [rbp + 160]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              rbp, qword ptr [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, qword ptr [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, qword ptr [rbp + 216]
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
                        mov              esi, 176
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
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n54_call_α
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
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
.Lrkfnzd323:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd323]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx322_240
                                                                                        jmp   n56_statement_end_α
.Lx322_240:
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
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n59_call_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
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
.Lrkfnzd331:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd331]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx330_240
                                                                                        jmp   n61_statement_end_α
.Lx330_240:
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
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n64_call_α
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
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
.Lrkfnzd339:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd339]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx338_240
                                                                                        jmp   n66_statement_end_α
.Lx338_240:
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
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n69_call_α
.Lx345_0:
                        .quad            .Lx345_0_s
.Lx345_0_s:
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
.Lrkfnzd347:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd347]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx346_240
                                                                                        jmp   n71_statement_end_α
.Lx346_240:
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
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n74_assign_α
.Lx353_0:
                        .quad            .Lx353_0_s
.Lx353_0_s:
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
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n78_assign_α
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
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
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n82_assign_α
.Lx365_0:
                        .quad            .Lx365_0_s
.Lx365_0_s:
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
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n86_assign_α
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
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
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n90_assign_α
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
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
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n94_assign_α
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
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
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n98_assign_α
.Lx389_0:
                        .quad            .Lx389_0_s
.Lx389_0_s:
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
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n102_assign_α
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
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
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 432], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 416], 0                       # start_δ
.Lx403_0:
                        mov              r14d, dword ptr [rbp + 416]
                                                                                        jmp   n107_lit_integer_α
n106_match_begin_β:
                        add              dword ptr [rbp + 416], 1
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, r15d
                                                                                        jg    .Lx403_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx403_1
                                                                                        jmp   .Lx403_0
.Lx403_1:
n106_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 432]
                        mov              r13, qword ptr [rbp + 464]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 472]                     # outer_δ
                        mov              r15, qword ptr [rbp + 480]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 488]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 456]                     # old_rbp
                        add              rsp, 688
                                                                                        jmp   n124_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:
                        mov              qword ptr [rsp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n108_match_pos_α
.Lx404_0:
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
                                                                                        jne   .Lx408_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx408_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx408_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx408_10
.Lx408_9:
                        xor              eax, eax
.Lx408_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx408_11:
                        test             rax, rax
                                                                                        jz    .Lx408_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx408_4]
                        lea              rdx, [rip + .Lx408_5]
                                                                                        jmp   rax
.Lx408_4:
                                                                                        jmp   n111_match_arbno_α
.Lx408_5:
                                                                                        jmp   n109_match_lit_β
.Lx408_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx408_2:
                        test             rax, rax
                                                                                        je    .Lx408_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx408_7]
                        lea              rdx, [rip + .Lx408_8]
                                                                                        jmp   rax
.Lx408_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx408_2
.Lx408_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx408_2
.Lx408_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n109_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx408_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n111_match_arbno_α
.Lx408_6:
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
                        mov              qword ptr [rbp + 592], rbp
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
                        add              rbp, -584
                                                                                        jmp   n122_match_lit_α
n111_match_arbno_as:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              r14d, eax
                                                                                        je    n122_match_lit_β
                        mov              rbp, qword ptr [rbp + 584]
                        mov              eax, dword ptr [rbp + 568]
                        add              eax, 1
                        mov              dword ptr [rbp + 568], eax
                        mov              dword ptr [rbp + 564], r14d
                                                                                        jmp   n112_match_lit_α
n111_match_arbno_af:
                        mov              rax, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              rsp, [rbp + 664]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 568]
                        test             ecx, ecx
                                                                                        jz    .Lx410_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 568], ecx
                        mov              qword ptr [rbp + 576], rax
                        lea              rbp, [rax + -584]
                                                                                        jmp   n122_match_lit_β
.Lx410_2:
                        mov              r14d, dword ptr [rbp + 560]
                        mov              rbp, qword ptr [rbp + 592]
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
                        mov              qword ptr [rsp + 656], 3                       # result
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 664], rax
                                                                                        jmp   n114_match_rpos_α
.Lx413_0:
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
                        mov              r10, r12
.Lx416_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx416_9
                        mov              rsp, qword ptr [rbp + 432]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx416_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx416_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx416_1:
                        test             rax, rax
                                                                                        je    .Lx416_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx416_3]
                        lea              rdx, [rip + .Lx416_4]
                                                                                        jmp   rax
.Lx416_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx416_1
.Lx416_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx416_1
.Lx416_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
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
                        add              rsp, 688
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
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n119_assign_α
.Lx421_0:
                        .quad            .Lx421_0_s
.Lx421_0_s:
                        .string          "T1 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx422_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n120_statement_end_α
.Lx422_0:
                        .quad            .Lx422_0_s
.Lx422_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n128_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:
                        mov              qword ptr [rsp + 640], 2                       # result
                        mov              dword ptr [rsp + 644], 5
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rsp + 648], rax
                                                                                        jmp   main_γ
n121_lit_string_β:
                                                                                        jmp   main_ω
.Lx425_0:
                        .quad            .Lx425_0_s
.Lx425_0_s:
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
                                                                                        jne   .Lx428_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx428_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx428_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx428_10
.Lx428_9:
                        xor              eax, eax
.Lx428_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx428_11:
                        test             rax, rax
                                                                                        jz    .Lx428_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx428_4]
                        lea              rdx, [rip + .Lx428_5]
                                                                                        jmp   rax
.Lx428_4:
                                                                                        jmp   n111_match_arbno_as
.Lx428_5:
                                                                                        jmp   n122_match_lit_β
.Lx428_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx428_2:
                        test             rax, rax
                                                                                        je    .Lx428_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx428_7]
                        lea              rdx, [rip + .Lx428_8]
                                                                                        jmp   rax
.Lx428_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx428_2
.Lx428_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx428_2
.Lx428_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n122_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx428_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n111_match_arbno_as
.Lx428_6:
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
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n126_assign_α
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n126_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx432_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n127_statement_end_α
.Lx432_0:
                        .quad            .Lx432_0_s
.Lx432_0_s:
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
                        sub              rsp, 1008
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
                        mov              qword ptr [rbp + 784], r13                     # outer_Σ
                        mov              qword ptr [rbp + 792], r14                     # outer_δ
                        mov              qword ptr [rbp + 800], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 808], rax                     # cap_gen
                        mov              qword ptr [rbp + 776], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 752], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 736], 0                       # start_δ
.Lx439_0:
                        mov              r14d, dword ptr [rbp + 736]
                                                                                        jmp   n131_lit_integer_α
n130_match_begin_β:
                        add              dword ptr [rbp + 736], 1
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, r15d
                                                                                        jg    .Lx439_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx439_1
                                                                                        jmp   .Lx439_0
.Lx439_1:
n130_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 752]
                        mov              r13, qword ptr [rbp + 784]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 792]                     # outer_δ
                        mov              r15, qword ptr [rbp + 800]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 808]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 776]                     # old_rbp
                        add              rsp, 1008
                                                                                        jmp   n148_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:
                        mov              qword ptr [rsp + 816], 3                       # result
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rsp + 824], rax
                                                                                        jmp   n132_match_pos_α
.Lx440_0:
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
                                                                                        jne   .Lx444_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx444_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx444_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx444_10
.Lx444_9:
                        xor              eax, eax
.Lx444_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx444_11:
                        test             rax, rax
                                                                                        jz    .Lx444_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx444_4]
                        lea              rdx, [rip + .Lx444_5]
                                                                                        jmp   rax
.Lx444_4:
                                                                                        jmp   n135_match_arbno_α
.Lx444_5:
                                                                                        jmp   n133_match_lit_β
.Lx444_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx444_2:
                        test             rax, rax
                                                                                        je    .Lx444_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx444_7]
                        lea              rdx, [rip + .Lx444_8]
                                                                                        jmp   rax
.Lx444_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx444_2
.Lx444_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx444_2
.Lx444_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n133_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx444_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n135_match_arbno_α
.Lx444_6:
                        add              rsp, 16
                                                                                        jmp   n133_match_lit_β
n134_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n135_match_arbno_α:
                        mov              dword ptr [rbp + 880], r14d
                        mov              dword ptr [rbp + 884], r14d
                        mov              dword ptr [rbp + 888], 0
                        mov              qword ptr [rbp + 904], rsp
                        mov              qword ptr [rbp + 912], rbp
                        mov              qword ptr [rbp + 896], 0
                                                                                        jmp   n136_match_lit_α
n135_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 884]
                        mov              rax, qword ptr [rbp + 896]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 896], rsp
                        mov              rbp, rsp
                        add              rbp, -904
                                                                                        jmp   n146_match_lit_α
n135_match_arbno_as:
                        mov              eax, dword ptr [rbp + 912]
                        cmp              r14d, eax
                                                                                        je    n146_match_lit_β
                        mov              rbp, qword ptr [rbp + 904]
                        mov              eax, dword ptr [rbp + 888]
                        add              eax, 1
                        mov              dword ptr [rbp + 888], eax
                        mov              dword ptr [rbp + 884], r14d
                                                                                        jmp   n136_match_lit_α
n135_match_arbno_af:
                        mov              rax, qword ptr [rbp + 920]
                        mov              rdx, qword ptr [rbp + 904]
                        lea              rsp, [rbp + 984]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 888]
                        test             ecx, ecx
                                                                                        jz    .Lx446_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 888], ecx
                        mov              qword ptr [rbp + 896], rax
                        lea              rbp, [rax + -904]
                                                                                        jmp   n146_match_lit_β
.Lx446_2:
                        mov              r14d, dword ptr [rbp + 880]
                        mov              rbp, qword ptr [rbp + 912]
                        mov              rsp, qword ptr [rbp + 904]
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
                        mov              qword ptr [rsp + 976], 3                       # result
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rsp + 984], rax
                                                                                        jmp   n138_match_rpos_α
.Lx449_0:
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
                        mov              r10, r12
.Lx452_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx452_9
                        mov              rsp, qword ptr [rbp + 752]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx452_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx452_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx452_1:
                        test             rax, rax
                                                                                        je    .Lx452_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx452_3]
                        lea              rdx, [rip + .Lx452_4]
                                                                                        jmp   rax
.Lx452_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx452_1
.Lx452_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx452_1
.Lx452_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 784]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 792]                     # outer_δ
                        mov              r15, qword ptr [rbp + 800]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 808]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 776]                     # old_rbp
                                                                                        jmp   n140_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_end_α:
                        add              rsp, 1008
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
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n143_assign_α
.Lx457_0:
                        .quad            .Lx457_0_s
.Lx457_0_s:
                        .string          "T2 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n143_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx458_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n144_statement_end_α
.Lx458_0:
                        .quad            .Lx458_0_s
.Lx458_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n152_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:
                        mov              qword ptr [rsp + 960], 2                       # result
                        mov              dword ptr [rsp + 964], 5
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rsp + 968], rax
                                                                                        jmp   main_γ
n145_lit_string_β:
                                                                                        jmp   main_ω
.Lx461_0:
                        .quad            .Lx461_0_s
.Lx461_0_s:
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
                                                                                        jne   .Lx464_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx464_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx464_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx464_10
.Lx464_9:
                        xor              eax, eax
.Lx464_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx464_11:
                        test             rax, rax
                                                                                        jz    .Lx464_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx464_4]
                        lea              rdx, [rip + .Lx464_5]
                                                                                        jmp   rax
.Lx464_4:
                                                                                        jmp   n135_match_arbno_as
.Lx464_5:
                                                                                        jmp   n146_match_lit_β
.Lx464_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx464_2:
                        test             rax, rax
                                                                                        je    .Lx464_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx464_7]
                        lea              rdx, [rip + .Lx464_8]
                                                                                        jmp   rax
.Lx464_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx464_2
.Lx464_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx464_2
.Lx464_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n146_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx464_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n135_match_arbno_as
.Lx464_6:
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
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n150_assign_α
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n150_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx468_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n151_statement_end_α
.Lx468_0:
                        .quad            .Lx468_0_s
.Lx468_0_s:
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
                        sub              rsp, 1328
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
                        mov              qword ptr [rbp + 1104], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1112], r14                    # outer_δ
                        mov              qword ptr [rbp + 1120], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1128], rax                    # cap_gen
                        mov              qword ptr [rbp + 1096], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 1072], rsp                    # zls2_mark
                        mov              dword ptr [rbp + 1056], 0                      # start_δ
.Lx475_0:
                        mov              r14d, dword ptr [rbp + 1056]
                                                                                        jmp   n155_lit_integer_α
n154_match_begin_β:
                        add              dword ptr [rbp + 1056], 1
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, r15d
                                                                                        jg    .Lx475_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx475_1
                                                                                        jmp   .Lx475_0
.Lx475_1:
n154_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 1072]
                        mov              r13, qword ptr [rbp + 1104]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1112]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1120]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1128]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1096]                    # old_rbp
                        add              rsp, 1328
                                                                                        jmp   n172_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:
                        mov              qword ptr [rsp + 1136], 3                      # result
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rsp + 1144], rax
                                                                                        jmp   n156_match_pos_α
.Lx476_0:
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
                                                                                        jne   .Lx480_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx480_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx480_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx480_10
.Lx480_9:
                        xor              eax, eax
.Lx480_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx480_11:
                        test             rax, rax
                                                                                        jz    .Lx480_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx480_4]
                        lea              rdx, [rip + .Lx480_5]
                                                                                        jmp   rax
.Lx480_4:
                                                                                        jmp   n159_match_arbno_α
.Lx480_5:
                                                                                        jmp   n157_match_lit_β
.Lx480_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx480_2:
                        test             rax, rax
                                                                                        je    .Lx480_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx480_7]
                        lea              rdx, [rip + .Lx480_8]
                                                                                        jmp   rax
.Lx480_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx480_2
.Lx480_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx480_2
.Lx480_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n157_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx480_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n159_match_arbno_α
.Lx480_6:
                        add              rsp, 16
                                                                                        jmp   n157_match_lit_β
n158_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n159_match_arbno_α:
                        mov              dword ptr [rbp + 1200], r14d
                        mov              dword ptr [rbp + 1204], r14d
                        mov              dword ptr [rbp + 1208], 0
                        mov              qword ptr [rbp + 1224], rsp
                        mov              qword ptr [rbp + 1232], rbp
                        mov              qword ptr [rbp + 1216], 0
                                                                                        jmp   n160_match_lit_α
n159_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1204]
                        mov              rax, qword ptr [rbp + 1216]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1216], rsp
                        mov              rbp, rsp
                        add              rbp, -1224
                                                                                        jmp   n170_match_lit_α
n159_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              r14d, eax
                                                                                        je    n170_match_lit_β
                        mov              rbp, qword ptr [rbp + 1224]
                        mov              eax, dword ptr [rbp + 1208]
                        add              eax, 1
                        mov              dword ptr [rbp + 1208], eax
                        mov              dword ptr [rbp + 1204], r14d
                                                                                        jmp   n160_match_lit_α
n159_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1240]
                        mov              rdx, qword ptr [rbp + 1224]
                        lea              rsp, [rbp + 1304]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1208]
                        test             ecx, ecx
                                                                                        jz    .Lx482_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1208], ecx
                        mov              qword ptr [rbp + 1216], rax
                        lea              rbp, [rax + -1224]
                                                                                        jmp   n170_match_lit_β
.Lx482_2:
                        mov              r14d, dword ptr [rbp + 1200]
                        mov              rbp, qword ptr [rbp + 1232]
                        mov              rsp, qword ptr [rbp + 1224]
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
                        mov              qword ptr [rsp + 1296], 3                      # result
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rsp + 1304], rax
                                                                                        jmp   n162_match_rpos_α
.Lx485_0:
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
                        mov              r10, r12
.Lx488_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx488_9
                        mov              rsp, qword ptr [rbp + 1072]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx488_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx488_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx488_1:
                        test             rax, rax
                                                                                        je    .Lx488_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx488_3]
                        lea              rdx, [rip + .Lx488_4]
                                                                                        jmp   rax
.Lx488_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx488_1
.Lx488_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx488_1
.Lx488_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 1104]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1112]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1120]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1128]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1096]                    # old_rbp
                                                                                        jmp   n164_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_end_α:
                        add              rsp, 1328
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
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n167_assign_α
.Lx493_0:
                        .quad            .Lx493_0_s
.Lx493_0_s:
                        .string          "T3 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n167_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx494_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n168_statement_end_α
.Lx494_0:
                        .quad            .Lx494_0_s
.Lx494_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n176_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:
                        mov              qword ptr [rsp + 1280], 2                      # result
                        mov              dword ptr [rsp + 1284], 5
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rsp + 1288], rax
                                                                                        jmp   main_γ
n169_lit_string_β:
                                                                                        jmp   main_ω
.Lx497_0:
                        .quad            .Lx497_0_s
.Lx497_0_s:
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
                                                                                        jne   .Lx500_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx500_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx500_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx500_10
.Lx500_9:
                        xor              eax, eax
.Lx500_10:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rax
.Lx500_11:
                        test             rax, rax
                                                                                        jz    .Lx500_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx500_4]
                        lea              rdx, [rip + .Lx500_5]
                                                                                        jmp   rax
.Lx500_4:
                                                                                        jmp   n159_match_arbno_as
.Lx500_5:
                                                                                        jmp   n170_match_lit_β
.Lx500_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx500_2:
                        test             rax, rax
                                                                                        je    .Lx500_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx500_7]
                        lea              rdx, [rip + .Lx500_8]
                                                                                        jmp   rax
.Lx500_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx500_2
.Lx500_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx500_2
.Lx500_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n170_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx500_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n159_match_arbno_as
.Lx500_6:
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
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n174_assign_α
.Lx503_0:
                        .quad            .Lx503_0_s
.Lx503_0_s:
                        .string          "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n174_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx504_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n175_statement_end_α
.Lx504_0:
                        .quad            .Lx504_0_s
.Lx504_0_s:
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
                        sub              rsp, 1680
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
                        mov              qword ptr [rbp + 1424], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1432], r14                    # outer_δ
                        mov              qword ptr [rbp + 1440], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1448], rax                    # cap_gen
                        mov              qword ptr [rbp + 1416], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 1392], rsp                    # zls2_mark
                        mov              dword ptr [rbp + 1376], 0                      # start_δ
.Lx511_0:
                        mov              r14d, dword ptr [rbp + 1376]
                                                                                        jmp   n179_lit_integer_α
n178_match_begin_β:
                        add              dword ptr [rbp + 1376], 1
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, r15d
                                                                                        jg    .Lx511_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx511_1
                                                                                        jmp   .Lx511_0
.Lx511_1:
n178_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 1392]
                        mov              r13, qword ptr [rbp + 1424]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1432]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1440]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1448]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1416]                    # old_rbp
                        add              rsp, 1680
                                                                                        jmp   n198_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:
                        mov              qword ptr [rsp + 1456], 3                      # result
                        mov              rax, qword ptr [rip + .Lx512_0]
                        mov              qword ptr [rsp + 1464], rax
                                                                                        jmp   n180_match_pos_α
.Lx512_0:
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
                                                                                        jne   .Lx516_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx516_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx516_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx516_10
.Lx516_9:
                        xor              eax, eax
.Lx516_10:
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              qword ptr [rsi + 0], rax
.Lx516_11:
                        test             rax, rax
                                                                                        jz    .Lx516_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx516_4]
                        lea              rdx, [rip + .Lx516_5]
                                                                                        jmp   rax
.Lx516_4:
                                                                                        jmp   n183_match_arbno_α
.Lx516_5:
                                                                                        jmp   n181_match_lit_β
.Lx516_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx516_2:
                        test             rax, rax
                                                                                        je    .Lx516_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx516_7]
                        lea              rdx, [rip + .Lx516_8]
                                                                                        jmp   rax
.Lx516_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx516_2
.Lx516_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx516_2
.Lx516_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n181_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx516_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n183_match_arbno_α
.Lx516_6:
                        add              rsp, 16
                                                                                        jmp   n181_match_lit_β
n182_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n183_match_arbno_α:
                        mov              dword ptr [rbp + 1520], r14d
                        mov              dword ptr [rbp + 1524], r14d
                        mov              dword ptr [rbp + 1528], 0
                        mov              qword ptr [rbp + 1544], rsp
                        mov              qword ptr [rbp + 1552], rbp
                        mov              qword ptr [rbp + 1536], 0
                                                                                        jmp   n184_match_lit_α
n183_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1524]
                        mov              rax, qword ptr [rbp + 1536]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1536], rsp
                        mov              rbp, rsp
                        add              rbp, -1544
                                                                                        jmp   n196_match_lit_α
n183_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              r14d, eax
                                                                                        je    n196_match_lit_β
                        mov              rbp, qword ptr [rbp + 1544]
                        mov              eax, dword ptr [rbp + 1528]
                        add              eax, 1
                        mov              dword ptr [rbp + 1528], eax
                        mov              dword ptr [rbp + 1524], r14d
                                                                                        jmp   n184_match_lit_α
n183_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1560]
                        mov              rdx, qword ptr [rbp + 1544]
                        lea              rsp, [rbp + 1624]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1528]
                        test             ecx, ecx
                                                                                        jz    .Lx518_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1528], ecx
                        mov              qword ptr [rbp + 1536], rax
                        lea              rbp, [rax + -1544]
                                                                                        jmp   n196_match_lit_β
.Lx518_2:
                        mov              r14d, dword ptr [rbp + 1520]
                        mov              rbp, qword ptr [rbp + 1552]
                        mov              rsp, qword ptr [rbp + 1544]
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
                                                                                        jne   .Lx521_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx521_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx521_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx521_10
.Lx521_9:
                        xor              eax, eax
.Lx521_10:
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              qword ptr [rsi + 0], rax
.Lx521_11:
                        test             rax, rax
                                                                                        jz    .Lx521_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx521_4]
                        lea              rdx, [rip + .Lx521_5]
                                                                                        jmp   rax
.Lx521_4:
                                                                                        jmp   n186_match_lit_α
.Lx521_5:
                                                                                        jmp   n184_match_lit_β
.Lx521_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx521_2:
                        test             rax, rax
                                                                                        je    .Lx521_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx521_7]
                        lea              rdx, [rip + .Lx521_8]
                                                                                        jmp   rax
.Lx521_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx521_2
.Lx521_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx521_2
.Lx521_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n184_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx521_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n186_match_lit_α
.Lx521_6:
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
                        mov              qword ptr [rsp + 1648], 3                      # result
                        mov              rax, qword ptr [rip + .Lx524_0]
                        mov              qword ptr [rsp + 1656], rax
                                                                                        jmp   n188_match_rpos_α
.Lx524_0:
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
                        mov              r10, r12
.Lx527_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx527_9
                        mov              rsp, qword ptr [rbp + 1392]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx527_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx527_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx527_1:
                        test             rax, rax
                                                                                        je    .Lx527_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx527_3]
                        lea              rdx, [rip + .Lx527_4]
                                                                                        jmp   rax
.Lx527_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx527_1
.Lx527_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx527_1
.Lx527_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 1424]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1432]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1440]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1448]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1416]                    # old_rbp
                                                                                        jmp   n190_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_end_α:
                        add              rsp, 1680
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
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n193_assign_α
.Lx532_0:
                        .quad            .Lx532_0_s
.Lx532_0_s:
                        .string          "T4 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n193_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx533_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n194_statement_end_α
.Lx533_0:
                        .quad            .Lx533_0_s
.Lx533_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n202_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rsp + 1600], 2                      # result
                        mov              dword ptr [rsp + 1604], 5
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rsp + 1608], rax
                                                                                        jmp   main_γ
n195_lit_string_β:
                                                                                        jmp   main_ω
.Lx536_0:
                        .quad            .Lx536_0_s
.Lx536_0_s:
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
                                                                                        jne   .Lx539_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx539_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx539_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx539_10
.Lx539_9:
                        xor              eax, eax
.Lx539_10:
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              qword ptr [rsi + 0], rax
.Lx539_11:
                        test             rax, rax
                                                                                        jz    .Lx539_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx539_4]
                        lea              rdx, [rip + .Lx539_5]
                                                                                        jmp   rax
.Lx539_4:
                                                                                        jmp   n183_match_arbno_as
.Lx539_5:
                                                                                        jmp   n196_match_lit_β
.Lx539_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx539_2:
                        test             rax, rax
                                                                                        je    .Lx539_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx539_7]
                        lea              rdx, [rip + .Lx539_8]
                                                                                        jmp   rax
.Lx539_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx539_2
.Lx539_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx539_2
.Lx539_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n196_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx539_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n183_match_arbno_as
.Lx539_6:
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
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n200_assign_α
.Lx542_0:
                        .quad            .Lx542_0_s
.Lx542_0_s:
                        .string          "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n200_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx543_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n201_statement_end_α
.Lx543_0:
                        .quad            .Lx543_0_s
.Lx543_0_s:
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
                        sub              rsp, 2000
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
                        mov              qword ptr [rbp + 1776], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1784], r14                    # outer_δ
                        mov              qword ptr [rbp + 1792], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1800], rax                    # cap_gen
                        mov              qword ptr [rbp + 1768], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 1744], rsp                    # zls2_mark
                        mov              dword ptr [rbp + 1728], 0                      # start_δ
.Lx550_0:
                        mov              r14d, dword ptr [rbp + 1728]
                                                                                        jmp   n205_lit_integer_α
n204_match_begin_β:
                        add              dword ptr [rbp + 1728], 1
                        mov              eax, dword ptr [rbp + 1728]
                        cmp              eax, r15d
                                                                                        jg    .Lx550_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx550_1
                                                                                        jmp   .Lx550_0
.Lx550_1:
n204_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 1744]
                        mov              r13, qword ptr [rbp + 1776]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1784]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1792]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1800]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1768]                    # old_rbp
                        add              rsp, 2000
                                                                                        jmp   n222_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_integer_α:
                        mov              qword ptr [rsp + 1808], 3                      # result
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rsp + 1816], rax
                                                                                        jmp   n206_match_pos_α
.Lx551_0:
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
                                                                                        jne   .Lx555_11
                        mov              rax, qword ptr [1879052304]                    # ITEM2
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx555_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx555_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx555_10
.Lx555_9:
                        xor              eax, eax
.Lx555_10:
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              qword ptr [rsi + 0], rax
.Lx555_11:
                        test             rax, rax
                                                                                        jz    .Lx555_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx555_4]
                        lea              rdx, [rip + .Lx555_5]
                                                                                        jmp   rax
.Lx555_4:
                                                                                        jmp   n209_match_arbno_α
.Lx555_5:
                                                                                        jmp   n207_match_lit_β
.Lx555_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx555_2:
                        test             rax, rax
                                                                                        je    .Lx555_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx555_7]
                        lea              rdx, [rip + .Lx555_8]
                                                                                        jmp   rax
.Lx555_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx555_2
.Lx555_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx555_2
.Lx555_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n207_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx555_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n209_match_arbno_α
.Lx555_6:
                        add              rsp, 16
                                                                                        jmp   n207_match_lit_β
n208_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n209_match_arbno_α:
                        mov              dword ptr [rbp + 1872], r14d
                        mov              dword ptr [rbp + 1876], r14d
                        mov              dword ptr [rbp + 1880], 0
                        mov              qword ptr [rbp + 1896], rsp
                        mov              qword ptr [rbp + 1904], rbp
                        mov              qword ptr [rbp + 1888], 0
                                                                                        jmp   n210_match_lit_α
n209_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1876]
                        mov              rax, qword ptr [rbp + 1888]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1888], rsp
                        mov              rbp, rsp
                        add              rbp, -1896
                                                                                        jmp   n220_match_lit_α
n209_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1904]
                        cmp              r14d, eax
                                                                                        je    n220_match_lit_β
                        mov              rbp, qword ptr [rbp + 1896]
                        mov              eax, dword ptr [rbp + 1880]
                        add              eax, 1
                        mov              dword ptr [rbp + 1880], eax
                        mov              dword ptr [rbp + 1876], r14d
                                                                                        jmp   n210_match_lit_α
n209_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1912]
                        mov              rdx, qword ptr [rbp + 1896]
                        lea              rsp, [rbp + 1976]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1880]
                        test             ecx, ecx
                                                                                        jz    .Lx557_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1880], ecx
                        mov              qword ptr [rbp + 1888], rax
                        lea              rbp, [rax + -1896]
                                                                                        jmp   n220_match_lit_β
.Lx557_2:
                        mov              r14d, dword ptr [rbp + 1872]
                        mov              rbp, qword ptr [rbp + 1904]
                        mov              rsp, qword ptr [rbp + 1896]
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
                        mov              qword ptr [rsp + 1968], 3                      # result
                        mov              rax, qword ptr [rip + .Lx560_0]
                        mov              qword ptr [rsp + 1976], rax
                                                                                        jmp   n212_match_rpos_α
.Lx560_0:
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
                        mov              r10, r12
.Lx563_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx563_9
                        mov              rsp, qword ptr [rbp + 1744]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx563_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx563_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx563_1:
                        test             rax, rax
                                                                                        je    .Lx563_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx563_3]
                        lea              rdx, [rip + .Lx563_4]
                                                                                        jmp   rax
.Lx563_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx563_1
.Lx563_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx563_1
.Lx563_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 1776]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1784]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1792]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1800]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1768]                    # old_rbp
                                                                                        jmp   n214_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_end_α:
                        add              rsp, 2000
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
                        mov              rax, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n217_assign_α
.Lx568_0:
                        .quad            .Lx568_0_s
.Lx568_0_s:
                        .string          "T5 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n217_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx569_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n218_statement_end_α
.Lx569_0:
                        .quad            .Lx569_0_s
.Lx569_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n226_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        mov              qword ptr [rsp + 1952], 2                      # result
                        mov              dword ptr [rsp + 1956], 5
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rsp + 1960], rax
                                                                                        jmp   main_γ
n219_lit_string_β:
                                                                                        jmp   main_ω
.Lx572_0:
                        .quad            .Lx572_0_s
.Lx572_0_s:
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
                                                                                        jne   .Lx575_11
                        mov              rax, qword ptr [1879052304]                    # ITEM2
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx575_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx575_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx575_10
.Lx575_9:
                        xor              eax, eax
.Lx575_10:
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              qword ptr [rsi + 0], rax
.Lx575_11:
                        test             rax, rax
                                                                                        jz    .Lx575_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx575_4]
                        lea              rdx, [rip + .Lx575_5]
                                                                                        jmp   rax
.Lx575_4:
                                                                                        jmp   n209_match_arbno_as
.Lx575_5:
                                                                                        jmp   n220_match_lit_β
.Lx575_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx575_2:
                        test             rax, rax
                                                                                        je    .Lx575_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx575_7]
                        lea              rdx, [rip + .Lx575_8]
                                                                                        jmp   rax
.Lx575_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx575_2
.Lx575_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx575_2
.Lx575_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n220_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx575_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n209_match_arbno_as
.Lx575_6:
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
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n224_assign_α
.Lx578_0:
                        .quad            .Lx578_0_s
.Lx578_0_s:
                        .string          "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n224_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx579_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n225_statement_end_α
.Lx579_0:
                        .quad            .Lx579_0_s
.Lx579_0_s:
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
                                                                                        jmp   n242_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # S6
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n228_var_α
#-----------------------------------------------------------------------------------------------------------------------
n228_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # LISTP
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n229_assign_α
n228_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n242_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n229_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx586_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n230_match_begin_α
n229_assign_β:
                                                                                        jmp   n228_var_β
.Lx586_0:
                        .quad            .Lx586_0_s
.Lx586_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n230_match_begin_α:
                        sub              rsp, 2128
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
                        mov              rdi, qword ptr [rsp + 2144]                    # var
                        mov              rsi, qword ptr [rsp + 2152]
                        mov              qword ptr [rbp + 2096], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2104], r14                    # outer_δ
                        mov              qword ptr [rbp + 2112], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2120], rax                    # cap_gen
                        mov              qword ptr [rbp + 2088], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 2064], rsp                    # zls2_mark
                        mov              dword ptr [rbp + 2048], 0                      # start_δ
.Lx588_0:
                        mov              r14d, dword ptr [rbp + 2048]
                                                                                        jmp   n231_lit_integer_α
n230_match_begin_β:
                        add              dword ptr [rbp + 2048], 1
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, r15d
                                                                                        jg    .Lx588_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx588_1
                                                                                        jmp   .Lx588_0
.Lx588_1:
n230_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 2064]
                        mov              r13, qword ptr [rbp + 2096]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2104]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2112]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2120]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2088]                    # old_rbp
                        add              rsp, 2128
                                                                                        jmp   n229_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx589_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n232_match_pos_α
.Lx589_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n232_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n230_match_begin_β
                                                                                        jmp   n233_match_defer_α
n232_match_pos_β:
                                                                                        jmp   n230_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n233_match_defer_α:
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx591_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx591_4]
                        lea              rdx, [rip + .Lx591_5]
                                                                                        jmp   rax
.Lx591_4:
                                                                                        jmp   n234_lit_integer_α
.Lx591_5:
                                                                                        jmp   n230_match_begin_β
.Lx591_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx591_2:
                        test             rax, rax
                                                                                        je    .Lx591_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx591_7]
                        lea              rdx, [rip + .Lx591_8]
                                                                                        jmp   rax
.Lx591_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx591_2
.Lx591_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx591_2
.Lx591_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n230_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx591_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n234_lit_integer_α
.Lx591_6:
                        add              rsp, 16
                                                                                        jmp   n230_match_begin_β
n233_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n235_match_rpos_α
.Lx592_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n235_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n233_match_defer_β
                                                                                        jmp   n236_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n236_match_end_α:
                        mov              r10, r12
.Lx595_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx595_9
                        mov              rsp, qword ptr [rbp + 2064]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx595_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx595_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx595_1:
                        test             rax, rax
                                                                                        je    .Lx595_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx595_3]
                        lea              rdx, [rip + .Lx595_4]
                                                                                        jmp   rax
.Lx595_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx595_1
.Lx595_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx595_1
.Lx595_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 2096]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2104]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2112]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2120]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2088]                    # old_rbp
                                                                                        jmp   n237_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n237_statement_end_α:
                        add              rsp, 2192
                                                                                        jmp   n238_statement_begin_α
#=======================================================================================================================
# A6      OUTPUT = "T6 MATCH"             :(N6)
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_begin_α:
                                                                                        jmp   n239_lit_string_α
n238_statement_begin_β:
                                                                                        jmp   n246_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n240_assign_α
.Lx600_0:
                        .quad            .Lx600_0_s
.Lx600_0_s:
                        .string          "T6 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n240_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx601_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n241_statement_end_α
.Lx601_0:
                        .quad            .Lx601_0_s
.Lx601_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n241_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n246_statement_begin_α
#=======================================================================================================================
# B6      OUTPUT = "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_begin_α:
                                                                                        jmp   n243_lit_string_α
n242_statement_begin_β:
                                                                                        jmp   n246_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx606_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n244_assign_α
.Lx606_0:
                        .quad            .Lx606_0_s
.Lx606_0_s:
                        .string          "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n244_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx607_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n245_statement_end_α
.Lx607_0:
                        .quad            .Lx607_0_s
.Lx607_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n245_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n246_statement_begin_α
#=======================================================================================================================
# N6      S7 POS(0) "(" *NEST ARBNO("," *NEST) ")" RPOS(0)  :S(A7)F(B7)
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_begin_α:
                                                                                        jmp   n247_var_α
n246_statement_begin_β:
                                                                                        jmp   n265_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n247_var_α:
                        sub              rsp, 2512
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S7
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n248_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n248_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 2304], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2312], r14                    # outer_δ
                        mov              qword ptr [rbp + 2320], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2328], rax                    # cap_gen
                        mov              qword ptr [rbp + 2296], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 2272], rsp                    # zls2_mark
                        mov              dword ptr [rbp + 2256], 0                      # start_δ
.Lx614_0:
                        mov              r14d, dword ptr [rbp + 2256]
                                                                                        jmp   n249_lit_integer_α
n248_match_begin_β:
                        add              dword ptr [rbp + 2256], 1
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, r15d
                                                                                        jg    .Lx614_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx614_1
                                                                                        jmp   .Lx614_0
.Lx614_1:
n248_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 2272]
                        mov              r13, qword ptr [rbp + 2304]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2312]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2320]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2328]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2296]                    # old_rbp
                        add              rsp, 2512
                                                                                        jmp   n265_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_integer_α:
                        mov              qword ptr [rsp + 2336], 3                      # result
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rsp + 2344], rax
                                                                                        jmp   n250_match_pos_α
.Lx615_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n250_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n248_match_begin_β
                                                                                        jmp   n251_match_lit_α
n250_match_pos_β:
                                                                                        jmp   n248_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n251_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n248_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n248_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n252_match_defer_α
n251_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n248_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n252_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+112]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx619_11
                        mov              rax, qword ptr [1879052320]                    # NEST
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx619_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx619_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx619_10
.Lx619_9:
                        xor              eax, eax
.Lx619_10:
                        lea              rsi, [rip + g_sno_defer_cells+112]
                        mov              qword ptr [rsi + 0], rax
.Lx619_11:
                        test             rax, rax
                                                                                        jz    .Lx619_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx619_4]
                        lea              rdx, [rip + .Lx619_5]
                                                                                        jmp   rax
.Lx619_4:
                                                                                        jmp   n253_match_arbno_α
.Lx619_5:
                                                                                        jmp   n251_match_lit_β
.Lx619_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx619_2:
                        test             rax, rax
                                                                                        je    .Lx619_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx619_7]
                        lea              rdx, [rip + .Lx619_8]
                                                                                        jmp   rax
.Lx619_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx619_2
.Lx619_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx619_2
.Lx619_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n251_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx619_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n253_match_arbno_α
.Lx619_6:
                        add              rsp, 16
                                                                                        jmp   n251_match_lit_β
n252_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n253_match_arbno_α:
                        mov              dword ptr [rbp + 2384], r14d
                        mov              dword ptr [rbp + 2388], r14d
                        mov              dword ptr [rbp + 2392], 0
                        mov              qword ptr [rbp + 2408], rsp
                        mov              qword ptr [rbp + 2416], rbp
                        mov              qword ptr [rbp + 2400], 0
                                                                                        jmp   n254_match_lit_α
n253_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 2388]
                        mov              rax, qword ptr [rbp + 2400]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 2400], rsp
                        mov              rbp, rsp
                        add              rbp, -2408
                                                                                        jmp   n263_match_lit_α
n253_match_arbno_as:
                        mov              eax, dword ptr [rbp + 2416]
                        cmp              r14d, eax
                                                                                        je    n263_match_lit_β
                        mov              rbp, qword ptr [rbp + 2408]
                        mov              eax, dword ptr [rbp + 2392]
                        add              eax, 1
                        mov              dword ptr [rbp + 2392], eax
                        mov              dword ptr [rbp + 2388], r14d
                                                                                        jmp   n254_match_lit_α
n253_match_arbno_af:
                        mov              rax, qword ptr [rbp + 2424]
                        mov              rdx, qword ptr [rbp + 2408]
                        lea              rsp, [rbp + 2488]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 2392]
                        test             ecx, ecx
                                                                                        jz    .Lx621_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 2392], ecx
                        mov              qword ptr [rbp + 2400], rax
                        lea              rbp, [rax + -2408]
                                                                                        jmp   n263_match_lit_β
.Lx621_2:
                        mov              r14d, dword ptr [rbp + 2384]
                        mov              rbp, qword ptr [rbp + 2416]
                        mov              rsp, qword ptr [rbp + 2408]
                                                                                        jmp   n252_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n254_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n253_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n253_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n255_lit_integer_α
n254_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n253_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_integer_α:
                        mov              qword ptr [rsp + 2480], 3                      # result
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rsp + 2488], rax
                                                                                        jmp   n256_match_rpos_α
.Lx624_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n256_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n254_match_lit_β
                                                                                        jmp   n257_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n257_match_end_α:
                        mov              r10, r12
.Lx627_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx627_9
                        mov              rsp, qword ptr [rbp + 2272]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx627_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx627_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx627_1:
                        test             rax, rax
                                                                                        je    .Lx627_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx627_3]
                        lea              rdx, [rip + .Lx627_4]
                                                                                        jmp   rax
.Lx627_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx627_1
.Lx627_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx627_1
.Lx627_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 2304]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2312]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2320]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2328]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2296]                    # old_rbp
                                                                                        jmp   n258_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n258_statement_end_α:
                        add              rsp, 2512
                                                                                        jmp   n259_statement_begin_α
#=======================================================================================================================
# A7      OUTPUT = "T7 MATCH"             :(N7)
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_begin_α:
                                                                                        jmp   n260_lit_string_α
n259_statement_begin_β:
                                                                                        jmp   n269_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n261_assign_α
.Lx632_0:
                        .quad            .Lx632_0_s
.Lx632_0_s:
                        .string          "T7 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n261_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx633_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n262_statement_end_α
.Lx633_0:
                        .quad            .Lx633_0_s
.Lx633_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n269_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n263_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n253_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n253_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n264_match_defer_α
n263_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n253_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n264_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+120]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx638_11
                        mov              rax, qword ptr [1879052320]                    # NEST
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx638_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx638_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx638_10
.Lx638_9:
                        xor              eax, eax
.Lx638_10:
                        lea              rsi, [rip + g_sno_defer_cells+120]
                        mov              qword ptr [rsi + 0], rax
.Lx638_11:
                        test             rax, rax
                                                                                        jz    .Lx638_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx638_4]
                        lea              rdx, [rip + .Lx638_5]
                                                                                        jmp   rax
.Lx638_4:
                                                                                        jmp   n253_match_arbno_as
.Lx638_5:
                                                                                        jmp   n263_match_lit_β
.Lx638_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx638_2:
                        test             rax, rax
                                                                                        je    .Lx638_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx638_7]
                        lea              rdx, [rip + .Lx638_8]
                                                                                        jmp   rax
.Lx638_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx638_2
.Lx638_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx638_2
.Lx638_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n263_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx638_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n253_match_arbno_as
.Lx638_6:
                        add              rsp, 16
                                                                                        jmp   n263_match_lit_β
n264_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B7      OUTPUT = "T7 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n265_statement_begin_α:
                                                                                        jmp   n266_lit_string_α
n265_statement_begin_β:
                                                                                        jmp   n269_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx641_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n267_assign_α
.Lx641_0:
                        .quad            .Lx641_0_s
.Lx641_0_s:
                        .string          "T7 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n267_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx642_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n268_statement_end_α
.Lx642_0:
                        .quad            .Lx642_0_s
.Lx642_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n268_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n269_statement_begin_α
#=======================================================================================================================
# N7      S8 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)  :S(A8)F(B8)
#-----------------------------------------------------------------------------------------------------------------------
n269_statement_begin_α:
                                                                                        jmp   n270_var_α
n269_statement_begin_β:
                                                                                        jmp   n289_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n270_var_α:
                        sub              rsp, 2832
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # S8
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n271_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n271_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 2608], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2616], r14                    # outer_δ
                        mov              qword ptr [rbp + 2624], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2632], rax                    # cap_gen
                        mov              qword ptr [rbp + 2600], rbp                    # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 2576], rsp                    # zls2_mark
                        mov              dword ptr [rbp + 2560], 0                      # start_δ
.Lx649_0:
                        mov              r14d, dword ptr [rbp + 2560]
                                                                                        jmp   n272_lit_integer_α
n271_match_begin_β:
                        add              dword ptr [rbp + 2560], 1
                        mov              eax, dword ptr [rbp + 2560]
                        cmp              eax, r15d
                                                                                        jg    .Lx649_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx649_1
                                                                                        jmp   .Lx649_0
.Lx649_1:
n271_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 2576]
                        mov              r13, qword ptr [rbp + 2608]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2616]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2624]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2632]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2600]                    # old_rbp
                        add              rsp, 2832
                                                                                        jmp   n289_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_integer_α:
                        mov              qword ptr [rsp + 2640], 3                      # result
                        mov              rax, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rsp + 2648], rax
                                                                                        jmp   n273_match_pos_α
.Lx650_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n273_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n271_match_begin_β
                                                                                        jmp   n274_match_lit_α
n273_match_pos_β:
                                                                                        jmp   n271_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n274_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n271_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n271_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n275_match_defer_α
n274_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n271_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n275_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+128]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx654_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx654_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx654_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx654_10
.Lx654_9:
                        xor              eax, eax
.Lx654_10:
                        lea              rsi, [rip + g_sno_defer_cells+128]
                        mov              qword ptr [rsi + 0], rax
.Lx654_11:
                        test             rax, rax
                                                                                        jz    .Lx654_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx654_4]
                        lea              rdx, [rip + .Lx654_5]
                                                                                        jmp   rax
.Lx654_4:
                                                                                        jmp   n276_match_arbno_α
.Lx654_5:
                                                                                        jmp   n274_match_lit_β
.Lx654_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx654_2:
                        test             rax, rax
                                                                                        je    .Lx654_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx654_7]
                        lea              rdx, [rip + .Lx654_8]
                                                                                        jmp   rax
.Lx654_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx654_2
.Lx654_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx654_2
.Lx654_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n274_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx654_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n276_match_arbno_α
.Lx654_6:
                        add              rsp, 16
                                                                                        jmp   n274_match_lit_β
n275_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n276_match_arbno_α:
                        mov              dword ptr [rbp + 2704], r14d
                        mov              dword ptr [rbp + 2708], r14d
                        mov              dword ptr [rbp + 2712], 0
                        mov              qword ptr [rbp + 2728], rsp
                        mov              qword ptr [rbp + 2736], rbp
                        mov              qword ptr [rbp + 2720], 0
                                                                                        jmp   n277_match_lit_α
n276_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 2708]
                        mov              rax, qword ptr [rbp + 2720]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 2720], rsp
                        mov              rbp, rsp
                        add              rbp, -2728
                                                                                        jmp   n287_match_lit_α
n276_match_arbno_as:
                        mov              eax, dword ptr [rbp + 2736]
                        cmp              r14d, eax
                                                                                        je    n287_match_lit_β
                        mov              rbp, qword ptr [rbp + 2728]
                        mov              eax, dword ptr [rbp + 2712]
                        add              eax, 1
                        mov              dword ptr [rbp + 2712], eax
                        mov              dword ptr [rbp + 2708], r14d
                                                                                        jmp   n277_match_lit_α
n276_match_arbno_af:
                        mov              rax, qword ptr [rbp + 2744]
                        mov              rdx, qword ptr [rbp + 2728]
                        lea              rsp, [rbp + 2808]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 2712]
                        test             ecx, ecx
                                                                                        jz    .Lx656_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 2712], ecx
                        mov              qword ptr [rbp + 2720], rax
                        lea              rbp, [rax + -2728]
                                                                                        jmp   n287_match_lit_β
.Lx656_2:
                        mov              r14d, dword ptr [rbp + 2704]
                        mov              rbp, qword ptr [rbp + 2736]
                        mov              rsp, qword ptr [rbp + 2728]
                                                                                        jmp   n275_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n277_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n276_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n276_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n278_lit_integer_α
n277_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n276_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:
                        mov              qword ptr [rsp + 2800], 3                      # result
                        mov              rax, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rsp + 2808], rax
                                                                                        jmp   n279_match_rpos_α
.Lx659_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n279_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n277_match_lit_β
                                                                                        jmp   n280_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n280_match_end_α:
                        mov              r10, r12
.Lx662_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx662_9
                        mov              rsp, qword ptr [rbp + 2576]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx662_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx662_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx662_1:
                        test             rax, rax
                                                                                        je    .Lx662_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx662_3]
                        lea              rdx, [rip + .Lx662_4]
                                                                                        jmp   rax
.Lx662_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx662_1
.Lx662_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx662_1
.Lx662_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 2608]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2616]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2624]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2632]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2600]                    # old_rbp
                                                                                        jmp   n281_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n281_statement_end_α:
                        add              rsp, 2832
                                                                                        jmp   n282_statement_begin_α
#=======================================================================================================================
# A8      OUTPUT = "T8 MATCH"             :(N8)
#-----------------------------------------------------------------------------------------------------------------------
n282_statement_begin_α:
                                                                                        jmp   n283_lit_string_α
n282_statement_begin_β:
                                                                                        jmp   n293_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n284_assign_α
.Lx667_0:
                        .quad            .Lx667_0_s
.Lx667_0_s:
                        .string          "T8 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n284_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx668_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n285_statement_end_α
.Lx668_0:
                        .quad            .Lx668_0_s
.Lx668_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n285_statement_end_α:
                                                                                        jmp   n293_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:
                        mov              qword ptr [rsp + 2784], 2                      # result
                        mov              dword ptr [rsp + 2788], 5
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rsp + 2792], rax
                                                                                        jmp   main_γ
n286_lit_string_β:
                                                                                        jmp   main_ω
.Lx671_0:
                        .quad            .Lx671_0_s
.Lx671_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n287_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n276_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n276_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n288_match_defer_α
n287_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n276_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n288_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+136]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx674_11
                        mov              rax, qword ptr [1879052288]                    # ITEM
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx674_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx674_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx674_10
.Lx674_9:
                        xor              eax, eax
.Lx674_10:
                        lea              rsi, [rip + g_sno_defer_cells+136]
                        mov              qword ptr [rsi + 0], rax
.Lx674_11:
                        test             rax, rax
                                                                                        jz    .Lx674_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx674_4]
                        lea              rdx, [rip + .Lx674_5]
                                                                                        jmp   rax
.Lx674_4:
                                                                                        jmp   n276_match_arbno_as
.Lx674_5:
                                                                                        jmp   n287_match_lit_β
.Lx674_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx674_2:
                        test             rax, rax
                                                                                        je    .Lx674_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx674_7]
                        lea              rdx, [rip + .Lx674_8]
                                                                                        jmp   rax
.Lx674_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx674_2
.Lx674_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx674_2
.Lx674_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n287_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx674_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n276_match_arbno_as
.Lx674_6:
                        add              rsp, 16
                                                                                        jmp   n287_match_lit_β
n288_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# B8      OUTPUT = "T8 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n289_statement_begin_α:
                                                                                        jmp   n290_lit_string_α
n289_statement_begin_β:
                                                                                        jmp   n293_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx677_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n291_assign_α
.Lx677_0:
                        .quad            .Lx677_0_s
.Lx677_0_s:
                        .string          "T8 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n291_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx678_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n292_statement_end_α
.Lx678_0:
                        .quad            .Lx678_0_s
.Lx678_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n292_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n293_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n293_statement_begin_α:
                                                                                        jmp   n294_statement_end_α
n293_statement_begin_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n294_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n295_goto_α:
                                                                                        jmp   n117_statement_begin_α
n295_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n296_goto_α:
                                                                                        jmp   n124_statement_begin_α
n296_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n297_goto_α:
                                                                                        jmp   n128_statement_begin_α
n297_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n298_goto_α:
                                                                                        jmp   n141_statement_begin_α
n298_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n299_goto_α:
                                                                                        jmp   n148_statement_begin_α
n299_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n300_goto_α:
                                                                                        jmp   n152_statement_begin_α
n300_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n301_goto_α:
                                                                                        jmp   n165_statement_begin_α
n301_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n302_goto_α:
                                                                                        jmp   n172_statement_begin_α
n302_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n303_goto_α:
                                                                                        jmp   n176_statement_begin_α
n303_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n304_goto_α:
                                                                                        jmp   n191_statement_begin_α
n304_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n305_goto_α:
                                                                                        jmp   n198_statement_begin_α
n305_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n306_goto_α:
                                                                                        jmp   n202_statement_begin_α
n306_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n307_goto_α:
                                                                                        jmp   n215_statement_begin_α
n307_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n308_goto_α:
                                                                                        jmp   n222_statement_begin_α
n308_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n309_goto_α:
                                                                                        jmp   n226_statement_begin_α
n309_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n310_goto_α:
                                                                                        jmp   n238_statement_begin_α
n310_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n311_goto_α:
                                                                                        jmp   n242_statement_begin_α
n311_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n312_goto_α:
                                                                                        jmp   n246_statement_begin_α
n312_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n313_goto_α:
                                                                                        jmp   n259_statement_begin_α
n313_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n314_goto_α:
                                                                                        jmp   n265_statement_begin_α
n314_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n315_goto_α:
                                                                                        jmp   n269_statement_begin_α
n315_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n316_goto_α:
                                                                                        jmp   n282_statement_begin_α
n316_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n317_goto_α:
                                                                                        jmp   n289_statement_begin_α
n317_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n318_goto_α:
                                                                                        jmp   n293_statement_begin_α
n318_goto_β:
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
.S3:                    .string          "PATV$0"
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
