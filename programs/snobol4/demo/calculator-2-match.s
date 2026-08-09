                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        sub              rsp, 176
                        mov              qword ptr [rsp + 152], rcx
                        mov              qword ptr [rsp + 160], rdx
                        mov              qword ptr [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 144], r8
                        mov              dword ptr [rsp + 136], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + n0_match_alternate_β]
                        mov              qword ptr [rbp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx8_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n6_match_defer_α
.Lx8_21:
                        lea              rax, [rip + .Lx8_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n5_match_defer_α
.Lx8_22:
                        lea              rax, [rip + .Lx8_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n2_match_lit_α
n0_match_alternate_s0:
                        lea              rax, [rip + .Lx8_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n0_match_alternate_as
n0_match_alternate_s1:
                        lea              rax, [rip + .Lx8_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n0_match_alternate_as
n0_match_alternate_s2:
                        lea              rax, [rip + .Lx8_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n0_match_alternate_as
.Lx8_40:
                                                                                        jmp   n6_match_defer_β
.Lx8_41:
                                                                                        jmp   n5_match_defer_β
.Lx8_42:
                                                                                        jmp   n1_goto_β
n0_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n0_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n0_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx8_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_goto_α:
                                                                                        jmp   n0_match_alternate_af
n1_goto_β:
                                                                                        jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n2_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n0_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n3_match_defer_α
n2_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n3_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx12_11
                        mov              rax, qword ptr [1879052368]                    # X
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 8
                                                                                        jne   .Lx12_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx12_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx12_10
.Lx12_9:
                        xor              eax, eax
.Lx12_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx12_11:
                        test             rax, rax
                                                                                        jz    .Lx12_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx12_4]
                        lea              rdx, [rip + .Lx12_5]
                                                                                        jmp   rax
.Lx12_4:
                                                                                        jmp   n4_match_lit_α
.Lx12_5:
                                                                                        jmp   n2_match_lit_β
.Lx12_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx12_2:
                        test             rax, rax
                                                                                        je    .Lx12_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx12_7]
                        lea              rdx, [rip + .Lx12_8]
                                                                                        jmp   rax
.Lx12_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx12_2
.Lx12_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx12_2
.Lx12_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n2_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx12_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n4_match_lit_α
.Lx12_6:
                        add              rsp, 16
                                                                                        jmp   n2_match_lit_β
n3_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n4_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n3_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n3_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n0_match_alternate_s2
n4_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n3_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_defer_α:
                        mov              rax, qword ptr [1879052448]                    # PAT$2$V1
                        mov              rdx, qword ptr [1879052456]
                        cmp              eax, 8
                                                                                        jne   .Lx15_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx15_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx15_10
.Lx15_9:
                        xor              eax, eax
.Lx15_10:
                        test             rax, rax
                                                                                        jz    .Lx15_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx15_4]
                        lea              rdx, [rip + .Lx15_5]
                                                                                        jmp   rax
.Lx15_4:
                                                                                        jmp   n0_match_alternate_s1
.Lx15_5:
                                                                                        jmp   n0_match_alternate_af
.Lx15_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx15_2:
                        test             rax, rax
                                                                                        je    .Lx15_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx15_7]
                        lea              rdx, [rip + .Lx15_8]
                                                                                        jmp   rax
.Lx15_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx15_2
.Lx15_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx15_2
.Lx15_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n0_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx15_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n0_match_alternate_s1
.Lx15_6:
                        add              rsp, 16
                                                                                        jmp   n0_match_alternate_af
n5_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n6_match_defer_α:
                        mov              rax, qword ptr [1879052432]                    # PAT$2$V0
                        mov              rdx, qword ptr [1879052440]
                        cmp              eax, 8
                                                                                        jne   .Lx16_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx16_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx16_10
.Lx16_9:
                        xor              eax, eax
.Lx16_10:
                        test             rax, rax
                                                                                        jz    .Lx16_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx16_4]
                        lea              rdx, [rip + .Lx16_5]
                                                                                        jmp   rax
.Lx16_4:
                                                                                        jmp   n0_match_alternate_s0
.Lx16_5:
                                                                                        jmp   n0_match_alternate_af
.Lx16_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx16_2:
                        test             rax, rax
                                                                                        je    .Lx16_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx16_7]
                        lea              rdx, [rip + .Lx16_8]
                                                                                        jmp   rax
.Lx16_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx16_2
.Lx16_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx16_2
.Lx16_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n0_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx16_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n0_match_alternate_s0
.Lx16_6:
                        add              rsp, 16
                                                                                        jmp   n0_match_alternate_af
n6_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   .Lx17_0
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx17_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   .Lx18_0
                        mov              eax, dword ptr [rbp + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx18_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx18_0
                        mov              dword ptr [rbp + 136], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx18_0:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 112]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              rbp, qword ptr [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, qword ptr [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, qword ptr [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rcx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 152], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 128], r8
                        mov              dword ptr [rsp + 120], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + n19_match_alternate_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n19_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx25_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n23_match_defer_α
.Lx25_21:
                        lea              rax, [rip + .Lx25_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n21_match_any_α
n19_match_alternate_s0:
                        lea              rax, [rip + .Lx25_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n19_match_alternate_as
n19_match_alternate_s1:
                        lea              rax, [rip + .Lx25_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n19_match_alternate_as
.Lx25_40:
                                                                                        jmp   n23_match_defer_β
.Lx25_41:
                                                                                        jmp   n20_goto_β
n19_match_alternate_as:
                                                                                        jmp   proc_PAT$3_γ
n19_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n19_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx25_19:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_goto_α:
                                                                                        jmp   n19_match_alternate_af
n20_goto_β:
                                                                                        jmp   n19_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n21_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n19_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43
                                                                                        je    .Lx28_0
                        cmp              esi, 45
                                                                                        je    .Lx28_0
                                                                                        jmp   n19_match_alternate_af
.Lx28_0:
                        add              r14d, 1
                                                                                        jmp   n22_match_defer_α
n21_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n19_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n22_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx29_11
                        mov              rax, qword ptr [1879052336]                    # F
                        mov              rdx, qword ptr [1879052344]
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
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx29_11:
                        test             rax, rax
                                                                                        jz    .Lx29_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx29_4]
                        lea              rdx, [rip + .Lx29_5]
                                                                                        jmp   rax
.Lx29_4:
                                                                                        jmp   n19_match_alternate_s1
.Lx29_5:
                                                                                        jmp   n21_match_any_β
.Lx29_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
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
                                                                                        js    n21_match_any_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx29_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n19_match_alternate_s1
.Lx29_6:
                        add              rsp, 16
                                                                                        jmp   n21_match_any_β
n22_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n23_match_defer_α:
                        mov              rax, qword ptr [1879052464]                    # PAT$3$V0
                        mov              rdx, qword ptr [1879052472]
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
                                                                                        jmp   n19_match_alternate_s0
.Lx30_5:
                                                                                        jmp   n19_match_alternate_af
.Lx30_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
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
                                                                                        js    n19_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx30_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n19_match_alternate_s0
.Lx30_6:
                        add              rsp, 16
                                                                                        jmp   n19_match_alternate_af
n23_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx31_0
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx31_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx32_0
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx32_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx32_0
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx32_0:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, qword ptr [rbp + 144]
                        lea              rsp, [rbp + 160]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 176], r8
                        mov              dword ptr [rsp + 168], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + proc_PAT$4_ω]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n33_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052480]                    # PAT$4$V0
                        mov              rdx, qword ptr [1879052488]
                        cmp              eax, 8
                                                                                        jne   .Lx37_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx37_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx37_10
.Lx37_9:
                        xor              eax, eax
.Lx37_10:
                        test             rax, rax
                                                                                        jz    .Lx37_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx37_4]
                        lea              rdx, [rip + .Lx37_5]
                                                                                        jmp   rax
.Lx37_4:
                                                                                        jmp   n34_match_arbno_α
.Lx37_5:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_scanfail
.Lx37_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx37_2:
                        test             rax, rax
                                                                                        je    .Lx37_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx37_7]
                        lea              rdx, [rip + .Lx37_8]
                                                                                        jmp   rax
.Lx37_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx37_2
.Lx37_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx37_2
.Lx37_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx37_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_scanfail
.Lx37_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx37_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n34_match_arbno_α
.Lx37_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_scanfail
n33_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n34_match_arbno_α:
                        mov              dword ptr [rbp + 48], r14d
                        mov              dword ptr [rbp + 52], r14d
                        mov              dword ptr [rbp + 56], 0
                        mov              qword ptr [rbp + 72], rsp
                        mov              qword ptr [rbp + 80], rbp
                        mov              qword ptr [rbp + 64], 0
                                                                                        jmp   proc_PAT$4_γ
n34_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 52]
                        mov              rax, qword ptr [rbp + 64]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 64], rsp
                        mov              rbp, rsp
                        add              rbp, -72
                                                                                        jmp   n35_match_any_α
n34_match_arbno_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              r14d, eax
                                                                                        je    n35_match_any_β
                        mov              rbp, qword ptr [rbp + 72]
                        mov              eax, dword ptr [rbp + 56]
                        add              eax, 1
                        mov              dword ptr [rbp + 56], eax
                        mov              dword ptr [rbp + 52], r14d
                                                                                        jmp   proc_PAT$4_γ
n34_match_arbno_af:
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              rsp, [rbp + 152]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 56]
                        test             ecx, ecx
                                                                                        jz    .Lx39_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 56], ecx
                        mov              qword ptr [rbp + 64], rax
                        lea              rbp, [rax + -72]
                                                                                        jmp   n35_match_any_β
.Lx39_2:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rbp, qword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 72]
                                                                                        jmp   n33_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n34_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 42
                                                                                        je    .Lx41_0
                        cmp              esi, 47
                                                                                        je    .Lx41_0
                                                                                        jmp   n34_match_arbno_af
.Lx41_0:
                        add              r14d, 1
                                                                                        jmp   n36_match_defer_α
n35_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n34_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n36_match_defer_α:
                        mov              rax, qword ptr [1879052496]                    # PAT$4$V1
                        mov              rdx, qword ptr [1879052504]
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
                        test             rax, rax
                                                                                        jz    .Lx42_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx42_4]
                        lea              rdx, [rip + .Lx42_5]
                                                                                        jmp   rax
.Lx42_4:
                                                                                        jmp   n34_match_arbno_as
.Lx42_5:
                                                                                        jmp   n35_match_any_β
.Lx42_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
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
                                                                                        js    n35_match_any_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx42_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n34_match_arbno_as
.Lx42_6:
                        add              rsp, 16
                                                                                        jmp   n35_match_any_β
n36_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx43_0
                        mov              ecx, dword ptr [rbp + 168]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx43_0:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx44_0
                        mov              eax, dword ptr [rbp + 168]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx44_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx44_0
                        mov              dword ptr [rbp + 168], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
.Lx44_0:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              rbp, qword ptr [rbp + 200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, qword ptr [rbp + 192]
                        lea              rsp, [rbp + 208]
                        mov              rbp, qword ptr [rbp + 200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 176], r8
                        mov              dword ptr [rsp + 168], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
                        lea              rax, [rip + proc_PAT$5_ω]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n45_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052512]                    # PAT$5$V0
                        mov              rdx, qword ptr [1879052520]
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
                        test             rax, rax
                                                                                        jz    .Lx49_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx49_4]
                        lea              rdx, [rip + .Lx49_5]
                                                                                        jmp   rax
.Lx49_4:
                                                                                        jmp   n46_match_arbno_α
.Lx49_5:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_scanfail
.Lx49_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
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
                                                                                        jns   .Lx49_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_scanfail
.Lx49_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx49_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n46_match_arbno_α
.Lx49_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_scanfail
n45_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n46_match_arbno_α:
                        mov              dword ptr [rbp + 48], r14d
                        mov              dword ptr [rbp + 52], r14d
                        mov              dword ptr [rbp + 56], 0
                        mov              qword ptr [rbp + 72], rsp
                        mov              qword ptr [rbp + 80], rbp
                        mov              qword ptr [rbp + 64], 0
                                                                                        jmp   proc_PAT$5_γ
n46_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 52]
                        mov              rax, qword ptr [rbp + 64]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 64], rsp
                        mov              rbp, rsp
                        add              rbp, -72
                                                                                        jmp   n47_match_any_α
n46_match_arbno_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              r14d, eax
                                                                                        je    n47_match_any_β
                        mov              rbp, qword ptr [rbp + 72]
                        mov              eax, dword ptr [rbp + 56]
                        add              eax, 1
                        mov              dword ptr [rbp + 56], eax
                        mov              dword ptr [rbp + 52], r14d
                                                                                        jmp   proc_PAT$5_γ
n46_match_arbno_af:
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              rsp, [rbp + 152]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 56]
                        test             ecx, ecx
                                                                                        jz    .Lx51_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 56], ecx
                        mov              qword ptr [rbp + 64], rax
                        lea              rbp, [rax + -72]
                                                                                        jmp   n47_match_any_β
.Lx51_2:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rbp, qword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 72]
                                                                                        jmp   n45_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n47_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n46_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43
                                                                                        je    .Lx53_0
                        cmp              esi, 45
                                                                                        je    .Lx53_0
                                                                                        jmp   n46_match_arbno_af
.Lx53_0:
                        add              r14d, 1
                                                                                        jmp   n48_match_defer_α
n47_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n46_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n48_match_defer_α:
                        mov              rax, qword ptr [1879052528]                    # PAT$5$V1
                        mov              rdx, qword ptr [1879052536]
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
                        test             rax, rax
                                                                                        jz    .Lx54_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx54_4]
                        lea              rdx, [rip + .Lx54_5]
                                                                                        jmp   rax
.Lx54_4:
                                                                                        jmp   n46_match_arbno_as
.Lx54_5:
                                                                                        jmp   n47_match_any_β
.Lx54_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]                               # varname
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
                                                                                        js    n47_match_any_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx54_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n46_match_arbno_as
.Lx54_6:
                        add              rsp, 16
                                                                                        jmp   n47_match_any_β
n48_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx55_0
                        mov              ecx, dword ptr [rbp + 168]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx55_0:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx56_0
                        mov              eax, dword ptr [rbp + 168]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx56_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx56_0
                        mov              dword ptr [rbp + 168], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
.Lx56_0:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$5_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              rbp, qword ptr [rbp + 200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                        mov              rax, qword ptr [rbp + 192]
                        lea              rsp, [rbp + 208]
                        mov              rbp, qword ptr [rbp + 200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$6_α
proc_PAT$6_α:
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rcx
                        mov              qword ptr [rsp + 240], rdx
                        mov              qword ptr [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 224], r8
                        mov              dword ptr [rsp + 216], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
                        lea              rax, [rip + proc_PAT$6_ω]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n58_match_pos_α
.Lx64_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n58_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        je    .Lx65_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$6_scanfail
.Lx65_240:
                                                                                        jmp   n59_match_arbno_α
n58_match_pos_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$6_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n59_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 96], rbp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   n60_lit_integer_α
n59_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 68]
                        mov              rax, qword ptr [rbp + 80]
                        sub              rsp, 96
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                                                                                        jmp   n62_match_defer_α
n59_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n62_match_defer_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   n60_lit_integer_α
n59_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 184]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx67_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n62_match_defer_β
.Lx67_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rbp, qword ptr [rbp + 96]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n58_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n61_match_rpos_α
.Lx68_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n61_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        je    .Lx69_240
                        add              rsp, 16
                                                                                        jmp   n59_match_arbno_β
.Lx69_240:
                                                                                        jmp   proc_PAT$6_scanhit
#-----------------------------------------------------------------------------------------------------------------------
n62_match_defer_α:
                        mov              rax, qword ptr [1879052544]                    # PAT$6$V0
                        mov              rdx, qword ptr [1879052552]
                        cmp              eax, 8
                                                                                        jne   .Lx70_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx70_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx70_10
.Lx70_9:
                        xor              eax, eax
.Lx70_10:
                        test             rax, rax
                                                                                        jz    .Lx70_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx70_4]
                        lea              rdx, [rip + .Lx70_5]
                                                                                        jmp   rax
.Lx70_4:
                                                                                        jmp   n63_match_defer_α
.Lx70_5:
                                                                                        jmp   n59_match_arbno_af
.Lx70_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx70_2:
                        test             rax, rax
                                                                                        je    .Lx70_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx70_7]
                        lea              rdx, [rip + .Lx70_8]
                                                                                        jmp   rax
.Lx70_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx70_2
.Lx70_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx70_2
.Lx70_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n59_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx70_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n63_match_defer_α
.Lx70_6:
                        add              rsp, 16
                                                                                        jmp   n59_match_arbno_af
n62_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n63_match_defer_α:
                        mov              rax, qword ptr [1879052560]                    # PAT$6$V1
                        mov              rdx, qword ptr [1879052568]
                        cmp              eax, 8
                                                                                        jne   .Lx71_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx71_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx71_10
.Lx71_9:
                        xor              eax, eax
.Lx71_10:
                        test             rax, rax
                                                                                        jz    .Lx71_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx71_4]
                        lea              rdx, [rip + .Lx71_5]
                                                                                        jmp   rax
.Lx71_4:
                                                                                        jmp   n59_match_arbno_as
.Lx71_5:
                                                                                        jmp   n62_match_defer_β
.Lx71_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx71_2:
                        test             rax, rax
                                                                                        je    .Lx71_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx71_7]
                        lea              rdx, [rip + .Lx71_8]
                                                                                        jmp   rax
.Lx71_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx71_2
.Lx71_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx71_2
.Lx71_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n62_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx71_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n59_match_arbno_as
.Lx71_6:
                        add              rsp, 16
                                                                                        jmp   n62_match_defer_β
n63_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   .Lx72_0
                        mov              ecx, dword ptr [rbp + 216]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx72_0:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   .Lx73_0
                        mov              eax, dword ptr [rbp + 216]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx73_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx73_0
                        mov              dword ptr [rbp + 216], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_attempt
.Lx73_0:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$6_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              rbp, qword ptr [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                        mov              rax, qword ptr [rbp + 240]
                        lea              rsp, [rbp + 256]
                        mov              rbp, qword ptr [rbp + 248]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "PAT$2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_PAT$2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 128
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "PAT$3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_PAT$3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "PAT$4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_PAT$4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "PAT$5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_PAT$5_α]
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
                        .section         .rodata
.Lstartup_pname4:       .string          "PAT$6"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_PAT$6_α]
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
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "V"
.Lgvan1:                .string          "I"
.Lgvan2:                .string          "A"
.Lgvan3:                .string          "F"
.Lgvan4:                .string          "T"
.Lgvan5:                .string          "X"
.Lgvan6:                .string          "eol"
.Lgvan7:                .string          "C"
.Lgvan8:                .string          "src"
.Lgvan9:                .string          "PAT$2$V0"
.Lgvan10:               .string          "PAT$2$V1"
.Lgvan11:               .string          "PAT$3$V0"
.Lgvan12:               .string          "PAT$4$V0"
.Lgvan13:               .string          "PAT$4$V1"
.Lgvan14:               .string          "PAT$5$V0"
.Lgvan15:               .string          "PAT$5$V1"
.Lgvan16:               .string          "PAT$6$V0"
.Lgvan17:               .string          "PAT$6$V1"
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
                        .quad            .Lgvan15
                        .quad            .Lgvan16
                        .quad            .Lgvan17
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 18
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 18
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
#         V              =  ANY('abcdefghijklmnopqrstuvwxyz')
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_begin_α:
                                                                                        jmp   n75_statement_end_α
n74_statement_begin_β:
                                                                                        jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:
                                                                                        jmp   n76_statement_begin_α
#=======================================================================================================================
#         I              =  SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:
                                                                                        jmp   n77_statement_end_α
n76_statement_begin_β:
                                                                                        jmp   n78_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:
                                                                                        jmp   n78_statement_begin_α
#=======================================================================================================================
#         A              =  V | I | '(' *X ')'
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_begin_α:
                                                                                        jmp   n79_var_α
n78_statement_begin_β:
                                                                                        jmp   n87_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # I
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n80_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # PAT$2$V1
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # V
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n82_assign_α
n81_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n78_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # PAT$2$V0
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n83_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n84_call_α
n83_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n81_var_β
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n84_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd178:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd178]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx177_240
                        add              rsp, 16
                                                                                        jmp   n83_lit_string_β
.Lx177_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n85_assign_α
n84_call_β:
                        add              rsp, 16
                                                                                        jmp   n83_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # A
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n86_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n87_statement_begin_α
#=======================================================================================================================
#         F              =  A | ANY('+-') *F
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:
                                                                                        jmp   n88_var_α
n87_statement_begin_β:
                                                                                        jmp   n94_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # A
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n89_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # PAT$3$V0
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n91_call_α
n90_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n87_statement_begin_β
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n91_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd188:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd188]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx187_240
                        add              rsp, 16
                                                                                        jmp   n90_lit_string_β
.Lx187_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n92_assign_α
n91_call_β:
                        add              rsp, 16
                                                                                        jmp   n90_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # F
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n93_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n94_statement_begin_α
#=======================================================================================================================
#         T              =  F ARBNO(ANY('*/') F)
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:
                                                                                        jmp   n95_var_α
n94_statement_begin_β:
                                                                                        jmp   n103_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # F
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n96_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052496], rax                    # PAT$4$V1
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # F
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n98_assign_α
n97_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n94_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052480], rax                    # PAT$4$V0
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n99_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n100_call_α
n99_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n97_var_β
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n100_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd200:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd200]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx199_240
                        add              rsp, 16
                                                                                        jmp   n99_lit_string_β
.Lx199_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n101_assign_α
n100_call_β:
                        add              rsp, 16
                                                                                        jmp   n99_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # T
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n102_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n103_statement_begin_α
#=======================================================================================================================
#         X              =  T ARBNO(ANY('+-') T)
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_begin_α:
                                                                                        jmp   n104_var_α
n103_statement_begin_β:
                                                                                        jmp   n112_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # T
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n105_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052528], rax                    # PAT$5$V1
                        mov              qword ptr [1879052536], rdx
                                                                                        jmp   n106_var_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # T
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n107_assign_α
n106_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n103_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052512], rax                    # PAT$5$V0
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n108_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n109_call_α
n108_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n106_var_β
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n109_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd212:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd212]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx211_240
                        add              rsp, 16
                                                                                        jmp   n108_lit_string_β
.Lx211_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n110_assign_α
n109_call_β:
                        add              rsp, 16
                                                                                        jmp   n108_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n110_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # X
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n111_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n112_statement_begin_α
#=======================================================================================================================
#         eol            =  CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_begin_α:
                                                                                        jmp   n113_lit_integer_α
n112_statement_begin_β:
                                                                                        jmp   n117_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n114_call_α
.Lx218_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n114_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd68:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd68]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx219_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n112_statement_begin_β
.Lx219_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n115_assign_α
n114_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n112_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # eol
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n116_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n117_statement_begin_α
#=======================================================================================================================
#         C              =  POS(0) ARBNO(X eol) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α:
                                                                                        jmp   n118_var_α
n117_statement_begin_β:
                                                                                        jmp   n126_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # eol
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n119_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052560], rax                    # PAT$6$V1
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n120_var_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # X
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n121_assign_α
n120_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n117_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052544], rax                    # PAT$6$V0
                        mov              qword ptr [1879052552], rdx
                                                                                        jmp   n122_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n123_call_α
n122_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n120_var_β
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n123_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd231:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd231]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx230_240
                        add              rsp, 16
                                                                                        jmp   n122_lit_string_β
.Lx230_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n124_assign_α
n123_call_β:
                        add              rsp, 16
                                                                                        jmp   n122_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # C
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n125_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n126_statement_begin_α
#=======================================================================================================================
#         &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_begin_α:
                                                                                        jmp   n127_lit_string_α
n126_statement_begin_β:
                                                                                        jmp   n131_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n128_lit_integer_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n129_call_α
n128_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n126_statement_begin_β
.Lx238_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n129_call_α:
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
.Lrkfnzd240:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd240]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx239_240
                        add              rsp, 16
                                                                                        jmp   n128_lit_integer_β
.Lx239_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n130_statement_end_α
n129_call_β:
                        add              rsp, 16
                                                                                        jmp   n128_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n131_statement_begin_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4000000]')
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_begin_α:
                                                                                        jmp   n132_lit_string_α
n131_statement_begin_β:
                                                                                        jmp   n138_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n133_call_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd247:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd247]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx246_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n131_statement_begin_β
.Lx246_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n134_lit_integer_α
n133_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n131_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n135_lit_string_α
n134_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n131_statement_begin_β
.Lx248_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n136_call_α
n135_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n134_lit_integer_β
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "[-f0 -r4000000]"
#-----------------------------------------------------------------------------------------------------------------------
n136_call_α:
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
.Lbynamefnzd90:         .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd90]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx250_240
                        add              rsp, 16
                                                                                        jmp   n135_lit_string_β
.Lx250_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n137_statement_end_α
n136_call_β:
                        add              rsp, 16
                                                                                        jmp   n135_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n138_statement_begin_α
#=======================================================================================================================
#         src            =  INPUT                          :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_begin_α:
                                                                                        jmp   n139_var_α
n138_statement_begin_β:
                                                                                        jmp   n157_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx255_0]                # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx255_240
                        add              rsp, 16
                                                                                        jmp   n138_statement_begin_β
.Lx255_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n140_assign_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # src
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n141_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n142_statement_begin_α
#=======================================================================================================================
#         src            C                                 :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_begin_α:
                                                                                        jmp   n143_var_α
n142_statement_begin_β:
                                                                                        jmp   n157_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # src
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # C
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n145_assign_α
n144_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n157_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n145_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx263_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n146_match_begin_α
n145_assign_β:
                                                                                        jmp   n144_var_β
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n146_match_begin_α:
                        mov              rdi, qword ptr [rsp + 16]                      # var
                        mov              rsi, qword ptr [rsp + 24]
                        sub              rsp, 64
                        mov              qword ptr [rbp + -40], r13                     # outer_Σ
                        mov              qword ptr [rbp + -32], r14                     # outer_δ
                        mov              qword ptr [rbp + -24], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + -16], rax                     # cap_gen
                        mov              qword ptr [rbp + -48], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + -56], rsp                     # zls2_mark
                        mov              dword ptr [rbp + -64], 0                       # start_δ
.Lx265_0:
                        mov              r14d, dword ptr [rbp + -64]
                                                                                        jmp   n147_match_defer_α
n146_match_begin_β:
                        add              dword ptr [rbp + -64], 1
                        mov              eax, dword ptr [rbp + -64]
                        cmp              eax, r15d
                                                                                        jg    .Lx265_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx265_1
                                                                                        jmp   .Lx265_0
.Lx265_1:
n146_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + -56]
                        mov              r13, qword ptr [rbp + -40]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -32]                     # outer_δ
                        mov              r15, qword ptr [rbp + -24]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -16]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + -48]                     # old_rbp
                        add              rsp, 64
                                                                                        jmp   n145_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n147_match_defer_α:
                        lea              rdi, [rip + .S11]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx266_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx266_4]
                        lea              rdx, [rip + .Lx266_5]
                                                                                        jmp   rax
.Lx266_4:
                                                                                        jmp   n148_match_end_α
.Lx266_5:
                                                                                        jmp   n146_match_begin_β
.Lx266_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S11]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx266_2:
                        test             rax, rax
                                                                                        je    .Lx266_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx266_7]
                        lea              rdx, [rip + .Lx266_8]
                                                                                        jmp   rax
.Lx266_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx266_2
.Lx266_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx266_2
.Lx266_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n146_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx266_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n148_match_end_α
.Lx266_6:
                        add              rsp, 16
                                                                                        jmp   n146_match_begin_β
n147_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n148_match_end_α:
                        mov              r10, r12
.Lx268_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx268_9
                        mov              rsp, qword ptr [rbp + -56]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx268_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx268_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx268_1:
                        test             rax, rax
                                                                                        je    .Lx268_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx268_3]
                        lea              rdx, [rip + .Lx268_4]
                                                                                        jmp   rax
.Lx268_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx268_1
.Lx268_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx268_1
.Lx268_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx268_10:
                        sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx268_10
                        mov              r13, qword ptr [rbp + -40]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -32]                     # outer_δ
                        mov              r15, qword ptr [rbp + -24]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + -48]                     # old_rbp
                                                                                        jmp   n149_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n150_statement_begin_α
#=======================================================================================================================
#         OUTPUT         =  'matched bytes=' SIZE(src)      :(END)
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_begin_α:
                                                                                        jmp   n151_lit_string_α
n150_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n152_var_α
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # src
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n153_call_α
n152_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n150_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n153_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd276:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd276]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx275_240
                        add              rsp, 16
                                                                                        jmp   n152_var_β
.Lx275_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n154_binop_α
n153_call_β:
                        add              rsp, 16
                                                                                        jmp   n152_var_β
#-----------------------------------------------------------------------------------------------------------------------
n154_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # lit_string
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n155_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n155_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx278_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n156_statement_end_α
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   main_γ
#=======================================================================================================================
# fail    OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_begin_α:
                                                                                        jmp   n158_lit_string_α
n157_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n159_assign_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n159_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx284_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n160_statement_end_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n161_goto_α:
                                                                                        jmp   n157_statement_begin_α
n161_goto_β:
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
.S0:                    .string          "X"
.S1:                    .string          "PAT$2$V1"
.S2:                    .string          "PAT$2$V0"
.S3:                    .string          "F"
.S4:                    .string          "PAT$3$V0"
.S5:                    .string          "PAT$4$V0"
.S6:                    .string          "PAT$4$V1"
.S7:                    .string          "PAT$5$V0"
.S8:                    .string          "PAT$5$V1"
.S9:                    .string          "PAT$6$V0"
.S10:                   .string          "PAT$6$V1"
.S11:                   .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
