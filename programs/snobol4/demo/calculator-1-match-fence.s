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
                        mov              qword ptr [rbp + 96], rsp
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
                        test             rax, rax
                                                                                        jz    .Lx12_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx12_4]
                        lea              rdx, [rip + .Lx12_5]
                                                                                        jmp   rax
.Lx12_4:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n4_match_lit_α
.Lx12_5:
                        mov              rsp, qword ptr [rbp + 96]
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
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n2_match_lit_β
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
                        sub              rsp, 176
                        mov              qword ptr [rsp + 152], rcx
                        mov              qword ptr [rsp + 160], rdx
                        mov              qword ptr [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 144], r8
                        mov              dword ptr [rsp + 136], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + n19_match_alternate_β]
                        mov              qword ptr [rbp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n19_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx28_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n26_match_defer_α
.Lx28_21:
                        lea              rax, [rip + .Lx28_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n24_match_lit_α
.Lx28_22:
                        lea              rax, [rip + .Lx28_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n21_match_lit_α
n19_match_alternate_s0:
                        lea              rax, [rip + .Lx28_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n19_match_alternate_as
n19_match_alternate_s1:
                        lea              rax, [rip + .Lx28_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n19_match_alternate_as
n19_match_alternate_s2:
                        lea              rax, [rip + .Lx28_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n19_match_alternate_as
.Lx28_40:
                                                                                        jmp   n26_match_defer_β
.Lx28_41:
                                                                                        jmp   n23_goto_β
.Lx28_42:
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
.Lx28_19:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_goto_α:
                                                                                        jmp   n19_match_alternate_af
n20_goto_β:
                                                                                        jmp   n19_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n21_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n19_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n19_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n22_match_defer_α
n21_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n19_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n22_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx32_11
                        mov              rax, qword ptr [1879052336]                    # F
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 8
                                                                                        jne   .Lx32_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx32_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx32_10
.Lx32_9:
                        xor              eax, eax
.Lx32_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx32_11:
                        test             rax, rax
                                                                                        jz    .Lx32_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx32_4]
                        lea              rdx, [rip + .Lx32_5]
                                                                                        jmp   rax
.Lx32_4:
                                                                                        jmp   n19_match_alternate_s2
.Lx32_5:
                                                                                        jmp   n21_match_lit_β
.Lx32_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx32_2:
                        test             rax, rax
                                                                                        je    .Lx32_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx32_7]
                        lea              rdx, [rip + .Lx32_8]
                                                                                        jmp   rax
.Lx32_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx32_2
.Lx32_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx32_2
.Lx32_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n21_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx32_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n19_match_alternate_s2
.Lx32_6:
                        add              rsp, 16
                                                                                        jmp   n21_match_lit_β
n22_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n23_goto_α:
                                                                                        jmp   n19_match_alternate_af
n23_goto_β:
                                                                                        jmp   n19_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n24_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n19_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n19_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n25_match_defer_α
n24_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n19_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n25_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx36_11
                        mov              rax, qword ptr [1879052336]                    # F
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 8
                                                                                        jne   .Lx36_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx36_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx36_10
.Lx36_9:
                        xor              eax, eax
.Lx36_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx36_11:
                        test             rax, rax
                                                                                        jz    .Lx36_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx36_4]
                        lea              rdx, [rip + .Lx36_5]
                                                                                        jmp   rax
.Lx36_4:
                                                                                        jmp   n19_match_alternate_s1
.Lx36_5:
                                                                                        jmp   n24_match_lit_β
.Lx36_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
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
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx36_2
.Lx36_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx36_2
.Lx36_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n24_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx36_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n19_match_alternate_s1
.Lx36_6:
                        add              rsp, 16
                                                                                        jmp   n24_match_lit_β
n25_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n26_match_defer_α:
                        mov              rax, qword ptr [1879052464]                    # PAT$3$V0
                        mov              rdx, qword ptr [1879052472]
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
                                                                                        jmp   n19_match_alternate_s0
.Lx37_5:
                                                                                        jmp   n19_match_alternate_af
.Lx37_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
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
                                                                                        js    n19_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx37_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n19_match_alternate_s0
.Lx37_6:
                        add              rsp, 16
                                                                                        jmp   n19_match_alternate_af
n26_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   .Lx38_0
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx38_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   .Lx39_0
                        mov              eax, dword ptr [rbp + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx39_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx39_0
                        mov              dword ptr [rbp + 136], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx39_0:
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
n40_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052480]                    # PAT$4$V0
                        mov              rdx, qword ptr [1879052488]
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
                                                                                        jmp   n41_match_fence1_α
.Lx49_5:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_scanfail
.Lx49_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]                               # varname
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
                                                                                        jmp   proc_PAT$4_scanfail
.Lx49_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx49_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n41_match_fence1_α
.Lx49_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_scanfail
n40_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n41_match_fence1_α:
                        mov              qword ptr [rbp + 16], rsp
                        mov              qword ptr [rbp + 48], rsp
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
                                                                                        jmp   n42_match_alternate_α
n41_match_fence1_as:
                        mov              rsp, rbp
                        pop              rbp
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   proc_PAT$4_γ
n41_match_fence1_af:
                        mov              rsp, rbp
                        pop              rbp
n41_match_fence1_β:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n40_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n42_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx53_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n45_match_alternate_α
.Lx53_21:
                        lea              rax, [rip + .Lx53_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n43_match_lit_α
n42_match_alternate_s0:
                        lea              rax, [rip + .Lx53_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n42_match_alternate_as
n42_match_alternate_s1:
                        lea              rax, [rip + .Lx53_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n42_match_alternate_as
.Lx53_40:
                                                                                        jmp   n44_goto_β
.Lx53_41:
                                                                                        jmp   n43_match_lit_β
n42_match_alternate_as:
                                                                                        jmp   n41_match_fence1_as
n42_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n42_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx53_19:
                                                                                        jmp   n41_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n43_match_lit_α:
                                                                                        jmp   n42_match_alternate_s1
n43_match_lit_β:
                                                                                        jmp   n42_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n44_goto_α:
                                                                                        jmp   n42_match_alternate_af
n44_goto_β:
                                                                                        jmp   n42_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n45_match_alternate_α:
                        mov              dword ptr [rbp + 64], r14d
                        lea              rax, [rip + .Lx58_21]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n48_match_lit_α
.Lx58_21:
                        lea              rax, [rip + .Lx58_19]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n47_match_lit_α
n45_match_alternate_s0:
                        lea              rax, [rip + .Lx58_40]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n45_match_alternate_as
n45_match_alternate_s1:
                        lea              rax, [rip + .Lx58_41]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n45_match_alternate_as
.Lx58_40:
                                                                                        jmp   n48_match_lit_β
.Lx58_41:
                                                                                        jmp   n47_match_lit_β
n45_match_alternate_as:
                                                                                        jmp   n46_match_defer_α
n45_match_alternate_β:
                        mov              rax, qword ptr [rbp + 72]
                                                                                        jmp   rax
n45_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rax, qword ptr [rbp + 80]
                                                                                        jmp   rax
.Lx58_19:
                                                                                        jmp   n42_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n46_match_defer_α:
                        mov              qword ptr [rbp + 112], rsp
                        mov              rax, qword ptr [1879052352]                    # T
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 8
                                                                                        jne   .Lx59_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx59_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx59_10
.Lx59_9:
                        xor              eax, eax
.Lx59_10:
                        test             rax, rax
                                                                                        jz    .Lx59_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx59_4]
                        lea              rdx, [rip + .Lx59_5]
                                                                                        jmp   rax
.Lx59_4:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n42_match_alternate_s0
.Lx59_5:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n45_match_alternate_β
.Lx59_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
                        xor              esi, esi                                       # ival_flag
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
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx59_2
.Lx59_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx59_2
.Lx59_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n45_match_alternate_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx59_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n42_match_alternate_s0
.Lx59_6:
                        add              rsp, 16
                                                                                        jmp   n45_match_alternate_β
n46_match_defer_β:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n45_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n47_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n45_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   n45_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n45_match_alternate_s1
n47_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n45_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n48_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n45_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   n45_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n45_match_alternate_s0
n48_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n45_match_alternate_af
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx64_0
                        mov              ecx, dword ptr [rbp + 168]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx64_0:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx65_0
                        mov              eax, dword ptr [rbp + 168]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx65_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx65_0
                        mov              dword ptr [rbp + 168], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
.Lx65_0:
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
n66_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # PAT$5$V0
                        mov              rdx, qword ptr [1879052504]
                        cmp              eax, 8
                                                                                        jne   .Lx75_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx75_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx75_10
.Lx75_9:
                        xor              eax, eax
.Lx75_10:
                        test             rax, rax
                                                                                        jz    .Lx75_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx75_4]
                        lea              rdx, [rip + .Lx75_5]
                                                                                        jmp   rax
.Lx75_4:
                                                                                        jmp   n67_match_fence1_α
.Lx75_5:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_scanfail
.Lx75_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx75_2:
                        test             rax, rax
                                                                                        je    .Lx75_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx75_7]
                        lea              rdx, [rip + .Lx75_8]
                                                                                        jmp   rax
.Lx75_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx75_2
.Lx75_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx75_2
.Lx75_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx75_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_scanfail
.Lx75_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx75_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n67_match_fence1_α
.Lx75_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_scanfail
n66_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n67_match_fence1_α:
                        mov              qword ptr [rbp + 16], rsp
                        mov              qword ptr [rbp + 48], rsp
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
                                                                                        jmp   n68_match_alternate_α
n67_match_fence1_as:
                        mov              rsp, rbp
                        pop              rbp
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   proc_PAT$5_γ
n67_match_fence1_af:
                        mov              rsp, rbp
                        pop              rbp
n67_match_fence1_β:
                        mov              rsp, qword ptr [rbp + 48]
                                                                                        jmp   n66_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n68_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx79_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n71_match_alternate_α
.Lx79_21:
                        lea              rax, [rip + .Lx79_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n69_match_lit_α
n68_match_alternate_s0:
                        lea              rax, [rip + .Lx79_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n68_match_alternate_as
n68_match_alternate_s1:
                        lea              rax, [rip + .Lx79_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n68_match_alternate_as
.Lx79_40:
                                                                                        jmp   n70_goto_β
.Lx79_41:
                                                                                        jmp   n69_match_lit_β
n68_match_alternate_as:
                                                                                        jmp   n67_match_fence1_as
n68_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n68_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx79_19:
                                                                                        jmp   n67_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n69_match_lit_α:
                                                                                        jmp   n68_match_alternate_s1
n69_match_lit_β:
                                                                                        jmp   n68_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n70_goto_α:
                                                                                        jmp   n68_match_alternate_af
n70_goto_β:
                                                                                        jmp   n68_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n71_match_alternate_α:
                        mov              dword ptr [rbp + 64], r14d
                        lea              rax, [rip + .Lx84_21]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n74_match_lit_α
.Lx84_21:
                        lea              rax, [rip + .Lx84_19]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n73_match_lit_α
n71_match_alternate_s0:
                        lea              rax, [rip + .Lx84_40]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n71_match_alternate_as
n71_match_alternate_s1:
                        lea              rax, [rip + .Lx84_41]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n71_match_alternate_as
.Lx84_40:
                                                                                        jmp   n74_match_lit_β
.Lx84_41:
                                                                                        jmp   n73_match_lit_β
n71_match_alternate_as:
                                                                                        jmp   n72_match_defer_α
n71_match_alternate_β:
                        mov              rax, qword ptr [rbp + 72]
                                                                                        jmp   rax
n71_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rax, qword ptr [rbp + 80]
                                                                                        jmp   rax
.Lx84_19:
                                                                                        jmp   n68_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n72_match_defer_α:
                        mov              qword ptr [rbp + 112], rsp
                        mov              rax, qword ptr [1879052368]                    # X
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 8
                                                                                        jne   .Lx85_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx85_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx85_10
.Lx85_9:
                        xor              eax, eax
.Lx85_10:
                        test             rax, rax
                                                                                        jz    .Lx85_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx85_4]
                        lea              rdx, [rip + .Lx85_5]
                                                                                        jmp   rax
.Lx85_4:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n68_match_alternate_s0
.Lx85_5:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n71_match_alternate_β
.Lx85_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx85_2:
                        test             rax, rax
                                                                                        je    .Lx85_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx85_7]
                        lea              rdx, [rip + .Lx85_8]
                                                                                        jmp   rax
.Lx85_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx85_2
.Lx85_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx85_2
.Lx85_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n71_match_alternate_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx85_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n68_match_alternate_s0
.Lx85_6:
                        add              rsp, 16
                                                                                        jmp   n71_match_alternate_β
n72_match_defer_β:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n71_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n73_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n71_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n71_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n71_match_alternate_s1
n73_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n71_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n74_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n71_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n71_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n71_match_alternate_s0
n74_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n71_match_alternate_af
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx90_0
                        mov              ecx, dword ptr [rbp + 168]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx90_0:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx91_0
                        mov              eax, dword ptr [rbp + 168]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx91_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx91_0
                        mov              dword ptr [rbp + 168], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
.Lx91_0:
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
n92_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n93_match_pos_α
.Lx99_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n93_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        je    .Lx100_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$6_scanfail
.Lx100_240:
                                                                                        jmp   n94_match_arbno_α
n93_match_pos_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$6_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n94_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 96], rbp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   n95_lit_integer_α
n94_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 68]
                        mov              rax, qword ptr [rbp + 80]
                        sub              rsp, 96
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                                                                                        jmp   n97_match_defer_α
n94_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n97_match_defer_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   n95_lit_integer_α
n94_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 184]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx102_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n97_match_defer_β
.Lx102_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rbp, qword ptr [rbp + 96]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n93_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n96_match_rpos_α
.Lx103_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n96_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        je    .Lx104_240
                        add              rsp, 16
                                                                                        jmp   n94_match_arbno_β
.Lx104_240:
                                                                                        jmp   proc_PAT$6_scanhit
#-----------------------------------------------------------------------------------------------------------------------
n97_match_defer_α:
                        mov              rax, qword ptr [1879052512]                    # PAT$6$V0
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx105_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx105_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx105_10
.Lx105_9:
                        xor              eax, eax
.Lx105_10:
                        test             rax, rax
                                                                                        jz    .Lx105_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx105_4]
                        lea              rdx, [rip + .Lx105_5]
                                                                                        jmp   rax
.Lx105_4:
                                                                                        jmp   n98_match_defer_α
.Lx105_5:
                                                                                        jmp   n94_match_arbno_af
.Lx105_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx105_2:
                        test             rax, rax
                                                                                        je    .Lx105_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx105_7]
                        lea              rdx, [rip + .Lx105_8]
                                                                                        jmp   rax
.Lx105_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx105_2
.Lx105_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx105_2
.Lx105_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n94_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx105_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n98_match_defer_α
.Lx105_6:
                        add              rsp, 16
                                                                                        jmp   n94_match_arbno_af
n97_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n98_match_defer_α:
                        mov              rax, qword ptr [1879052528]                    # PAT$6$V1
                        mov              rdx, qword ptr [1879052536]
                        cmp              eax, 8
                                                                                        jne   .Lx106_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx106_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx106_10
.Lx106_9:
                        xor              eax, eax
.Lx106_10:
                        test             rax, rax
                                                                                        jz    .Lx106_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx106_4]
                        lea              rdx, [rip + .Lx106_5]
                                                                                        jmp   rax
.Lx106_4:
                                                                                        jmp   n94_match_arbno_as
.Lx106_5:
                                                                                        jmp   n97_match_defer_β
.Lx106_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx106_2:
                        test             rax, rax
                                                                                        je    .Lx106_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx106_7]
                        lea              rdx, [rip + .Lx106_8]
                                                                                        jmp   rax
.Lx106_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx106_2
.Lx106_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx106_2
.Lx106_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n97_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx106_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n94_match_arbno_as
.Lx106_6:
                        add              rsp, 16
                                                                                        jmp   n97_match_defer_β
n98_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   .Lx107_0
                        mov              ecx, dword ptr [rbp + 216]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx107_0:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   .Lx108_0
                        mov              eax, dword ptr [rbp + 216]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx108_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx108_0
                        mov              dword ptr [rbp + 216], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_attempt
.Lx108_0:
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
                        mov              esi, 128
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
.Lgvan13:               .string          "PAT$5$V0"
.Lgvan14:               .string          "PAT$6$V0"
.Lgvan15:               .string          "PAT$6$V1"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 16
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 16
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
n109_statement_begin_α:
                                                                                        jmp   n110_statement_end_α
n109_statement_begin_β:
                                                                                        jmp   n111_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:
                                                                                        jmp   n111_statement_begin_α
#=======================================================================================================================
#         I              =  SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α:
                                                                                        jmp   n112_statement_end_α
n111_statement_begin_β:
                                                                                        jmp   n113_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_end_α:
                                                                                        jmp   n113_statement_begin_α
#=======================================================================================================================
#         A              =  V | I | FENCE('(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_begin_α:
                                                                                        jmp   n114_var_α
n113_statement_begin_β:
                                                                                        jmp   n122_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # I
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n115_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # PAT$2$V1
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # V
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n117_assign_α
n116_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n113_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # PAT$2$V0
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n118_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n119_call_α
n118_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n116_var_β
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n119_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd209:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd209]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx208_240
                        add              rsp, 16
                                                                                        jmp   n118_lit_string_β
.Lx208_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n120_assign_α
n119_call_β:
                        add              rsp, 16
                                                                                        jmp   n118_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # A
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n121_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n122_statement_begin_α
#=======================================================================================================================
#         F              =  A | FENCE('+' *F) | FENCE('-' *F)
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_begin_α:
                                                                                        jmp   n123_var_α
n122_statement_begin_β:
                                                                                        jmp   n129_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # A
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n124_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # PAT$3$V0
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n125_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n126_call_α
n125_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n122_statement_begin_β
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n126_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd219:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd219]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx218_240
                        add              rsp, 16
                                                                                        jmp   n125_lit_string_β
.Lx218_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n127_assign_α
n126_call_β:
                        add              rsp, 16
                                                                                        jmp   n125_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # F
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n128_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n129_statement_begin_α
#=======================================================================================================================
#         T              =  F FENCE(('*' | '/') *T | '')
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_begin_α:
                                                                                        jmp   n130_var_α
n129_statement_begin_β:
                                                                                        jmp   n136_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # F
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n131_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052480], rax                    # PAT$4$V0
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n133_call_α
n132_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n129_statement_begin_β
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd229:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd229]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx228_240
                        add              rsp, 16
                                                                                        jmp   n132_lit_string_β
.Lx228_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n134_assign_α
n133_call_β:
                        add              rsp, 16
                                                                                        jmp   n132_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n134_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # T
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n135_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n136_statement_begin_α
#=======================================================================================================================
#         X              =  T FENCE(('+' | '-') *X | '')
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_begin_α:
                                                                                        jmp   n137_var_α
n136_statement_begin_β:
                                                                                        jmp   n143_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # T
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n138_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n138_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052496], rax                    # PAT$5$V0
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n139_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n140_call_α
n139_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n136_statement_begin_β
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n140_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd239:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd239]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx238_240
                        add              rsp, 16
                                                                                        jmp   n139_lit_string_β
.Lx238_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n141_assign_α
n140_call_β:
                        add              rsp, 16
                                                                                        jmp   n139_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n141_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # X
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n142_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n143_statement_begin_α
#=======================================================================================================================
#         eol            =  CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_begin_α:
                                                                                        jmp   n144_lit_integer_α
n143_statement_begin_β:
                                                                                        jmp   n148_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n145_call_α
.Lx245_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n145_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd77:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd77]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx246_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n143_statement_begin_β
.Lx246_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n146_assign_α
n145_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n143_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # eol
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n147_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n148_statement_begin_α
#=======================================================================================================================
#         C              =  POS(0) ARBNO(X eol) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_begin_α:
                                                                                        jmp   n149_var_α
n148_statement_begin_β:
                                                                                        jmp   n157_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # eol
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n150_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n150_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052528], rax                    # PAT$6$V1
                        mov              qword ptr [1879052536], rdx
                                                                                        jmp   n151_var_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # X
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n152_assign_α
n151_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n148_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052512], rax                    # PAT$6$V0
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n153_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n154_call_α
n153_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n151_var_β
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n154_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd258:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd258]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx257_240
                        add              rsp, 16
                                                                                        jmp   n153_lit_string_β
.Lx257_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n155_assign_α
n154_call_β:
                        add              rsp, 16
                                                                                        jmp   n153_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n155_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # C
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n156_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n157_statement_begin_α
#=======================================================================================================================
#         &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_begin_α:
                                                                                        jmp   n158_lit_string_α
n157_statement_begin_β:
                                                                                        jmp   n162_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n159_lit_integer_α
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n160_call_α
n159_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n157_statement_begin_β
.Lx265_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n160_call_α:
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
.Lrkfnzd267:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd267]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx266_240
                        add              rsp, 16
                                                                                        jmp   n159_lit_integer_β
.Lx266_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n161_statement_end_α
n160_call_β:
                        add              rsp, 16
                                                                                        jmp   n159_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n162_statement_begin_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4000000]')
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_begin_α:
                                                                                        jmp   n163_lit_string_α
n162_statement_begin_β:
                                                                                        jmp   n169_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n164_call_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n164_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd274:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd274]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx273_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n162_statement_begin_β
.Lx273_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n165_lit_integer_α
n164_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n162_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n166_lit_string_α
n165_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n162_statement_begin_β
.Lx275_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n167_call_α
n166_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n165_lit_integer_β
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "[-f0 -r4000000]"
#-----------------------------------------------------------------------------------------------------------------------
n167_call_α:
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
.Lbynamefnzd99:         .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd99]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx277_240
                        add              rsp, 16
                                                                                        jmp   n166_lit_string_β
.Lx277_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n168_statement_end_α
n167_call_β:
                        add              rsp, 16
                                                                                        jmp   n166_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n169_statement_begin_α
#=======================================================================================================================
#         src            =  INPUT                          :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_begin_α:
                                                                                        jmp   n170_var_α
n169_statement_begin_β:
                                                                                        jmp   n188_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx282_0]                # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx282_240
                        add              rsp, 16
                                                                                        jmp   n169_statement_begin_β
.Lx282_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n171_assign_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n171_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # src
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n172_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n173_statement_begin_α
#=======================================================================================================================
#         src            C                                 :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_begin_α:
                                                                                        jmp   n174_var_α
n173_statement_begin_β:
                                                                                        jmp   n188_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # src
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n175_var_α
#-----------------------------------------------------------------------------------------------------------------------
n175_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # C
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n176_assign_α
n175_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n188_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n176_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx290_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n177_match_begin_α
n176_assign_β:
                                                                                        jmp   n175_var_β
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n177_match_begin_α:
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
.Lx292_0:
                        mov              r14d, dword ptr [rbp + -64]
                                                                                        jmp   n178_match_defer_α
n177_match_begin_β:
                        add              dword ptr [rbp + -64], 1
                        mov              eax, dword ptr [rbp + -64]
                        cmp              eax, r15d
                                                                                        jg    .Lx292_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx292_1
                                                                                        jmp   .Lx292_0
.Lx292_1:
n177_match_begin_af:
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
                                                                                        jmp   n176_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n178_match_defer_α:
                        lea              rdi, [rip + .S10]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx293_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx293_4]
                        lea              rdx, [rip + .Lx293_5]
                                                                                        jmp   rax
.Lx293_4:
                                                                                        jmp   n179_match_end_α
.Lx293_5:
                                                                                        jmp   n177_match_begin_β
.Lx293_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx293_2:
                        test             rax, rax
                                                                                        je    .Lx293_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx293_7]
                        lea              rdx, [rip + .Lx293_8]
                                                                                        jmp   rax
.Lx293_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx293_2
.Lx293_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx293_2
.Lx293_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n177_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx293_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n179_match_end_α
.Lx293_6:
                        add              rsp, 16
                                                                                        jmp   n177_match_begin_β
n178_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n179_match_end_α:
                        mov              r10, r12
.Lx295_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx295_9
                        mov              rsp, qword ptr [rbp + -56]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
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
.Lx295_10:
                        sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx295_10
                        mov              r13, qword ptr [rbp + -40]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -32]                     # outer_δ
                        mov              r15, qword ptr [rbp + -24]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + -48]                     # old_rbp
                                                                                        jmp   n180_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n181_statement_begin_α
#=======================================================================================================================
#         OUTPUT         =  'matched bytes=' SIZE(src)      :(END)
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_begin_α:
                                                                                        jmp   n182_lit_string_α
n181_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n183_var_α
.Lx300_0:
                        .quad            .Lx300_0_s
.Lx300_0_s:
                        .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # src
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n184_call_α
n183_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n181_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n184_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd303:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd303]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx302_240
                        add              rsp, 16
                                                                                        jmp   n183_var_β
.Lx302_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n185_binop_α
n184_call_β:
                        add              rsp, 16
                                                                                        jmp   n183_var_β
#-----------------------------------------------------------------------------------------------------------------------
n185_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # lit_string
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n186_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx305_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n187_statement_end_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   main_γ
#=======================================================================================================================
# fail    OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_begin_α:
                                                                                        jmp   n189_lit_string_α
n188_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n190_assign_α
.Lx310_0:
                        .quad            .Lx310_0_s
.Lx310_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx311_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n191_statement_end_α
.Lx311_0:
                        .quad            .Lx311_0_s
.Lx311_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n192_goto_α:
                                                                                        jmp   n188_statement_begin_α
n192_goto_β:
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
.S6:                    .string          "T"
.S7:                    .string          "PAT$5$V0"
.S8:                    .string          "PAT$6$V0"
.S9:                    .string          "PAT$6$V1"
.S10:                   .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
