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
                        lea              rax, [rip + n0_match_any_β]
                        mov              qword ptr [rbp + 32], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   proc_PAT$0_scanfail
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    proc_PAT$0_scanfail
                        add              r14d, 1
                                                                                        jmp   proc_PAT$0_scanhit
n0_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$0_scanfail
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   .Lx3_0
                        mov              ecx, dword ptr [rbp + 56]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx3_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   .Lx4_0
                        mov              eax, dword ptr [rbp + 56]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx4_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx4_0
                        mov              dword ptr [rbp + 56], eax
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
                        sub              rsp, 80
                        mov              qword ptr [rsp + 56], rcx
                        mov              qword ptr [rsp + 64], rdx
                        mov              qword ptr [rsp + 72], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 48], r8
                        mov              dword ptr [rsp + 40], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n5_match_span_β]
                        mov              qword ptr [rbp + 16], rax
#-----------------------------------------------------------------------------------------------------------------------
n5_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx7_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx7_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx7_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx7_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx7_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx7_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx7_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx7_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx7_1
                        add              ecx, 1
                                                                                        jmp   .Lx7_0
.Lx7_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx7_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx7_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanhit
n5_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   .Lx8_0
                        mov              ecx, dword ptr [rbp + 40]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx8_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 48], 1
                                                                                        jne   .Lx9_0
                        mov              eax, dword ptr [rbp + 40]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx9_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx9_0
                        mov              dword ptr [rbp + 40], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
.Lx9_0:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 16]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              rbp, qword ptr [rbp + 72]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, qword ptr [rbp + 64]
                        lea              rsp, [rbp + 80]
                        mov              rbp, qword ptr [rbp + 72]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 160], r8
                        mov              dword ptr [rsp + 152], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + n10_match_alternate_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n10_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx18_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n16_match_patref_α
.Lx18_21:
                        lea              rax, [rip + .Lx18_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n15_match_patref_α
.Lx18_22:
                        lea              rax, [rip + .Lx18_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n11_match_sequence_α
n10_match_alternate_s0:
                        lea              rax, [rip + .Lx18_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n10_match_alternate_as
n10_match_alternate_s1:
                        lea              rax, [rip + .Lx18_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n10_match_alternate_as
n10_match_alternate_s2:
                        lea              rax, [rip + .Lx18_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n10_match_alternate_as
.Lx18_40:
                                                                                        jmp   n16_match_patref_β
.Lx18_41:
                                                                                        jmp   n15_match_patref_β
.Lx18_42:
                                                                                        jmp   n11_match_sequence_β
n10_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n10_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n10_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx18_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n14_match_lit_α
n11_match_sequence_as:
                                                                                        jmp   n10_match_alternate_s2
n11_match_sequence_β:
                                                                                        jmp   n12_match_lit_β
n11_match_sequence_af:
                                                                                        jmp   n10_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n13_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n13_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n10_match_alternate_s2
n12_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n13_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_defer_α:
                        mov              qword ptr [rbp + 112], rsp
                        mov              rax, qword ptr [1879052368]                    # X
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 8
                                                                                        jne   .Lx23_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx23_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx23_10
.Lx23_9:
                        xor              eax, eax
.Lx23_10:
                        test             rax, rax
                                                                                        jz    .Lx23_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx23_4]
                        lea              rdx, [rip + .Lx23_5]
                                                                                        jmp   rax
.Lx23_4:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n12_match_lit_α
.Lx23_5:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n14_match_lit_β
.Lx23_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx23_2:
                        test             rax, rax
                                                                                        je    .Lx23_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx23_7]
                        lea              rdx, [rip + .Lx23_8]
                                                                                        jmp   rax
.Lx23_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx23_2
.Lx23_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx23_2
.Lx23_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n14_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx23_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n12_match_lit_α
.Lx23_6:
                        add              rsp, 16
                                                                                        jmp   n14_match_lit_β
n13_match_defer_β:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n14_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n10_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n10_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n13_match_defer_α
n14_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n10_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n15_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx26_11
                        mov              rax, qword ptr [1879052304]                    # I
                        mov              rdx, qword ptr [1879052312]
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
                                                                                        jmp   n10_match_alternate_s1
.Lx26_5:
                                                                                        jmp   n10_match_alternate_af
.Lx26_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
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
                                                                                        js    n10_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx26_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n10_match_alternate_s1
.Lx26_6:
                        add              rsp, 16
                                                                                        jmp   n10_match_alternate_af
n15_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n16_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx27_11
                        mov              rax, qword ptr [1879052288]                    # V
                        mov              rdx, qword ptr [1879052296]
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
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx27_11:
                        test             rax, rax
                                                                                        jz    .Lx27_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx27_4]
                        lea              rdx, [rip + .Lx27_5]
                                                                                        jmp   rax
.Lx27_4:
                                                                                        jmp   n10_match_alternate_s0
.Lx27_5:
                                                                                        jmp   n10_match_alternate_af
.Lx27_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
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
                                                                                        js    n10_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx27_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n10_match_alternate_s0
.Lx27_6:
                        add              rsp, 16
                                                                                        jmp   n10_match_alternate_af
n16_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx28_0
                        mov              ecx, dword ptr [rbp + 152]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx28_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   .Lx29_0
                        mov              eax, dword ptr [rbp + 152]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx29_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx29_0
                        mov              dword ptr [rbp + 152], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx29_0:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              rbp, qword ptr [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, qword ptr [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, qword ptr [rbp + 184]
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
                        lea              rax, [rip + n30_match_alternate_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n30_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx39_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n37_match_patref_α
.Lx39_21:
                        lea              rax, [rip + .Lx39_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n34_match_sequence_α
.Lx39_22:
                        lea              rax, [rip + .Lx39_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n31_match_sequence_α
n30_match_alternate_s0:
                        lea              rax, [rip + .Lx39_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n30_match_alternate_as
n30_match_alternate_s1:
                        lea              rax, [rip + .Lx39_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n30_match_alternate_as
n30_match_alternate_s2:
                        lea              rax, [rip + .Lx39_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n30_match_alternate_as
.Lx39_40:
                                                                                        jmp   n37_match_patref_β
.Lx39_41:
                                                                                        jmp   n34_match_sequence_β
.Lx39_42:
                                                                                        jmp   n31_match_sequence_β
n30_match_alternate_as:
                                                                                        jmp   proc_PAT$3_γ
n30_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n30_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx39_19:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_match_sequence_α:
                        mov              dword ptr [rbp + 112], r14d
                                                                                        jmp   n33_match_lit_α
n31_match_sequence_as:
                                                                                        jmp   n30_match_alternate_s2
n31_match_sequence_β:
                                                                                        jmp   n32_match_defer_β
n31_match_sequence_af:
                                                                                        jmp   n30_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n32_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx42_11
                        mov              rax, qword ptr [1879052336]                    # F
                        mov              rdx, qword ptr [1879052344]
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
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx42_11:
                        test             rax, rax
                                                                                        jz    .Lx42_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx42_4]
                        lea              rdx, [rip + .Lx42_5]
                                                                                        jmp   rax
.Lx42_4:
                                                                                        jmp   n30_match_alternate_s2
.Lx42_5:
                                                                                        jmp   n33_match_lit_β
.Lx42_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
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
                                                                                        js    n33_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx42_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n30_match_alternate_s2
.Lx42_6:
                        add              rsp, 16
                                                                                        jmp   n33_match_lit_β
n32_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n33_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n30_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n30_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n32_match_defer_α
n33_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n30_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n34_match_sequence_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   n36_match_lit_α
n34_match_sequence_as:
                                                                                        jmp   n30_match_alternate_s1
n34_match_sequence_β:
                                                                                        jmp   n35_match_defer_β
n34_match_sequence_af:
                                                                                        jmp   n30_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n35_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx47_11
                        mov              rax, qword ptr [1879052336]                    # F
                        mov              rdx, qword ptr [1879052344]
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
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx47_11:
                        test             rax, rax
                                                                                        jz    .Lx47_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx47_4]
                        lea              rdx, [rip + .Lx47_5]
                                                                                        jmp   rax
.Lx47_4:
                                                                                        jmp   n30_match_alternate_s1
.Lx47_5:
                                                                                        jmp   n36_match_lit_β
.Lx47_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
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
                                                                                        js    n36_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx47_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n30_match_alternate_s1
.Lx47_6:
                        add              rsp, 16
                                                                                        jmp   n36_match_lit_β
n35_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n36_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n30_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n30_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n35_match_defer_α
n36_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n30_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n37_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx50_11
                        mov              rax, qword ptr [1879052320]                    # A
                        mov              rdx, qword ptr [1879052328]
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
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx50_11:
                        test             rax, rax
                                                                                        jz    .Lx50_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx50_4]
                        lea              rdx, [rip + .Lx50_5]
                                                                                        jmp   rax
.Lx50_4:
                                                                                        jmp   n30_match_alternate_s0
.Lx50_5:
                                                                                        jmp   n30_match_alternate_af
.Lx50_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
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
                                                                                        js    n30_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx50_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n30_match_alternate_s0
.Lx50_6:
                        add              rsp, 16
                                                                                        jmp   n30_match_alternate_af
n37_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx51_0
                        mov              ecx, dword ptr [rbp + 168]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx51_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 176], 1
                                                                                        jne   .Lx52_0
                        mov              eax, dword ptr [rbp + 168]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx52_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx52_0
                        mov              dword ptr [rbp + 168], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx52_0:
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
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
                        sub              rsp, 224
                        mov              qword ptr [rsp + 200], rcx
                        mov              qword ptr [rsp + 208], rdx
                        mov              qword ptr [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 192], r8
                        mov              dword ptr [rsp + 184], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + proc_PAT$4_ω]
                        mov              qword ptr [rbp + 160], rax
#-----------------------------------------------------------------------------------------------------------------------
n53_match_patref_α:
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
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx62_11
                        mov              rax, qword ptr [1879052336]                    # F
                        mov              rdx, qword ptr [1879052344]
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
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx62_11:
                        test             rax, rax
                                                                                        jz    .Lx62_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx62_4]
                        lea              rdx, [rip + .Lx62_5]
                                                                                        jmp   rax
.Lx62_4:
                                                                                        jmp   n54_match_fence1_α
.Lx62_5:
                        add              rsp, 144
                                                                                        jmp   proc_PAT$4_scanfail
.Lx62_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
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
                                                                                        jns   .Lx62_240
                        add              rsp, 144
                                                                                        jmp   proc_PAT$4_scanfail
.Lx62_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx62_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n54_match_fence1_α
.Lx62_6:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   proc_PAT$4_scanfail
n53_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n54_match_fence1_α:
                        mov              qword ptr [rbp + 16], rsp
                                                                                        jmp   n55_match_alternate_α
n54_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 16], rbp
                                                                                        jmp   proc_PAT$4_γ
n54_match_fence1_β:
n54_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 16]
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n55_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx66_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n57_match_sequence_α
.Lx66_21:
                        lea              rax, [rip + .Lx66_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n56_match_lit_α
n55_match_alternate_s0:
                        lea              rax, [rip + .Lx66_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n55_match_alternate_as
n55_match_alternate_s1:
                        lea              rax, [rip + .Lx66_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n55_match_alternate_as
.Lx66_40:
                                                                                        jmp   n57_match_sequence_β
.Lx66_41:
                                                                                        jmp   n56_match_lit_β
n55_match_alternate_as:
                                                                                        jmp   n54_match_fence1_as
n55_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n55_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx66_19:
                                                                                        jmp   n54_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n56_match_lit_α:
                                                                                        jmp   n55_match_alternate_s1
n56_match_lit_β:
                                                                                        jmp   n55_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n57_match_sequence_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   n59_match_alternate_α
n57_match_sequence_as:
                                                                                        jmp   n55_match_alternate_s0
n57_match_sequence_β:
                                                                                        jmp   n58_match_defer_β
n57_match_sequence_af:
                                                                                        jmp   n55_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n58_match_defer_α:
                        mov              qword ptr [rbp + 128], rsp
                        mov              rax, qword ptr [1879052352]                    # T
                        mov              rdx, qword ptr [1879052360]
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
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n55_match_alternate_s0
.Lx71_5:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n59_match_alternate_β
.Lx71_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]                               # varname
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
                                                                                        js    n59_match_alternate_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx71_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n55_match_alternate_s0
.Lx71_6:
                        add              rsp, 16
                                                                                        jmp   n59_match_alternate_β
n58_match_defer_β:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n59_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n59_match_alternate_α:
                        mov              dword ptr [rbp + 80], r14d
                        lea              rax, [rip + .Lx73_21]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   n61_match_lit_α
.Lx73_21:
                        lea              rax, [rip + .Lx73_19]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   n60_match_lit_α
n59_match_alternate_s0:
                        lea              rax, [rip + .Lx73_40]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n59_match_alternate_as
n59_match_alternate_s1:
                        lea              rax, [rip + .Lx73_41]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n59_match_alternate_as
.Lx73_40:
                                                                                        jmp   n61_match_lit_β
.Lx73_41:
                                                                                        jmp   n60_match_lit_β
n59_match_alternate_as:
                                                                                        jmp   n58_match_defer_α
n59_match_alternate_β:
                        mov              rax, qword ptr [rbp + 88]
                                                                                        jmp   rax
n59_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rax, qword ptr [rbp + 96]
                                                                                        jmp   rax
.Lx73_19:
                                                                                        jmp   n55_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n60_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n59_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   n59_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n59_match_alternate_s1
n60_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n59_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n61_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n59_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   n59_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n59_match_alternate_s0
n61_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n59_match_alternate_af
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 192], 1
                                                                                        jne   .Lx78_0
                        mov              ecx, dword ptr [rbp + 184]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx78_0:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 192], 1
                                                                                        jne   .Lx79_0
                        mov              eax, dword ptr [rbp + 184]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx79_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx79_0
                        mov              dword ptr [rbp + 184], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
.Lx79_0:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rbp + 160]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              rbp, qword ptr [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, qword ptr [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, qword ptr [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
                        sub              rsp, 224
                        mov              qword ptr [rsp + 200], rcx
                        mov              qword ptr [rsp + 208], rdx
                        mov              qword ptr [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 192], r8
                        mov              dword ptr [rsp + 184], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
                        lea              rax, [rip + proc_PAT$5_ω]
                        mov              qword ptr [rbp + 160], rax
#-----------------------------------------------------------------------------------------------------------------------
n80_match_patref_α:
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
                        mov              qword ptr [rbp + 144], rsp
                        mov              rax, qword ptr [1879052352]                    # T
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 8
                                                                                        jne   .Lx89_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx89_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx89_10
.Lx89_9:
                        xor              eax, eax
.Lx89_10:
                        test             rax, rax
                                                                                        jz    .Lx89_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx89_4]
                        lea              rdx, [rip + .Lx89_5]
                                                                                        jmp   rax
.Lx89_4:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n81_match_fence1_α
.Lx89_5:
                        mov              rsp, qword ptr [rbp + 144]
                        add              rsp, 144
                                                                                        jmp   proc_PAT$5_scanfail
.Lx89_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx89_2:
                        test             rax, rax
                                                                                        je    .Lx89_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx89_7]
                        lea              rdx, [rip + .Lx89_8]
                                                                                        jmp   rax
.Lx89_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx89_2
.Lx89_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx89_2
.Lx89_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx89_240
                        add              rsp, 144
                                                                                        jmp   proc_PAT$5_scanfail
.Lx89_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx89_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n81_match_fence1_α
.Lx89_6:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   proc_PAT$5_scanfail
n80_match_patref_β:
                        mov              rsp, qword ptr [rbp + 144]
                        add              rsp, 144
                                                                                        jmp   proc_PAT$5_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n81_match_fence1_α:
                        mov              qword ptr [rbp + 16], rsp
                                                                                        jmp   n82_match_alternate_α
n81_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 16], rbp
                                                                                        jmp   proc_PAT$5_γ
n81_match_fence1_β:
n81_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 16]
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n82_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx93_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n84_match_sequence_α
.Lx93_21:
                        lea              rax, [rip + .Lx93_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n83_match_lit_α
n82_match_alternate_s0:
                        lea              rax, [rip + .Lx93_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n82_match_alternate_as
n82_match_alternate_s1:
                        lea              rax, [rip + .Lx93_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n82_match_alternate_as
.Lx93_40:
                                                                                        jmp   n84_match_sequence_β
.Lx93_41:
                                                                                        jmp   n83_match_lit_β
n82_match_alternate_as:
                                                                                        jmp   n81_match_fence1_as
n82_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n82_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx93_19:
                                                                                        jmp   n81_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n83_match_lit_α:
                                                                                        jmp   n82_match_alternate_s1
n83_match_lit_β:
                                                                                        jmp   n82_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n84_match_sequence_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   n86_match_alternate_α
n84_match_sequence_as:
                                                                                        jmp   n82_match_alternate_s0
n84_match_sequence_β:
                                                                                        jmp   n85_match_defer_β
n84_match_sequence_af:
                                                                                        jmp   n82_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n85_match_defer_α:
                        mov              qword ptr [rbp + 128], rsp
                        mov              rax, qword ptr [1879052368]                    # X
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 8
                                                                                        jne   .Lx98_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx98_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx98_10
.Lx98_9:
                        xor              eax, eax
.Lx98_10:
                        test             rax, rax
                                                                                        jz    .Lx98_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx98_4]
                        lea              rdx, [rip + .Lx98_5]
                                                                                        jmp   rax
.Lx98_4:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n82_match_alternate_s0
.Lx98_5:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n86_match_alternate_β
.Lx98_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx98_2:
                        test             rax, rax
                                                                                        je    .Lx98_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx98_7]
                        lea              rdx, [rip + .Lx98_8]
                                                                                        jmp   rax
.Lx98_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx98_2
.Lx98_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx98_2
.Lx98_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n86_match_alternate_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx98_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n82_match_alternate_s0
.Lx98_6:
                        add              rsp, 16
                                                                                        jmp   n86_match_alternate_β
n85_match_defer_β:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n86_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n86_match_alternate_α:
                        mov              dword ptr [rbp + 80], r14d
                        lea              rax, [rip + .Lx100_21]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   n88_match_lit_α
.Lx100_21:
                        lea              rax, [rip + .Lx100_19]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   n87_match_lit_α
n86_match_alternate_s0:
                        lea              rax, [rip + .Lx100_40]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n86_match_alternate_as
n86_match_alternate_s1:
                        lea              rax, [rip + .Lx100_41]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n86_match_alternate_as
.Lx100_40:
                                                                                        jmp   n88_match_lit_β
.Lx100_41:
                                                                                        jmp   n87_match_lit_β
n86_match_alternate_as:
                                                                                        jmp   n85_match_defer_α
n86_match_alternate_β:
                        mov              rax, qword ptr [rbp + 88]
                                                                                        jmp   rax
n86_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rax, qword ptr [rbp + 96]
                                                                                        jmp   rax
.Lx100_19:
                                                                                        jmp   n82_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n87_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n86_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n86_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n86_match_alternate_s1
n87_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n86_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n88_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n86_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n86_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n86_match_alternate_s0
n88_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n86_match_alternate_af
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 192], 1
                                                                                        jne   .Lx105_0
                        mov              ecx, dword ptr [rbp + 184]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx105_0:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 192], 1
                                                                                        jne   .Lx106_0
                        mov              eax, dword ptr [rbp + 184]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx106_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx106_0
                        mov              dword ptr [rbp + 184], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
.Lx106_0:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_β:
                                                                                        jmp   qword ptr [rbp + 160]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$5_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              rbp, qword ptr [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                        mov              rax, qword ptr [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, qword ptr [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$6_α
proc_PAT$6_α:
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rcx
                        mov              qword ptr [rsp + 256], rdx
                        mov              qword ptr [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 240], r8
                        mov              dword ptr [rsp + 232], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
                        lea              rax, [rip + n107_match_sequence_β]
                        mov              qword ptr [rbp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n107_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n114_lit_integer_α
n107_match_sequence_as:
                                                                                        jmp   proc_PAT$6_γ
n107_match_sequence_β:
                                                                                        jmp   n109_match_rpos_β
n107_match_sequence_af:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n109_match_rpos_α
n108_lit_integer_β:
                                                                                        jmp   n110_match_arbno_β
.Lx118_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n109_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n110_match_arbno_β
                                                                                        jmp   proc_PAT$6_γ
n109_match_rpos_β:
                                                                                        jmp   n110_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n110_match_arbno_α:
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                                                                                        jmp   n108_lit_integer_α
n110_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 84]
                        mov              rax, qword ptr [rbp + 96]
                        sub              rsp, 112
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 96], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                                                                                        jmp   n111_match_sequence_α
n110_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n111_match_sequence_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                                                                                        jmp   n108_lit_integer_α
n110_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 200]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 88]
                        test             ecx, ecx
                                                                                        jz    .Lx121_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 88], ecx
                        mov              qword ptr [rbp + 96], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n111_match_sequence_β
.Lx121_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   n115_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n111_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n113_match_patref_α
n111_match_sequence_as:
                                                                                        jmp   n110_match_arbno_as
n111_match_sequence_β:
                                                                                        jmp   n112_match_patref_β
n111_match_sequence_af:
                                                                                        jmp   n110_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n112_match_patref_α:
                        mov              rax, qword ptr [1879052384]                    # eol
                        mov              rdx, qword ptr [1879052392]
                        cmp              eax, 8
                                                                                        jne   .Lx124_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx124_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx124_10
.Lx124_9:
                        xor              eax, eax
.Lx124_10:
                        test             rax, rax
                                                                                        jz    .Lx124_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx124_4]
                        lea              rdx, [rip + .Lx124_5]
                                                                                        jmp   rax
.Lx124_4:
                                                                                        jmp   n110_match_arbno_as
.Lx124_5:
                                                                                        jmp   n113_match_patref_β
.Lx124_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx124_2:
                        test             rax, rax
                                                                                        je    .Lx124_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx124_7]
                        lea              rdx, [rip + .Lx124_8]
                                                                                        jmp   rax
.Lx124_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx124_2
.Lx124_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx124_2
.Lx124_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n113_match_patref_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx124_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n110_match_arbno_as
.Lx124_6:
                        add              rsp, 16
                                                                                        jmp   n113_match_patref_β
n112_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n113_match_patref_α:
                        mov              qword ptr [rbp + 144], rsp
                        mov              rax, qword ptr [1879052368]                    # X
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 8
                                                                                        jne   .Lx125_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx125_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx125_10
.Lx125_9:
                        xor              eax, eax
.Lx125_10:
                        test             rax, rax
                                                                                        jz    .Lx125_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx125_4]
                        lea              rdx, [rip + .Lx125_5]
                                                                                        jmp   rax
.Lx125_4:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n112_match_patref_α
.Lx125_5:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n110_match_arbno_af
.Lx125_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx125_2:
                        test             rax, rax
                                                                                        je    .Lx125_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx125_7]
                        lea              rdx, [rip + .Lx125_8]
                                                                                        jmp   rax
.Lx125_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx125_2
.Lx125_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx125_2
.Lx125_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n110_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx125_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n112_match_patref_α
.Lx125_6:
                        add              rsp, 16
                                                                                        jmp   n110_match_arbno_af
n113_match_patref_β:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n110_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:
                        mov              qword ptr [rbp + 48], 3                        # result
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n115_match_pos_α
n114_lit_integer_β:
                                                                                        jmp   proc_PAT$6_ω
.Lx126_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n115_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$6_ω
                                                                                        jmp   n110_match_arbno_α
n115_match_pos_β:
                                                                                        jmp   proc_PAT$6_ω
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx128_0
                        mov              ecx, dword ptr [rbp + 232]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx128_0:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx129_0
                        mov              eax, dword ptr [rbp + 232]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx129_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx129_0
                        mov              dword ptr [rbp + 232], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_attempt
.Lx129_0:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_β:
                                                                                        jmp   qword ptr [rbp + 208]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$6_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              rbp, qword ptr [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                        mov              rax, qword ptr [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, qword ptr [rbp + 264]
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
                        mov              esi, 32
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
                        mov              esi, 144
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
                        .section         .rodata
.Lstartup_pname4:       .string          "PAT$4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_PAT$4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 176
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "PAT$5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_PAT$5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 176
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "PAT$6"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_PAT$6_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 9
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 9
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
n130_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n131_call_α
.Lx190_0:
                        .quad            .Lx190_0_s
.Lx190_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n131_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd192:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd192]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx191_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n134_lit_string_α
.Lx191_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n132_assign_α
n131_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n134_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n132_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # V
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n133_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_α:
                        add              rsp, 32
                                                                                        jmp   n134_lit_string_α
#=======================================================================================================================
#         I              =  SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n135_call_α
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n135_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd198:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd198]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx197_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n138_lit_string_α
.Lx197_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n136_assign_α
n135_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n138_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # I
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n137_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_α:
                        add              rsp, 32
                                                                                        jmp   n138_lit_string_α
#=======================================================================================================================
#         A              =  V | I | FENCE('(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n139_call_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n139_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd204:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd204]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx203_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n142_lit_string_α
.Lx203_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n140_assign_α
n139_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n142_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # A
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n141_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_α:
                        add              rsp, 32
                                                                                        jmp   n142_lit_string_α
#=======================================================================================================================
#         F              =  A | FENCE('+' *F) | FENCE('-' *F)
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n143_call_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n143_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd210:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd210]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx209_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n146_lit_string_α
.Lx209_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n144_assign_α
n143_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n146_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n144_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # F
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n145_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_α:
                        add              rsp, 32
                                                                                        jmp   n146_lit_string_α
#=======================================================================================================================
#         T              =  F FENCE(('*' | '/') *T | '')
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n147_call_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n147_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd216:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd216]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx215_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n150_lit_string_α
.Lx215_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n148_assign_α
n147_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n150_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n148_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # T
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n149_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_α:
                        add              rsp, 32
                                                                                        jmp   n150_lit_string_α
#=======================================================================================================================
#         X              =  T FENCE(('+' | '-') *X | '')
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n151_call_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n151_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd222:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd222]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx221_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n154_lit_integer_α
.Lx221_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n152_assign_α
n151_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n154_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # X
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n153_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_α:
                        add              rsp, 32
                                                                                        jmp   n154_lit_integer_α
#=======================================================================================================================
#         eol            =  CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n155_call_α
.Lx226_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n155_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd70:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd70]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx227_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n158_lit_string_α
.Lx227_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n156_assign_α
n155_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n158_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n156_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # eol
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n157_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_α:
                        add              rsp, 32
                                                                                        jmp   n158_lit_string_α
#=======================================================================================================================
#         C              =  POS(0) ARBNO(X eol) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n159_call_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n159_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd233:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd233]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx232_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n162_lit_string_α
.Lx232_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n160_assign_α
n159_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n162_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # C
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n161_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_α:
                        add              rsp, 32
                                                                                        jmp   n162_lit_string_α
#=======================================================================================================================
#         &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n163_lit_integer_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n164_call_α
.Lx238_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n164_call_α:
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
                        add              rsp, 32
                                                                                        jmp   n166_lit_string_α
.Lx239_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n165_statement_α
n164_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n166_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_α:
                        add              rsp, 48
                                                                                        jmp   n166_lit_string_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4000000]')
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n167_call_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n167_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd245:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd245]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx244_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n172_var_α
.Lx244_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n168_lit_integer_α
n167_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n172_var_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n169_lit_string_α
.Lx246_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n170_call_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          "[-f0 -r4000000]"
#-----------------------------------------------------------------------------------------------------------------------
n170_call_α:
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
.Lbynamefnzd85:         .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd85]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx248_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n172_var_α
.Lx248_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n171_statement_α
n170_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n172_var_α
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_α:
                        add              rsp, 80
                                                                                        jmp   n172_var_α
#=======================================================================================================================
#         src            =  INPUT                          :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx251_0]                # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx251_240
                        add              rsp, 16
                                                                                        jmp   n186_lit_string_α
.Lx251_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n173_assign_α
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n173_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # src
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n174_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_α:
                        add              rsp, 16
                                                                                        jmp   n175_var_α
#=======================================================================================================================
#         src            C                                 :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n175_var_α:
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # src
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n176_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n176_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 56], rbp                      # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 64], r13                      # outer_Σ
                        mov              qword ptr [rbp + 72], r14                      # outer_δ
                        mov              qword ptr [rbp + 80], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 88], rax                      # cap_gen
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
                        mov              qword ptr [rbp + 32], rsp                      # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 24], rax                      # patstk_mark
                        mov              dword ptr [rbp + 16], 0                        # start_δ
.Lx257_0:
                        mov              r14d, dword ptr [rbp + 16]
                                                                                        jmp   n177_match_patref_α
n176_match_begin_β:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, r15d
                                                                                        jg    .Lx257_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx257_1
                                                                                        jmp   .Lx257_0
.Lx257_1:
                        mov              rax, qword ptr [rbp + 24]                      # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        mov              r10, qword ptr [1879048192]
.Lx257_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx257_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 72]                      # outer_δ
                        mov              r15, qword ptr [rbp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]                      # old_rbp
                        add              rsp, 128
                                                                                        jmp   n186_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n177_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx258_11
                        mov              rax, qword ptr [1879052400]                    # C
                        mov              rdx, qword ptr [1879052408]
                        cmp              eax, 8
                                                                                        jne   .Lx258_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx258_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx258_10
.Lx258_9:
                        xor              eax, eax
.Lx258_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx258_11:
                        test             rax, rax
                                                                                        jz    .Lx258_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx258_4]
                        lea              rdx, [rip + .Lx258_5]
                                                                                        jmp   rax
.Lx258_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 16], eax
                                                                                        jmp   n178_match_end_α
.Lx258_5:
                                                                                        jmp   n176_match_begin_β
.Lx258_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx258_2:
                        test             rax, rax
                                                                                        je    .Lx258_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx258_7]
                        lea              rdx, [rip + .Lx258_8]
                                                                                        jmp   rax
.Lx258_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx258_2
.Lx258_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx258_2
.Lx258_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n176_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx258_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n178_match_end_α
.Lx258_6:
                        add              rsp, 16
                                                                                        jmp   n176_match_begin_β
n177_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n178_match_end_α:
                        mov              rax, qword ptr [rbp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx260_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx260_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx260_1:
                        test             rax, rax
                                                                                        je    .Lx260_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx260_3]
                        lea              rdx, [rip + .Lx260_4]
                                                                                        jmp   rax
.Lx260_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx260_1
.Lx260_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx260_1
.Lx260_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx260_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx260_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 72]                      # outer_δ
                        mov              r15, qword ptr [rbp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n179_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_α:
                        mov              rbp, qword ptr [rbp + 56]                      # old_rbp
                        add              rsp, 128
                                                                                        jmp   n180_lit_string_α
#=======================================================================================================================
#         OUTPUT         =  'matched bytes=' SIZE(src)      :(END)
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n181_var_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # src
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n182_call_α
#-----------------------------------------------------------------------------------------------------------------------
n182_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd266:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd266]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx265_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
.Lx265_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n183_binop_α
n182_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n183_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # lit_string
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n184_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n184_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx268_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n185_statement_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_α:
                        add              rsp, 64
                                                                                        jmp   main_γ
#=======================================================================================================================
# fail    OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n187_assign_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n187_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx272_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n188_statement_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n189_goto_α:
                                                                                        jmp   n186_lit_string_α
n189_goto_β:
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
.S1:                    .string          "I"
.S2:                    .string          "V"
.S3:                    .string          "F"
.S4:                    .string          "A"
.S5:                    .string          "T"
.S6:                    .string          "eol"
.S7:                    .string          "C"
                        .text
                        .section         .rodata
.C0:
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C1:
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
