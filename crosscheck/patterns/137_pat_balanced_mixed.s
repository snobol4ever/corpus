                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        sub              rsp, 96
                        mov              qword ptr [rsp + 72], rcx
                        mov              qword ptr [rsp + 80], rdx
                        mov              qword ptr [rsp + 88], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 64], r8
                        mov              dword ptr [rsp + 56], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n0_match_len_β]
                        mov              qword ptr [rbp + 32], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_len_α:
                        mov              eax, r14d
                        add              eax, 0
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$0_scanfail
                        add              r14d, 0
                                                                                        jmp   proc_PAT$0_scanhit
n0_match_len_β:
                        sub              r14d, 0
                                                                                        jmp   proc_PAT$0_scanfail
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   .Lx2_0
                        mov              ecx, dword ptr [rbp + 56]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx2_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   .Lx3_0
                        mov              eax, dword ptr [rbp + 56]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx3_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx3_0
                        mov              dword ptr [rbp + 56], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx3_0:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 32]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, qword ptr [rbp + 80]
                        lea              rsp, [rbp + 96]
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 104], rcx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 96], r8
                        mov              dword ptr [rsp + 88], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n4_match_alternate_β]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n4_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx10_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n8_match_lit_α
.Lx10_21:
                        lea              rax, [rip + .Lx10_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n7_match_lit_α
.Lx10_22:
                        lea              rax, [rip + .Lx10_23]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n6_match_lit_α
.Lx10_23:
                        lea              rax, [rip + .Lx10_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n5_match_lit_α
n4_match_alternate_s0:
                        lea              rax, [rip + .Lx10_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n4_match_alternate_as
n4_match_alternate_s1:
                        lea              rax, [rip + .Lx10_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n4_match_alternate_as
n4_match_alternate_s2:
                        lea              rax, [rip + .Lx10_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n4_match_alternate_as
n4_match_alternate_s3:
                        lea              rax, [rip + .Lx10_43]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n4_match_alternate_as
.Lx10_40:
                                                                                        jmp   n8_match_lit_β
.Lx10_41:
                                                                                        jmp   n7_match_lit_β
.Lx10_42:
                                                                                        jmp   n6_match_lit_β
.Lx10_43:
                                                                                        jmp   n5_match_lit_β
n4_match_alternate_as:
                                                                                        jmp   proc_PAT$1_γ
n4_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n4_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx10_19:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n4_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 60
                                                                                        jne   n4_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n4_match_alternate_s3
n5_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n4_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n6_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n4_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 123
                                                                                        jne   n4_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n4_match_alternate_s2
n6_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n4_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n7_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n4_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 91
                                                                                        jne   n4_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n4_match_alternate_s1
n7_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n4_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n8_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n4_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n4_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n4_match_alternate_s0
n8_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n4_match_alternate_af
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx19_0
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx19_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx20_0
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx20_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx20_0
                        mov              dword ptr [rbp + 88], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
.Lx20_0:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 64]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              rbp, qword ptr [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, qword ptr [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 104], rcx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 96], r8
                        mov              dword ptr [rsp + 88], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + n21_match_alternate_β]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n21_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx27_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n25_match_lit_α
.Lx27_21:
                        lea              rax, [rip + .Lx27_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n24_match_lit_α
.Lx27_22:
                        lea              rax, [rip + .Lx27_23]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n23_match_lit_α
.Lx27_23:
                        lea              rax, [rip + .Lx27_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n22_match_lit_α
n21_match_alternate_s0:
                        lea              rax, [rip + .Lx27_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n21_match_alternate_as
n21_match_alternate_s1:
                        lea              rax, [rip + .Lx27_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n21_match_alternate_as
n21_match_alternate_s2:
                        lea              rax, [rip + .Lx27_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n21_match_alternate_as
n21_match_alternate_s3:
                        lea              rax, [rip + .Lx27_43]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n21_match_alternate_as
.Lx27_40:
                                                                                        jmp   n25_match_lit_β
.Lx27_41:
                                                                                        jmp   n24_match_lit_β
.Lx27_42:
                                                                                        jmp   n23_match_lit_β
.Lx27_43:
                                                                                        jmp   n22_match_lit_β
n21_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n21_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n21_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx27_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n21_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 62
                                                                                        jne   n21_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n21_match_alternate_s3
n22_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n21_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n23_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n21_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 125
                                                                                        jne   n21_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n21_match_alternate_s2
n23_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n21_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n24_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n21_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 93
                                                                                        jne   n21_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n21_match_alternate_s1
n24_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n21_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n25_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n21_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n21_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n21_match_alternate_s0
n25_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n21_match_alternate_af
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx36_0
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx36_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx37_0
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx37_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx37_0
                        mov              dword ptr [rbp + 88], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx37_0:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 64]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              rbp, qword ptr [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, qword ptr [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 160], r8
                        mov              dword ptr [rsp + 152], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + n40_match_patref_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n38_match_patref_α:
                        sub              rsp, 112
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
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx44_11
                        mov              rax, qword ptr [1879052304]                    # open
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx44_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx44_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx44_10
.Lx44_9:
                        xor              eax, eax
.Lx44_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx44_11:
                        test             rax, rax
                                                                                        jz    .Lx44_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx44_4]
                        lea              rdx, [rip + .Lx44_5]
                                                                                        jmp   rax
.Lx44_4:
                                                                                        jmp   n39_match_fence1_α
.Lx44_5:
                        add              rsp, 112
                                                                                        jmp   proc_PAT$3_scanfail
.Lx44_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx44_2:
                        test             rax, rax
                                                                                        je    .Lx44_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx44_7]
                        lea              rdx, [rip + .Lx44_8]
                                                                                        jmp   rax
.Lx44_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx44_2
.Lx44_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx44_2
.Lx44_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx44_240
                        add              rsp, 112
                                                                                        jmp   proc_PAT$3_scanfail
.Lx44_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx44_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n39_match_fence1_α
.Lx44_6:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   proc_PAT$3_scanfail
n38_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n39_match_fence1_α:
                        mov              qword ptr [rbp + 32], rsp
                                                                                        jmp   n41_match_alternate_α
n39_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 32], rbp
                                                                                        jmp   n40_match_patref_α
n39_match_fence1_β:
n39_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n40_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx47_11
                        mov              rax, qword ptr [1879052320]                    # close
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx47_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx47_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx47_10
.Lx47_9:
                        xor              eax, eax
.Lx47_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx47_11:
                        test             rax, rax
                                                                                        jz    .Lx47_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx47_4]
                        lea              rdx, [rip + .Lx47_5]
                                                                                        jmp   rax
.Lx47_4:
                        add              rsp, 112
                                                                                        jmp   proc_PAT$3_scanhit
.Lx47_5:
                        add              rsp, 112
                                                                                        jmp   proc_PAT$3_scanfail
.Lx47_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx47_2:
                        test             rax, rax
                                                                                        je    .Lx47_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx47_7]
                        lea              rdx, [rip + .Lx47_8]
                                                                                        jmp   rax
.Lx47_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx47_2
.Lx47_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx47_2
.Lx47_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx47_240
                        add              rsp, 112
                                                                                        jmp   proc_PAT$3_scanfail
.Lx47_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx47_6]
                        sub              rsp, 8
                        push             rax
                        add              rsp, 112
                                                                                        jmp   proc_PAT$3_scanhit
.Lx47_6:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   proc_PAT$3_scanfail
n40_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n41_match_alternate_α:
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx49_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n43_match_defer_α
.Lx49_21:
                        lea              rax, [rip + .Lx49_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n42_match_patref_α
n41_match_alternate_s0:
                        lea              rax, [rip + .Lx49_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n41_match_alternate_as
n41_match_alternate_s1:
                        lea              rax, [rip + .Lx49_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n41_match_alternate_as
.Lx49_40:
                                                                                        jmp   n43_match_defer_β
.Lx49_41:
                                                                                        jmp   n42_match_patref_β
n41_match_alternate_as:
                                                                                        jmp   n39_match_fence1_as
n41_match_alternate_β:
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n41_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx49_19:
                                                                                        jmp   n39_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n42_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx50_11
                        mov              rax, qword ptr [1879052288]                    # eps
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx50_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx50_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx50_10
.Lx50_9:
                        xor              eax, eax
.Lx50_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx50_11:
                        test             rax, rax
                                                                                        jz    .Lx50_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx50_4]
                        lea              rdx, [rip + .Lx50_5]
                                                                                        jmp   rax
.Lx50_4:
                                                                                        jmp   n41_match_alternate_s1
.Lx50_5:
                                                                                        jmp   n41_match_alternate_af
.Lx50_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx50_2:
                        test             rax, rax
                                                                                        je    .Lx50_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx50_7]
                        lea              rdx, [rip + .Lx50_8]
                                                                                        jmp   rax
.Lx50_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx50_2
.Lx50_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx50_2
.Lx50_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n41_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx50_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n41_match_alternate_s1
.Lx50_6:
                        add              rsp, 16
                                                                                        jmp   n41_match_alternate_af
n42_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n43_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx51_11
                        mov              rax, qword ptr [1879052336]                    # B
                        mov              rdx, qword ptr [1879052344]
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
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx51_11:
                        test             rax, rax
                                                                                        jz    .Lx51_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx51_4]
                        lea              rdx, [rip + .Lx51_5]
                                                                                        jmp   rax
.Lx51_4:
                                                                                        jmp   n41_match_alternate_s0
.Lx51_5:
                                                                                        jmp   n41_match_alternate_af
.Lx51_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
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
                                                                                        js    n41_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx51_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n41_match_alternate_s0
.Lx51_6:
                        add              rsp, 16
                                                                                        jmp   n41_match_alternate_af
n43_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx52_0
                        mov              ecx, dword ptr [rbp + 152]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx52_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx53_0
                        mov              eax, dword ptr [rbp + 152]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx53_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx53_0
                        mov              dword ptr [rbp + 152], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx53_0:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              rbp, qword ptr [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, qword ptr [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, qword ptr [rbp + 184]
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
                        mov              esi, 48
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
                        mov              esi, 80
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
                        mov              esi, 80
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
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "eps"
.Lgvan1:                .string          "open"
.Lgvan2:                .string          "close"
.Lgvan3:                .string          "B"
.Lgvan4:                .string          "s"
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
#         eps    = LEN(0)
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_begin_α:
                                                                                        jmp   n55_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n56_call_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n56_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd105:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd105]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx104_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n59_statement_begin_α
.Lx104_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n57_assign_α
n56_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # eps
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n58_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n59_statement_begin_α
#=======================================================================================================================
#         open   = '(' | '[' | '{' | '<'
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:
                                                                                        jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n61_call_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd113:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd113]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx112_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n64_statement_begin_α
.Lx112_240:
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
                        mov              qword ptr [1879052304], rax                    # open
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n63_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n64_statement_begin_α
#=======================================================================================================================
#         close  = ')' | ']' | '}' | '>'
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:
                                                                                        jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n66_call_α
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd121:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd121]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx120_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n69_statement_begin_α
.Lx120_240:
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
                        mov              qword ptr [1879052320], rax                    # close
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n68_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n69_statement_begin_α
#=======================================================================================================================
#         B      = open FENCE(*B | eps) close
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:
                                                                                        jmp   n70_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n71_call_α
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd129:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd129]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx128_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n74_statement_begin_α
.Lx128_240:
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
                        mov              qword ptr [1879052336], rax                    # B
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n73_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n74_statement_begin_α
#=======================================================================================================================
#         s      = '([{<>}])'
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_begin_α:
                                                                                        jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n76_assign_α
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "([{<>}])"
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # s
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n77_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n78_statement_begin_α
#=======================================================================================================================
#         s POS(0) *B RPOS(0)                                   :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_begin_α:
                                                                                        jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        sub              rsp, 464
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # s
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n80_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n80_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 344], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 352], r13                     # outer_Σ
                        mov              qword ptr [rbp + 360], r14                     # outer_δ
                        mov              qword ptr [rbp + 368], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 376], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 320], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 312], rax                     # patstk_mark
                        mov              dword ptr [rbp + 304], 0                       # start_δ
.Lx143_0:
                        mov              r14d, dword ptr [rbp + 304]
                                                                                        jmp   n81_match_sequence_α
n80_match_begin_β:
                        add              dword ptr [rbp + 304], 1
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, r15d
                                                                                        jg    .Lx143_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx143_1
                                                                                        jmp   .Lx143_0
.Lx143_1:
                        mov              rax, qword ptr [rbp + 312]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 320]
                        mov              r10, qword ptr [1879048192]
.Lx143_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx143_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 352]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 360]                     # outer_δ
                        mov              r15, qword ptr [rbp + 368]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 376]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 344]                     # old_rbp
                        add              rsp, 464
                                                                                        jmp   n95_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n81_match_sequence_α:
                        mov              dword ptr [rbp + 384], r14d
                                                                                        jmp   n93_lit_integer_α
n81_match_sequence_as:
                                                                                        jmp   n82_match_end_α
n81_match_sequence_β:
                                                                                        jmp   n91_match_rpos_β
n81_match_sequence_af:
                                                                                        jmp   n80_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n82_match_end_α:
                        mov              rax, qword ptr [rbp + 312]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 320]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx147_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx147_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx147_1:
                        test             rax, rax
                                                                                        je    .Lx147_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx147_3]
                        lea              rdx, [rip + .Lx147_4]
                                                                                        jmp   rax
.Lx147_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx147_1
.Lx147_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx147_1
.Lx147_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx147_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx147_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 352]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 360]                     # outer_δ
                        mov              r15, qword ptr [rbp + 368]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 376]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n83_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:
                        mov              rbp, qword ptr [rbp + 344]                     # old_rbp
                        add              rsp, 464
                                                                                        jmp   n84_statement_begin_α
#=======================================================================================================================
# YES     OUTPUT = 'mixed ' s                                   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_begin_α:
                                                                                        jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n86_var_α
.Lx152_0:
                        .quad            .Lx152_0_s
.Lx152_0_s:
                        .string          "mixed "
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # s
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n87_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n87_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n88_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx155_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n89_statement_end_α
.Lx155_0:
                        .quad            .Lx155_0_s
.Lx155_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:
                        mov              qword ptr [rsp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n91_match_rpos_α
n90_lit_integer_β:
                                                                                        jmp   n92_match_defer_β
.Lx158_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n91_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n92_match_defer_β
                                                                                        jmp   n82_match_end_α
n91_match_rpos_β:
                                                                                        jmp   n92_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n92_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx160_11
                        mov              rax, qword ptr [1879052336]                    # B
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 8
                                                                                        jne   .Lx160_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx160_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx160_10
.Lx160_9:
                        xor              eax, eax
.Lx160_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx160_11:
                        test             rax, rax
                                                                                        jz    .Lx160_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx160_4]
                        lea              rdx, [rip + .Lx160_5]
                                                                                        jmp   rax
.Lx160_4:
                                                                                        jmp   n90_lit_integer_α
.Lx160_5:
                                                                                        jmp   n80_match_begin_β
.Lx160_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx160_2:
                        test             rax, rax
                                                                                        je    .Lx160_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx160_7]
                        lea              rdx, [rip + .Lx160_8]
                                                                                        jmp   rax
.Lx160_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx160_2
.Lx160_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx160_2
.Lx160_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n80_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx160_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n90_lit_integer_α
.Lx160_6:
                        add              rsp, 16
                                                                                        jmp   n80_match_begin_β
n92_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:
                        mov              qword ptr [rsp + 400], 3                       # result
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n94_match_pos_α
n93_lit_integer_β:
                                                                                        jmp   n80_match_begin_β
.Lx161_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n94_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n80_match_begin_β
                                                                                        jmp   n92_match_defer_α
n94_match_pos_β:
                                                                                        jmp   n80_match_begin_β
#=======================================================================================================================
# NO      OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_begin_α:
                                                                                        jmp   n96_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n97_assign_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx166_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n98_statement_end_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n99_goto_α:
                                                                                        jmp   n84_statement_begin_α
n99_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n100_goto_α:
                                                                                        jmp   n95_statement_begin_α
n100_goto_β:
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
.S0:                    .string          "open"
.S1:                    .string          "close"
.S2:                    .string          "eps"
.S3:                    .string          "B"
                        .text
                        .section         .note.GNU-stack,"",@progbits
