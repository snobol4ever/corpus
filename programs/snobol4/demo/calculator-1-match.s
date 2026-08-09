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
                        lea              rsi, [rip + g_sno_defer_cells+8]
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
                        lea              rsi, [rip + g_sno_defer_cells+8]
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
                        lea              rsi, [rip + g_sno_defer_cells+16]
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
                        lea              rax, [rip + n40_match_alternate_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n40_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx51_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n47_match_defer_α
.Lx51_21:
                        lea              rax, [rip + .Lx51_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n43_match_defer_α
.Lx51_22:
                        lea              rax, [rip + .Lx51_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n41_match_defer_α
n40_match_alternate_s0:
                        lea              rax, [rip + .Lx51_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n40_match_alternate_as
n40_match_alternate_s1:
                        lea              rax, [rip + .Lx51_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n40_match_alternate_as
n40_match_alternate_s2:
                        lea              rax, [rip + .Lx51_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n40_match_alternate_as
.Lx51_40:
                                                                                        jmp   n46_goto_β
.Lx51_41:
                                                                                        jmp   n42_goto_β
.Lx51_42:
                                                                                        jmp   n41_match_defer_β
n40_match_alternate_as:
                                                                                        jmp   proc_PAT$4_γ
n40_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n40_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx51_19:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n41_match_defer_α:
                        mov              rax, qword ptr [1879052512]                    # PAT$4$V2
                        mov              rdx, qword ptr [1879052520]
                        cmp              eax, 8
                                                                                        jne   .Lx52_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx52_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx52_10
.Lx52_9:
                        xor              eax, eax
.Lx52_10:
                        test             rax, rax
                                                                                        jz    .Lx52_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx52_4]
                        lea              rdx, [rip + .Lx52_5]
                                                                                        jmp   rax
.Lx52_4:
                                                                                        jmp   n40_match_alternate_s2
.Lx52_5:
                                                                                        jmp   n40_match_alternate_af
.Lx52_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx52_2:
                        test             rax, rax
                                                                                        je    .Lx52_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx52_7]
                        lea              rdx, [rip + .Lx52_8]
                                                                                        jmp   rax
.Lx52_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx52_2
.Lx52_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx52_2
.Lx52_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n40_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx52_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n40_match_alternate_s2
.Lx52_6:
                        add              rsp, 16
                                                                                        jmp   n40_match_alternate_af
n41_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n42_goto_α:
                                                                                        jmp   n40_match_alternate_af
n42_goto_β:
                                                                                        jmp   n40_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n43_match_defer_α:
                        mov              rax, qword ptr [1879052496]                    # PAT$4$V1
                        mov              rdx, qword ptr [1879052504]
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
                                                                                        jmp   n44_match_lit_α
.Lx54_5:
                                                                                        jmp   n40_match_alternate_af
.Lx54_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
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
                                                                                        js    n40_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx54_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n44_match_lit_α
.Lx54_6:
                        add              rsp, 16
                                                                                        jmp   n40_match_alternate_af
n43_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n44_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n43_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   n43_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n45_match_defer_α
n44_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n43_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n45_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx57_11
                        mov              rax, qword ptr [1879052352]                    # T
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 8
                                                                                        jne   .Lx57_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx57_10
                        mov              rdi, rdx                                       # headv
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
                                                                                        jmp   n40_match_alternate_s1
.Lx57_5:
                                                                                        jmp   n44_match_lit_β
.Lx57_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
                        xor              esi, esi                                       # ival_flag
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
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx57_2
.Lx57_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx57_2
.Lx57_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n44_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx57_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n40_match_alternate_s1
.Lx57_6:
                        add              rsp, 16
                                                                                        jmp   n44_match_lit_β
n45_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n46_goto_α:
                                                                                        jmp   n40_match_alternate_af
n46_goto_β:
                                                                                        jmp   n40_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n47_match_defer_α:
                        mov              rax, qword ptr [1879052480]                    # PAT$4$V0
                        mov              rdx, qword ptr [1879052488]
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
                                                                                        jmp   n48_match_lit_α
.Lx59_5:
                                                                                        jmp   n40_match_alternate_af
.Lx59_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]                               # varname
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
                                                                                        js    n40_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx59_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n48_match_lit_α
.Lx59_6:
                        add              rsp, 16
                                                                                        jmp   n40_match_alternate_af
n47_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n48_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n47_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   n47_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n49_match_defer_α
n48_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n47_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n49_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx62_11
                        mov              rax, qword ptr [1879052352]                    # T
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 8
                                                                                        jne   .Lx62_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx62_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx62_10
.Lx62_9:
                        xor              eax, eax
.Lx62_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx62_11:
                        test             rax, rax
                                                                                        jz    .Lx62_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx62_4]
                        lea              rdx, [rip + .Lx62_5]
                                                                                        jmp   rax
.Lx62_4:
                                                                                        jmp   n40_match_alternate_s0
.Lx62_5:
                                                                                        jmp   n48_match_lit_β
.Lx62_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx62_2:
                        test             rax, rax
                                                                                        je    .Lx62_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx62_7]
                        lea              rdx, [rip + .Lx62_8]
                                                                                        jmp   rax
.Lx62_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx62_2
.Lx62_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx62_2
.Lx62_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n48_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx62_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n40_match_alternate_s0
.Lx62_6:
                        add              rsp, 16
                                                                                        jmp   n48_match_lit_β
n49_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx63_0
                        mov              ecx, dword ptr [rbp + 168]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx63_0:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx64_0
                        mov              eax, dword ptr [rbp + 168]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx64_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx64_0
                        mov              dword ptr [rbp + 168], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
.Lx64_0:
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
                        lea              rax, [rip + n65_match_alternate_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n65_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx76_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n72_match_defer_α
.Lx76_21:
                        lea              rax, [rip + .Lx76_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n68_match_defer_α
.Lx76_22:
                        lea              rax, [rip + .Lx76_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n66_match_defer_α
n65_match_alternate_s0:
                        lea              rax, [rip + .Lx76_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n65_match_alternate_as
n65_match_alternate_s1:
                        lea              rax, [rip + .Lx76_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n65_match_alternate_as
n65_match_alternate_s2:
                        lea              rax, [rip + .Lx76_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n65_match_alternate_as
.Lx76_40:
                                                                                        jmp   n71_goto_β
.Lx76_41:
                                                                                        jmp   n67_goto_β
.Lx76_42:
                                                                                        jmp   n66_match_defer_β
n65_match_alternate_as:
                                                                                        jmp   proc_PAT$5_γ
n65_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n65_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx76_19:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n66_match_defer_α:
                        mov              rax, qword ptr [1879052560]                    # PAT$5$V2
                        mov              rdx, qword ptr [1879052568]
                        cmp              eax, 8
                                                                                        jne   .Lx77_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx77_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx77_10
.Lx77_9:
                        xor              eax, eax
.Lx77_10:
                        test             rax, rax
                                                                                        jz    .Lx77_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx77_4]
                        lea              rdx, [rip + .Lx77_5]
                                                                                        jmp   rax
.Lx77_4:
                                                                                        jmp   n65_match_alternate_s2
.Lx77_5:
                                                                                        jmp   n65_match_alternate_af
.Lx77_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx77_2:
                        test             rax, rax
                                                                                        je    .Lx77_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx77_7]
                        lea              rdx, [rip + .Lx77_8]
                                                                                        jmp   rax
.Lx77_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx77_2
.Lx77_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx77_2
.Lx77_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n65_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx77_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n65_match_alternate_s2
.Lx77_6:
                        add              rsp, 16
                                                                                        jmp   n65_match_alternate_af
n66_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n67_goto_α:
                                                                                        jmp   n65_match_alternate_af
n67_goto_β:
                                                                                        jmp   n65_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n68_match_defer_α:
                        mov              rax, qword ptr [1879052544]                    # PAT$5$V1
                        mov              rdx, qword ptr [1879052552]
                        cmp              eax, 8
                                                                                        jne   .Lx79_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx79_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx79_10
.Lx79_9:
                        xor              eax, eax
.Lx79_10:
                        test             rax, rax
                                                                                        jz    .Lx79_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx79_4]
                        lea              rdx, [rip + .Lx79_5]
                                                                                        jmp   rax
.Lx79_4:
                                                                                        jmp   n69_match_lit_α
.Lx79_5:
                                                                                        jmp   n65_match_alternate_af
.Lx79_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx79_2:
                        test             rax, rax
                                                                                        je    .Lx79_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx79_7]
                        lea              rdx, [rip + .Lx79_8]
                                                                                        jmp   rax
.Lx79_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx79_2
.Lx79_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx79_2
.Lx79_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n65_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx79_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n69_match_lit_α
.Lx79_6:
                        add              rsp, 16
                                                                                        jmp   n65_match_alternate_af
n68_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n69_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n68_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n68_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n70_match_defer_α
n69_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n68_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n70_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx82_11
                        mov              rax, qword ptr [1879052368]                    # X
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 8
                                                                                        jne   .Lx82_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx82_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx82_10
.Lx82_9:
                        xor              eax, eax
.Lx82_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx82_11:
                        test             rax, rax
                                                                                        jz    .Lx82_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx82_4]
                        lea              rdx, [rip + .Lx82_5]
                                                                                        jmp   rax
.Lx82_4:
                                                                                        jmp   n65_match_alternate_s1
.Lx82_5:
                                                                                        jmp   n69_match_lit_β
.Lx82_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx82_2:
                        test             rax, rax
                                                                                        je    .Lx82_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx82_7]
                        lea              rdx, [rip + .Lx82_8]
                                                                                        jmp   rax
.Lx82_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx82_2
.Lx82_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx82_2
.Lx82_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n69_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx82_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n65_match_alternate_s1
.Lx82_6:
                        add              rsp, 16
                                                                                        jmp   n69_match_lit_β
n70_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n71_goto_α:
                                                                                        jmp   n65_match_alternate_af
n71_goto_β:
                                                                                        jmp   n65_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n72_match_defer_α:
                        mov              rax, qword ptr [1879052528]                    # PAT$5$V0
                        mov              rdx, qword ptr [1879052536]
                        cmp              eax, 8
                                                                                        jne   .Lx84_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx84_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx84_10
.Lx84_9:
                        xor              eax, eax
.Lx84_10:
                        test             rax, rax
                                                                                        jz    .Lx84_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx84_4]
                        lea              rdx, [rip + .Lx84_5]
                                                                                        jmp   rax
.Lx84_4:
                                                                                        jmp   n73_match_lit_α
.Lx84_5:
                                                                                        jmp   n65_match_alternate_af
.Lx84_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S11]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx84_2:
                        test             rax, rax
                                                                                        je    .Lx84_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx84_7]
                        lea              rdx, [rip + .Lx84_8]
                                                                                        jmp   rax
.Lx84_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx84_2
.Lx84_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx84_2
.Lx84_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n65_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx84_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n73_match_lit_α
.Lx84_6:
                        add              rsp, 16
                                                                                        jmp   n65_match_alternate_af
n72_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n73_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n72_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n72_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n74_match_defer_α
n73_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n72_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n74_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx87_11
                        mov              rax, qword ptr [1879052368]                    # X
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 8
                                                                                        jne   .Lx87_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx87_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx87_10
.Lx87_9:
                        xor              eax, eax
.Lx87_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx87_11:
                        test             rax, rax
                                                                                        jz    .Lx87_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx87_4]
                        lea              rdx, [rip + .Lx87_5]
                                                                                        jmp   rax
.Lx87_4:
                                                                                        jmp   n65_match_alternate_s0
.Lx87_5:
                                                                                        jmp   n73_match_lit_β
.Lx87_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx87_2:
                        test             rax, rax
                                                                                        je    .Lx87_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx87_7]
                        lea              rdx, [rip + .Lx87_8]
                                                                                        jmp   rax
.Lx87_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx87_2
.Lx87_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx87_2
.Lx87_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n73_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx87_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n65_match_alternate_s0
.Lx87_6:
                        add              rsp, 16
                                                                                        jmp   n73_match_lit_β
n74_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx88_0
                        mov              ecx, dword ptr [rbp + 168]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx88_0:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx89_0
                        mov              eax, dword ptr [rbp + 168]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx89_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx89_0
                        mov              dword ptr [rbp + 168], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
.Lx89_0:
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
n90_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n91_match_pos_α
.Lx97_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n91_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        je    .Lx98_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$6_scanfail
.Lx98_240:
                                                                                        jmp   n92_match_arbno_α
n91_match_pos_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$6_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n92_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 96], rbp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   n93_lit_integer_α
n92_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 68]
                        mov              rax, qword ptr [rbp + 80]
                        sub              rsp, 96
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                                                                                        jmp   n95_match_defer_α
n92_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n95_match_defer_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   n93_lit_integer_α
n92_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 184]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx100_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n95_match_defer_β
.Lx100_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rbp, qword ptr [rbp + 96]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n91_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n94_match_rpos_α
.Lx101_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n94_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        je    .Lx102_240
                        add              rsp, 16
                                                                                        jmp   n92_match_arbno_β
.Lx102_240:
                                                                                        jmp   proc_PAT$6_scanhit
#-----------------------------------------------------------------------------------------------------------------------
n95_match_defer_α:
                        mov              rax, qword ptr [1879052576]                    # PAT$6$V0
                        mov              rdx, qword ptr [1879052584]
                        cmp              eax, 8
                                                                                        jne   .Lx103_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx103_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx103_10
.Lx103_9:
                        xor              eax, eax
.Lx103_10:
                        test             rax, rax
                                                                                        jz    .Lx103_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx103_4]
                        lea              rdx, [rip + .Lx103_5]
                                                                                        jmp   rax
.Lx103_4:
                                                                                        jmp   n96_match_defer_α
.Lx103_5:
                                                                                        jmp   n92_match_arbno_af
.Lx103_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S12]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx103_2:
                        test             rax, rax
                                                                                        je    .Lx103_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx103_7]
                        lea              rdx, [rip + .Lx103_8]
                                                                                        jmp   rax
.Lx103_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx103_2
.Lx103_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx103_2
.Lx103_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n92_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx103_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n96_match_defer_α
.Lx103_6:
                        add              rsp, 16
                                                                                        jmp   n92_match_arbno_af
n95_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n96_match_defer_α:
                        mov              rax, qword ptr [1879052592]                    # PAT$6$V1
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 8
                                                                                        jne   .Lx104_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx104_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx104_10
.Lx104_9:
                        xor              eax, eax
.Lx104_10:
                        test             rax, rax
                                                                                        jz    .Lx104_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx104_4]
                        lea              rdx, [rip + .Lx104_5]
                                                                                        jmp   rax
.Lx104_4:
                                                                                        jmp   n92_match_arbno_as
.Lx104_5:
                                                                                        jmp   n95_match_defer_β
.Lx104_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S13]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx104_2:
                        test             rax, rax
                                                                                        je    .Lx104_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx104_7]
                        lea              rdx, [rip + .Lx104_8]
                                                                                        jmp   rax
.Lx104_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx104_2
.Lx104_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx104_2
.Lx104_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n95_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx104_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n92_match_arbno_as
.Lx104_6:
                        add              rsp, 16
                                                                                        jmp   n95_match_defer_β
n96_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   .Lx105_0
                        mov              ecx, dword ptr [rbp + 216]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx105_0:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 224], 1
                                                                                        jne   .Lx106_0
                        mov              eax, dword ptr [rbp + 216]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx106_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx106_0
                        mov              dword ptr [rbp + 216], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_attempt
.Lx106_0:
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
.Lgvan13:               .string          "PAT$4$V1"
.Lgvan14:               .string          "PAT$4$V2"
.Lgvan15:               .string          "PAT$5$V0"
.Lgvan16:               .string          "PAT$5$V1"
.Lgvan17:               .string          "PAT$5$V2"
.Lgvan18:               .string          "PAT$6$V0"
.Lgvan19:               .string          "PAT$6$V1"
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
                        .quad            .Lgvan18
                        .quad            .Lgvan19
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 20
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 20
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
n107_statement_begin_α:
                                                                                        jmp   n108_statement_end_α
n107_statement_begin_β:
                                                                                        jmp   n109_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:
                                                                                        jmp   n109_statement_begin_α
#=======================================================================================================================
#         I              =  SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_begin_α:
                                                                                        jmp   n110_statement_end_α
n109_statement_begin_β:
                                                                                        jmp   n111_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:
                                                                                        jmp   n111_statement_begin_α
#=======================================================================================================================
#         A              =  V | I | '(' *X ')'
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α:
                                                                                        jmp   n112_var_α
n111_statement_begin_β:
                                                                                        jmp   n120_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # I
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n113_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n113_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # PAT$2$V1
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n114_var_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # V
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n115_assign_α
n114_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n111_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # PAT$2$V0
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n116_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n117_call_α
n116_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n114_var_β
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n117_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd215:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd215]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx214_240
                        add              rsp, 16
                                                                                        jmp   n116_lit_string_β
.Lx214_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n118_assign_α
n117_call_β:
                        add              rsp, 16
                                                                                        jmp   n116_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n118_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # A
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n119_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n120_statement_begin_α
#=======================================================================================================================
#         F              =  A | '+' *F | '-' *F
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_begin_α:
                                                                                        jmp   n121_var_α
n120_statement_begin_β:
                                                                                        jmp   n127_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # A
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n122_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n122_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # PAT$3$V0
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n124_call_α
n123_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n120_statement_begin_β
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n124_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd225:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd225]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx224_240
                        add              rsp, 16
                                                                                        jmp   n123_lit_string_β
.Lx224_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n125_assign_α
n124_call_β:
                        add              rsp, 16
                                                                                        jmp   n123_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n125_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # F
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n126_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n127_statement_begin_α
#=======================================================================================================================
#         T              =  F '*' *T | F '/' *T | F
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_begin_α:
                                                                                        jmp   n128_var_α
n127_statement_begin_β:
                                                                                        jmp   n138_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # F
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n129_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n129_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052512], rax                    # PAT$4$V2
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n130_var_α
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # F
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n131_assign_α
n130_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n127_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052496], rax                    # PAT$4$V1
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n132_var_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # F
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n133_assign_α
n132_var_β:
                        add              rsp, 16
                                                                                        jmp   n130_var_β
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052480], rax                    # PAT$4$V0
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n134_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n135_call_α
n134_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n132_var_β
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n135_call_α:
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
                                                                                        jmp   n134_lit_string_β
.Lx238_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n136_assign_α
n135_call_β:
                        add              rsp, 16
                                                                                        jmp   n134_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # T
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n137_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n138_statement_begin_α
#=======================================================================================================================
#         X              =  T '+' *X | T '-' *X | T
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_begin_α:
                                                                                        jmp   n139_var_α
n138_statement_begin_β:
                                                                                        jmp   n149_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # T
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n140_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052560], rax                    # PAT$5$V2
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n141_var_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # T
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n142_assign_α
n141_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n138_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n142_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052544], rax                    # PAT$5$V1
                        mov              qword ptr [1879052552], rdx
                                                                                        jmp   n143_var_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # T
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n144_assign_α
n143_var_β:
                        add              rsp, 16
                                                                                        jmp   n141_var_β
#-----------------------------------------------------------------------------------------------------------------------
n144_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052528], rax                    # PAT$5$V0
                        mov              qword ptr [1879052536], rdx
                                                                                        jmp   n145_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n146_call_α
n145_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n143_var_β
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n146_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd253:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd253]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx252_240
                        add              rsp, 16
                                                                                        jmp   n145_lit_string_β
.Lx252_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n147_assign_α
n146_call_β:
                        add              rsp, 16
                                                                                        jmp   n145_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # X
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n148_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n149_statement_begin_α
#=======================================================================================================================
#         eol            =  CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_begin_α:
                                                                                        jmp   n150_lit_integer_α
n149_statement_begin_β:
                                                                                        jmp   n154_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n151_call_α
.Lx259_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n151_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd87:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd87]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx260_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n149_statement_begin_β
.Lx260_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n152_assign_α
n151_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n149_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # eol
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n153_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n154_statement_begin_α
#=======================================================================================================================
#         C              =  POS(0) ARBNO(X eol) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_begin_α:
                                                                                        jmp   n155_var_α
n154_statement_begin_β:
                                                                                        jmp   n163_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # eol
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n156_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n156_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052592], rax                    # PAT$6$V1
                        mov              qword ptr [1879052600], rdx
                                                                                        jmp   n157_var_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # X
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n158_assign_α
n157_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n154_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052576], rax                    # PAT$6$V0
                        mov              qword ptr [1879052584], rdx
                                                                                        jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n160_call_α
n159_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n157_var_β
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n160_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd272:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd272]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx271_240
                        add              rsp, 16
                                                                                        jmp   n159_lit_string_β
.Lx271_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n161_assign_α
n160_call_β:
                        add              rsp, 16
                                                                                        jmp   n159_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # C
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n162_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n163_statement_begin_α
#=======================================================================================================================
#         &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_begin_α:
                                                                                        jmp   n164_lit_string_α
n163_statement_begin_β:
                                                                                        jmp   n168_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n165_lit_integer_α
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n166_call_α
n165_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n163_statement_begin_β
.Lx279_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n166_call_α:
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
.Lrkfnzd281:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd281]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx280_240
                        add              rsp, 16
                                                                                        jmp   n165_lit_integer_β
.Lx280_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n167_statement_end_α
n166_call_β:
                        add              rsp, 16
                                                                                        jmp   n165_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n168_statement_begin_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4000000]')
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_begin_α:
                                                                                        jmp   n169_lit_string_α
n168_statement_begin_β:
                                                                                        jmp   n175_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n170_call_α
.Lx286_0:
                        .quad            .Lx286_0_s
.Lx286_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n170_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd288:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd288]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx287_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n168_statement_begin_β
.Lx287_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n171_lit_integer_α
n170_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n168_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n172_lit_string_α
n171_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n168_statement_begin_β
.Lx289_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n173_call_α
n172_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n171_lit_integer_β
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "[-f0 -r4000000]"
#-----------------------------------------------------------------------------------------------------------------------
n173_call_α:
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
.Lbynamefnzd109:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd109]                   # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx291_240
                        add              rsp, 16
                                                                                        jmp   n172_lit_string_β
.Lx291_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n174_statement_end_α
n173_call_β:
                        add              rsp, 16
                                                                                        jmp   n172_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n175_statement_begin_α
#=======================================================================================================================
#         src            =  INPUT                          :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_begin_α:
                                                                                        jmp   n176_var_α
n175_statement_begin_β:
                                                                                        jmp   n194_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx296_0]                # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx296_240
                        add              rsp, 16
                                                                                        jmp   n175_statement_begin_β
.Lx296_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n177_assign_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n177_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # src
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n178_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n179_statement_begin_α
#=======================================================================================================================
#         src            C                                 :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_begin_α:
                                                                                        jmp   n180_var_α
n179_statement_begin_β:
                                                                                        jmp   n194_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # src
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n181_var_α
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # C
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n182_assign_α
n181_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n194_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n182_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx304_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n183_match_begin_α
n182_assign_β:
                                                                                        jmp   n181_var_β
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n183_match_begin_α:
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
.Lx306_0:
                        mov              r14d, dword ptr [rbp + -64]
                                                                                        jmp   n184_match_defer_α
n183_match_begin_β:
                        add              dword ptr [rbp + -64], 1
                        mov              eax, dword ptr [rbp + -64]
                        cmp              eax, r15d
                                                                                        jg    .Lx306_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx306_1
                                                                                        jmp   .Lx306_0
.Lx306_1:
n183_match_begin_af:
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
                                                                                        jmp   n182_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n184_match_defer_α:
                        lea              rdi, [rip + .S14]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx307_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx307_4]
                        lea              rdx, [rip + .Lx307_5]
                                                                                        jmp   rax
.Lx307_4:
                                                                                        jmp   n185_match_end_α
.Lx307_5:
                                                                                        jmp   n183_match_begin_β
.Lx307_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S14]                              # varname
                        xor              esi, esi                                       # ival_flag
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
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx307_2
.Lx307_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx307_2
.Lx307_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n183_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx307_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n185_match_end_α
.Lx307_6:
                        add              rsp, 16
                                                                                        jmp   n183_match_begin_β
n184_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n185_match_end_α:
                        mov              r10, r12
.Lx309_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx309_9
                        mov              rsp, qword ptr [rbp + -56]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx309_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx309_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx309_1:
                        test             rax, rax
                                                                                        je    .Lx309_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx309_3]
                        lea              rdx, [rip + .Lx309_4]
                                                                                        jmp   rax
.Lx309_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx309_1
.Lx309_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx309_1
.Lx309_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx309_10:
                        sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx309_10
                        mov              r13, qword ptr [rbp + -40]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -32]                     # outer_δ
                        mov              r15, qword ptr [rbp + -24]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + -48]                     # old_rbp
                                                                                        jmp   n186_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n187_statement_begin_α
#=======================================================================================================================
#         OUTPUT         =  'matched bytes=' SIZE(src)      :(END)
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_begin_α:
                                                                                        jmp   n188_lit_string_α
n187_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n189_var_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # src
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n190_call_α
n189_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n187_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n190_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd317:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd317]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx316_240
                        add              rsp, 16
                                                                                        jmp   n189_var_β
.Lx316_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n191_binop_α
n190_call_β:
                        add              rsp, 16
                                                                                        jmp   n189_var_β
#-----------------------------------------------------------------------------------------------------------------------
n191_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # lit_string
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n192_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n192_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx319_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n193_statement_end_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   main_γ
#=======================================================================================================================
# fail    OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_begin_α:
                                                                                        jmp   n195_lit_string_α
n194_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n196_assign_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n196_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx325_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n197_statement_end_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n197_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n198_goto_α:
                                                                                        jmp   n194_statement_begin_α
n198_goto_β:
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
.S5:                    .string          "PAT$4$V2"
.S6:                    .string          "PAT$4$V1"
.S7:                    .string          "T"
.S8:                    .string          "PAT$4$V0"
.S9:                    .string          "PAT$5$V2"
.S10:                   .string          "PAT$5$V1"
.S11:                   .string          "PAT$5$V0"
.S12:                   .string          "PAT$6$V0"
.S13:                   .string          "PAT$6$V1"
.S14:                   .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
