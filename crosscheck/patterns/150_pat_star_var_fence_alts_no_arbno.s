                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 104], rcx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 96], r8
                        mov              dword ptr [rsp + 88], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + proc_PAT$0_ω]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx4_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n2_match_lit_α
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
                                                                                        jmp   n2_match_lit_β
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
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 98
                                                                                        jne   n0_match_alternate_af
                        add              r14d, 2
                                                                                        jmp   n0_match_alternate_s1
n1_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n2_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n0_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n0_match_alternate_s0
n2_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n0_match_alternate_af
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx9_0
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx9_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx10_0
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx10_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx10_0
                        mov              dword ptr [rbp + 88], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx10_0:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 64]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              rbp, qword ptr [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, qword ptr [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        sub              rsp, 240
                        mov              qword ptr [rsp + 216], rcx
                        mov              qword ptr [rsp + 224], rdx
                        mov              qword ptr [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 208], r8
                        mov              dword ptr [rsp + 200], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n11_match_alternate_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n11_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx21_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n19_match_defer_α
.Lx21_21:
                        lea              rax, [rip + .Lx21_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n16_match_sequence_α
.Lx21_22:
                        lea              rax, [rip + .Lx21_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n12_match_sequence_α
n11_match_alternate_s0:
                        lea              rax, [rip + .Lx21_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n11_match_alternate_as
n11_match_alternate_s1:
                        lea              rax, [rip + .Lx21_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n11_match_alternate_as
n11_match_alternate_s2:
                        lea              rax, [rip + .Lx21_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n11_match_alternate_as
.Lx21_40:
                                                                                        jmp   n19_match_defer_β
.Lx21_41:
                                                                                        jmp   n16_match_sequence_β
.Lx21_42:
                                                                                        jmp   n12_match_sequence_β
n11_match_alternate_as:
                                                                                        jmp   proc_PAT$1_γ
n11_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n11_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx21_19:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_match_sequence_α:
                        mov              dword ptr [rbp + 112], r14d
                                                                                        jmp   n15_match_defer_α
n12_match_sequence_as:
                                                                                        jmp   n11_match_alternate_s2
n12_match_sequence_β:
                                                                                        jmp   n13_match_defer_β
n12_match_sequence_af:
                                                                                        jmp   n11_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n13_match_defer_α:
                        mov              qword ptr [rbp + 160], rsp
                        mov              rax, qword ptr [1879052288]                    # cmd
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx24_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx24_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx24_10
.Lx24_9:
                        xor              eax, eax
.Lx24_10:
                        test             rax, rax
                                                                                        jz    .Lx24_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx24_4]
                        lea              rdx, [rip + .Lx24_5]
                                                                                        jmp   rax
.Lx24_4:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n11_match_alternate_s2
.Lx24_5:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n14_match_defer_β
.Lx24_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
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
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx24_2
.Lx24_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx24_2
.Lx24_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n14_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx24_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n11_match_alternate_s2
.Lx24_6:
                        add              rsp, 16
                                                                                        jmp   n14_match_defer_β
n13_match_defer_β:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n14_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_defer_α:
                        mov              qword ptr [rbp + 144], rsp
                        mov              rax, qword ptr [1879052288]                    # cmd
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx25_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx25_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx25_10
.Lx25_9:
                        xor              eax, eax
.Lx25_10:
                        test             rax, rax
                                                                                        jz    .Lx25_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx25_4]
                        lea              rdx, [rip + .Lx25_5]
                                                                                        jmp   rax
.Lx25_4:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n13_match_defer_α
.Lx25_5:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n15_match_defer_β
.Lx25_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
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
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx25_2
.Lx25_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx25_2
.Lx25_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n15_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx25_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n13_match_defer_α
.Lx25_6:
                        add              rsp, 16
                                                                                        jmp   n15_match_defer_β
n14_match_defer_β:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n15_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_defer_α:
                        mov              qword ptr [rbp + 128], rsp
                        mov              rax, qword ptr [1879052288]                    # cmd
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx26_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx26_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx26_10
.Lx26_9:
                        xor              eax, eax
.Lx26_10:
                        test             rax, rax
                                                                                        jz    .Lx26_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx26_4]
                        lea              rdx, [rip + .Lx26_5]
                                                                                        jmp   rax
.Lx26_4:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n14_match_defer_α
.Lx26_5:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n11_match_alternate_af
.Lx26_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
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
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx26_2
.Lx26_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx26_2
.Lx26_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n11_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx26_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n14_match_defer_α
.Lx26_6:
                        add              rsp, 16
                                                                                        jmp   n11_match_alternate_af
n15_match_defer_β:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n11_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n16_match_sequence_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   n18_match_defer_α
n16_match_sequence_as:
                                                                                        jmp   n11_match_alternate_s1
n16_match_sequence_β:
                                                                                        jmp   n17_match_defer_β
n16_match_sequence_af:
                                                                                        jmp   n11_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n17_match_defer_α:
                        mov              qword ptr [rbp + 96], rsp
                        mov              rax, qword ptr [1879052288]                    # cmd
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx29_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx29_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx29_10
.Lx29_9:
                        xor              eax, eax
.Lx29_10:
                        test             rax, rax
                                                                                        jz    .Lx29_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx29_4]
                        lea              rdx, [rip + .Lx29_5]
                                                                                        jmp   rax
.Lx29_4:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n11_match_alternate_s1
.Lx29_5:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n18_match_defer_β
.Lx29_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx29_2:
                        test             rax, rax
                                                                                        je    .Lx29_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx29_7]
                        lea              rdx, [rip + .Lx29_8]
                                                                                        jmp   rax
.Lx29_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx29_2
.Lx29_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx29_2
.Lx29_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n18_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx29_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n11_match_alternate_s1
.Lx29_6:
                        add              rsp, 16
                                                                                        jmp   n18_match_defer_β
n17_match_defer_β:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n18_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_defer_α:
                        mov              qword ptr [rbp + 80], rsp
                        mov              rax, qword ptr [1879052288]                    # cmd
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx30_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx30_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx30_10
.Lx30_9:
                        xor              eax, eax
.Lx30_10:
                        test             rax, rax
                                                                                        jz    .Lx30_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx30_4]
                        lea              rdx, [rip + .Lx30_5]
                                                                                        jmp   rax
.Lx30_4:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n17_match_defer_α
.Lx30_5:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n11_match_alternate_af
.Lx30_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
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
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx30_2
.Lx30_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx30_2
.Lx30_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n11_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx30_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n17_match_defer_α
.Lx30_6:
                        add              rsp, 16
                                                                                        jmp   n11_match_alternate_af
n18_match_defer_β:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n11_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n19_match_defer_α:
                        mov              qword ptr [rbp + 48], rsp
                        mov              rax, qword ptr [1879052288]                    # cmd
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx31_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx31_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx31_10
.Lx31_9:
                        xor              eax, eax
.Lx31_10:
                        test             rax, rax
                                                                                        jz    .Lx31_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx31_4]
                        lea              rdx, [rip + .Lx31_5]
                                                                                        jmp   rax
.Lx31_4:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n11_match_alternate_s0
.Lx31_5:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n11_match_alternate_af
.Lx31_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx31_2:
                        test             rax, rax
                                                                                        je    .Lx31_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx31_7]
                        lea              rdx, [rip + .Lx31_8]
                                                                                        jmp   rax
.Lx31_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx31_2
.Lx31_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx31_2
.Lx31_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n11_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx31_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n11_match_alternate_s0
.Lx31_6:
                        add              rsp, 16
                                                                                        jmp   n11_match_alternate_af
n19_match_defer_β:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n11_match_alternate_af
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 208], 1
                                                                                        jne   .Lx32_0
                        mov              ecx, dword ptr [rbp + 200]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx32_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 208], 1
                                                                                        jne   .Lx33_0
                        mov              eax, dword ptr [rbp + 200]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx33_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx33_0
                        mov              dword ptr [rbp + 200], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
.Lx33_0:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              rbp, qword ptr [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
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
                        mov              esi, 80
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
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "cmd"
.Lgvan1:                .string          "outer"
.Lgvan2:                .string          "s"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 3
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 3
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
#         cmd   = FENCE('a' | 'ab')
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_begin_α:
                                                                                        jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n36_call_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n36_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd75:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd75]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx74_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n39_statement_begin_α
.Lx74_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n37_assign_α
n36_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n39_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # cmd
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n38_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n39_statement_begin_α
#=======================================================================================================================
#         outer = (*cmd | *cmd *cmd | *cmd *cmd *cmd)
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_begin_α:
                                                                                        jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n41_call_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n41_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd83:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd83]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx82_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n44_statement_begin_α
.Lx82_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n42_assign_α
n41_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n44_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # outer
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n43_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n44_statement_begin_α
#=======================================================================================================================
#         s     = 'aab'
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_begin_α:
                                                                                        jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n46_assign_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "aab"
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # s
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n47_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n48_statement_begin_α
#=======================================================================================================================
#         s POS(0) *outer RPOS(0)                               :S(MATCH)F(NOM)
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_begin_α:
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        sub              rsp, 336
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # s
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n50_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n50_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 216], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 224], r13                     # outer_Σ
                        mov              qword ptr [rbp + 232], r14                     # outer_δ
                        mov              qword ptr [rbp + 240], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 248], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 192], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 184], rax                     # patstk_mark
                        mov              dword ptr [rbp + 176], 0                       # start_δ
.Lx97_0:
                        mov              r14d, dword ptr [rbp + 176]
                                                                                        jmp   n51_match_sequence_α
n50_match_begin_β:
                        add              dword ptr [rbp + 176], 1
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, r15d
                                                                                        jg    .Lx97_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx97_1
                                                                                        jmp   .Lx97_0
.Lx97_1:
                        mov              rax, qword ptr [rbp + 184]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 192]
                        mov              r10, qword ptr [1879048192]
.Lx97_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx97_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 224]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 232]                     # outer_δ
                        mov              r15, qword ptr [rbp + 240]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 248]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 216]                     # old_rbp
                        add              rsp, 336
                                                                                        jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n51_match_sequence_α:
                        mov              dword ptr [rbp + 256], r14d
                                                                                        jmp   n63_lit_integer_α
n51_match_sequence_as:
                                                                                        jmp   n52_match_end_α
n51_match_sequence_β:
                                                                                        jmp   n61_match_rpos_β
n51_match_sequence_af:
                                                                                        jmp   n50_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n52_match_end_α:
                        mov              rax, qword ptr [rbp + 184]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 192]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx101_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx101_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx101_1:
                        test             rax, rax
                                                                                        je    .Lx101_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx101_3]
                        lea              rdx, [rip + .Lx101_4]
                                                                                        jmp   rax
.Lx101_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx101_1
.Lx101_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx101_1
.Lx101_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx101_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx101_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 224]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 232]                     # outer_δ
                        mov              r15, qword ptr [rbp + 240]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 248]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n53_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_end_α:
                        mov              rbp, qword ptr [rbp + 216]                     # old_rbp
                        add              rsp, 336
                                                                                        jmp   n54_statement_begin_α
#=======================================================================================================================
# MATCH   OUTPUT = 'matched: ' s                                :(END)
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_begin_α:
                                                                                        jmp   n55_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n56_var_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "matched: "
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # s
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n57_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n58_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx109_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n59_statement_end_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        mov              qword ptr [rsp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n61_match_rpos_α
n60_lit_integer_β:
                                                                                        jmp   n62_match_defer_β
.Lx112_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n61_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n62_match_defer_β
                                                                                        jmp   n52_match_end_α
n61_match_rpos_β:
                                                                                        jmp   n62_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n62_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx114_11
                        mov              rax, qword ptr [1879052304]                    # outer
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx114_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx114_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx114_10
.Lx114_9:
                        xor              eax, eax
.Lx114_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx114_11:
                        test             rax, rax
                                                                                        jz    .Lx114_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx114_4]
                        lea              rdx, [rip + .Lx114_5]
                                                                                        jmp   rax
.Lx114_4:
                                                                                        jmp   n60_lit_integer_α
.Lx114_5:
                                                                                        jmp   n50_match_begin_β
.Lx114_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx114_2:
                        test             rax, rax
                                                                                        je    .Lx114_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx114_7]
                        lea              rdx, [rip + .Lx114_8]
                                                                                        jmp   rax
.Lx114_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx114_2
.Lx114_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx114_2
.Lx114_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n50_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx114_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n60_lit_integer_α
.Lx114_6:
                        add              rsp, 16
                                                                                        jmp   n50_match_begin_β
n62_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:
                        mov              qword ptr [rsp + 272], 3                       # result
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n64_match_pos_α
n63_lit_integer_β:
                                                                                        jmp   n50_match_begin_β
.Lx115_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n64_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n50_match_begin_β
                                                                                        jmp   n62_match_defer_α
n64_match_pos_β:
                                                                                        jmp   n50_match_begin_β
#=======================================================================================================================
# NOM     OUTPUT = 'no match (seals held all paths)'
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:
                                                                                        jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n67_assign_α
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "no match (seals held all paths)"
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx120_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n68_statement_end_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n69_goto_α:
                                                                                        jmp   n54_statement_begin_α
n69_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n70_goto_α:
                                                                                        jmp   n65_statement_begin_α
n70_goto_β:
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
.S0:                    .string          "cmd"
.S1:                    .string          "outer"
                        .text
                        .section         .note.GNU-stack,"",@progbits
