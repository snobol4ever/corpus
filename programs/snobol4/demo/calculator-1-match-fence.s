                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        .global          proc_PAT$0_α
                        .global          proc_PAT$0_β
                        .global          proc_PAT$0_γ
                        .global          proc_PAT$0_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], r8
                        mov              dword ptr [rsp + 8], r14d
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
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 8]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 8]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 8], eax
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
                                                                                        jmp   qword ptr [rbp + 32]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, [rbp + 24]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        .global          proc_PAT$1_α
                        .global          proc_PAT$1_β
                        .global          proc_PAT$1_γ
                        .global          proc_PAT$1_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], r8
                        mov              dword ptr [rsp + 8], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n3_match_span_β]
                        mov              qword ptr [rbp + 16], rax
#-----------------------------------------------------------------------------------------------------------------------
n3_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx5_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx5_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx5_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx5_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx5_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx5_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx5_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx5_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx5_1
                        add              ecx, 1
                                                                                        jmp   .Lx5_0
.Lx5_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx5_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx5_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   proc_PAT$1_scanhit
n3_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 8]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 8]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 8], eax
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
                                                                                        jmp   qword ptr [rbp + 16]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, [rbp + 24]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        .global          proc_PAT$2_α
                        .global          proc_PAT$2_β
                        .global          proc_PAT$2_γ
                        .global          proc_PAT$2_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], r8
                        mov              dword ptr [rsp + 8], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + n6_match_alternate_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n6_match_alternate_α:
                        sub              rsp, 32
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx14_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n12_match_patref_α
.Lx14_21:
                        lea              rax, [rip + .Lx14_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n11_match_patref_α
.Lx14_22:
                        lea              rax, [rip + .Lx14_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n7_match_sequence_α
n6_match_alternate_s0:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx14_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n6_match_alternate_as
n6_match_alternate_s1:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx14_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n6_match_alternate_as
n6_match_alternate_s2:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx14_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n6_match_alternate_as
.Lx14_40:
                                                                                        jmp   n12_match_patref_β
.Lx14_41:
                                                                                        jmp   n11_match_patref_β
.Lx14_42:
                                                                                        jmp   n7_match_sequence_β
n6_match_alternate_as:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   proc_PAT$2_γ
n6_match_alternate_β:
                        sub              rsp, 32
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n6_match_alternate_af:
                        sub              rsp, 32
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx14_19:
                        add              rsp, 32
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_match_sequence_α:
                        mov              dword ptr [rbp + 80], r14d
                                                                                        jmp   n10_match_lit_α
n7_match_sequence_as:
                                                                                        jmp   n6_match_alternate_s2
n7_match_sequence_β:
                                                                                        jmp   n8_match_lit_β
n7_match_sequence_af:
                                                                                        jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n8_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n9_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n9_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n6_match_alternate_s2
n8_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n9_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_defer_α:
                        mov              qword ptr [rbp + 112], rsp
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 3
                                                                                        jne   .Lx19_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx19_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx19_10
.Lx19_9:
                        xor              eax, eax
.Lx19_10:
                        test             rax, rax
                                                                                        jz    .Lx19_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx19_4]
                        lea              rdx, [rip + .Lx19_5]
                                                                                        jmp   rax
.Lx19_4:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n8_match_lit_α
.Lx19_5:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n10_match_lit_β
.Lx19_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx19_2:
                        test             rax, rax
                                                                                        je    .Lx19_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx19_7]
                        lea              rdx, [rip + .Lx19_8]
                                                                                        jmp   rax
.Lx19_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx19_2
.Lx19_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx19_2
.Lx19_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n10_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx19_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n8_match_lit_α
.Lx19_6:
                        add              rsp, 16
                                                                                        jmp   n10_match_lit_β
n9_match_defer_β:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n10_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n6_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n6_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n9_match_defer_α
n10_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n11_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx22_11
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx22_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx22_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx22_10
.Lx22_9:
                        xor              eax, eax
.Lx22_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx22_11:
                        test             rax, rax
                                                                                        jz    .Lx22_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx22_4]
                        lea              rdx, [rip + .Lx22_5]
                                                                                        jmp   rax
.Lx22_4:
                                                                                        jmp   n6_match_alternate_s1
.Lx22_5:
                                                                                        jmp   n6_match_alternate_af
.Lx22_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx22_2:
                        test             rax, rax
                                                                                        je    .Lx22_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx22_7]
                        lea              rdx, [rip + .Lx22_8]
                                                                                        jmp   rax
.Lx22_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx22_2
.Lx22_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx22_2
.Lx22_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n6_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx22_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n6_match_alternate_s1
.Lx22_6:
                        add              rsp, 16
                                                                                        jmp   n6_match_alternate_af
n11_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n12_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx23_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx23_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx23_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx23_10
.Lx23_9:
                        xor              eax, eax
.Lx23_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx23_11:
                        test             rax, rax
                                                                                        jz    .Lx23_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx23_4]
                        lea              rdx, [rip + .Lx23_5]
                                                                                        jmp   rax
.Lx23_4:
                                                                                        jmp   n6_match_alternate_s0
.Lx23_5:
                                                                                        jmp   n6_match_alternate_af
.Lx23_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx23_2
.Lx23_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx23_2
.Lx23_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n6_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx23_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n6_match_alternate_s0
.Lx23_6:
                        add              rsp, 16
                                                                                        jmp   n6_match_alternate_af
n12_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 8]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 8]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 8], eax
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
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, [rbp + 24]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        .global          proc_PAT$3_α
                        .global          proc_PAT$3_β
                        .global          proc_PAT$3_γ
                        .global          proc_PAT$3_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], r8
                        mov              dword ptr [rsp + 8], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + n24_match_alternate_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n24_match_alternate_α:
                        sub              rsp, 32
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx33_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n31_match_patref_α
.Lx33_21:
                        lea              rax, [rip + .Lx33_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n28_match_sequence_α
.Lx33_22:
                        lea              rax, [rip + .Lx33_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n25_match_sequence_α
n24_match_alternate_s0:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx33_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n24_match_alternate_as
n24_match_alternate_s1:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx33_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n24_match_alternate_as
n24_match_alternate_s2:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx33_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n24_match_alternate_as
.Lx33_40:
                                                                                        jmp   n31_match_patref_β
.Lx33_41:
                                                                                        jmp   n28_match_sequence_β
.Lx33_42:
                                                                                        jmp   n25_match_sequence_β
n24_match_alternate_as:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   proc_PAT$3_γ
n24_match_alternate_β:
                        sub              rsp, 32
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n24_match_alternate_af:
                        sub              rsp, 32
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx33_19:
                        add              rsp, 32
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_match_sequence_α:
                        mov              dword ptr [rbp + 112], r14d
                                                                                        jmp   n27_match_lit_α
n25_match_sequence_as:
                                                                                        jmp   n24_match_alternate_s2
n25_match_sequence_β:
                                                                                        jmp   n26_match_defer_β
n25_match_sequence_af:
                                                                                        jmp   n24_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n26_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx36_11
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 3
                                                                                        jne   .Lx36_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx36_10
                        mov              rdi, rdx
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
                                                                                        jmp   n24_match_alternate_s2
.Lx36_5:
                                                                                        jmp   n27_match_lit_β
.Lx36_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx36_2
.Lx36_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx36_2
.Lx36_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n27_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx36_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n24_match_alternate_s2
.Lx36_6:
                        add              rsp, 16
                                                                                        jmp   n27_match_lit_β
n26_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n27_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n24_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n24_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n26_match_defer_α
n27_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n24_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n28_match_sequence_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   n30_match_lit_α
n28_match_sequence_as:
                                                                                        jmp   n24_match_alternate_s1
n28_match_sequence_β:
                                                                                        jmp   n29_match_defer_β
n28_match_sequence_af:
                                                                                        jmp   n24_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n29_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx41_11
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 3
                                                                                        jne   .Lx41_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx41_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx41_10
.Lx41_9:
                        xor              eax, eax
.Lx41_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx41_11:
                        test             rax, rax
                                                                                        jz    .Lx41_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx41_4]
                        lea              rdx, [rip + .Lx41_5]
                                                                                        jmp   rax
.Lx41_4:
                                                                                        jmp   n24_match_alternate_s1
.Lx41_5:
                                                                                        jmp   n30_match_lit_β
.Lx41_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx41_2:
                        test             rax, rax
                                                                                        je    .Lx41_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx41_7]
                        lea              rdx, [rip + .Lx41_8]
                                                                                        jmp   rax
.Lx41_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx41_2
.Lx41_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx41_2
.Lx41_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n30_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx41_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n24_match_alternate_s1
.Lx41_6:
                        add              rsp, 16
                                                                                        jmp   n30_match_lit_β
n29_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n30_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n24_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n24_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n29_match_defer_α
n30_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n24_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n31_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx44_11
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx44_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx44_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx44_10
.Lx44_9:
                        xor              eax, eax
.Lx44_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx44_11:
                        test             rax, rax
                                                                                        jz    .Lx44_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx44_4]
                        lea              rdx, [rip + .Lx44_5]
                                                                                        jmp   rax
.Lx44_4:
                                                                                        jmp   n24_match_alternate_s0
.Lx44_5:
                                                                                        jmp   n24_match_alternate_af
.Lx44_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx44_2
.Lx44_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx44_2
.Lx44_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n24_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx44_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n24_match_alternate_s0
.Lx44_6:
                        add              rsp, 16
                                                                                        jmp   n24_match_alternate_af
n31_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 8]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 8]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 8], eax
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
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, [rbp + 24]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
                        .global          proc_PAT$4_α
                        .global          proc_PAT$4_β
                        .global          proc_PAT$4_γ
                        .global          proc_PAT$4_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], r8
                        mov              dword ptr [rsp + 8], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + proc_PAT$4_ω]
                        mov              qword ptr [rbp + 160], rax
#-----------------------------------------------------------------------------------------------------------------------
n45_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx54_11
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        cmp              eax, 3
                                                                                        jne   .Lx54_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx54_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx54_10
.Lx54_9:
                        xor              eax, eax
.Lx54_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx54_11:
                        test             rax, rax
                                                                                        jz    .Lx54_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx54_4]
                        lea              rdx, [rip + .Lx54_5]
                                                                                        jmp   rax
.Lx54_4:
                                                                                        jmp   n46_match_fence1_α
.Lx54_5:
                                                                                        jmp   proc_PAT$4_scanfail
.Lx54_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx54_2
.Lx54_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx54_2
.Lx54_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$4_scanfail
                        mov              r14d, eax
                        lea              rax, [rip + .Lx54_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n46_match_fence1_α
.Lx54_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_scanfail
n45_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n46_match_fence1_α:
                        mov              qword ptr [rbp + 16], rsp
                                                                                        jmp   n47_match_alternate_α
n46_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 16], rbp
                                                                                        jmp   proc_PAT$4_γ
n46_match_fence1_β:
n46_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 16]
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n47_match_alternate_α:
                        sub              rsp, 32
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx58_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n49_match_sequence_α
.Lx58_21:
                        lea              rax, [rip + .Lx58_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n48_match_lit_α
n47_match_alternate_s0:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx58_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n47_match_alternate_as
n47_match_alternate_s1:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx58_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n47_match_alternate_as
.Lx58_40:
                                                                                        jmp   n49_match_sequence_β
.Lx58_41:
                                                                                        jmp   n48_match_lit_β
n47_match_alternate_as:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n46_match_fence1_as
n47_match_alternate_β:
                        sub              rsp, 32
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n47_match_alternate_af:
                        sub              rsp, 32
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx58_19:
                        add              rsp, 32
                                                                                        jmp   n46_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n48_match_lit_α:
                                                                                        jmp   n47_match_alternate_s1
n48_match_lit_β:
                                                                                        jmp   n47_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n49_match_sequence_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   n51_match_alternate_α
n49_match_sequence_as:
                                                                                        jmp   n47_match_alternate_s0
n49_match_sequence_β:
                                                                                        jmp   n50_match_defer_β
n49_match_sequence_af:
                                                                                        jmp   n47_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n50_match_defer_α:
                        mov              qword ptr [rbp + 128], rsp
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 3
                                                                                        jne   .Lx63_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx63_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx63_10
.Lx63_9:
                        xor              eax, eax
.Lx63_10:
                        test             rax, rax
                                                                                        jz    .Lx63_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx63_4]
                        lea              rdx, [rip + .Lx63_5]
                                                                                        jmp   rax
.Lx63_4:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n47_match_alternate_s0
.Lx63_5:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n51_match_alternate_β
.Lx63_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx63_2:
                        test             rax, rax
                                                                                        je    .Lx63_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx63_7]
                        lea              rdx, [rip + .Lx63_8]
                                                                                        jmp   rax
.Lx63_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx63_2
.Lx63_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx63_2
.Lx63_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n51_match_alternate_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx63_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n47_match_alternate_s0
.Lx63_6:
                        add              rsp, 16
                                                                                        jmp   n51_match_alternate_β
n50_match_defer_β:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n51_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n51_match_alternate_α:
                        sub              rsp, 32
                        mov              dword ptr [rbp + 80], r14d
                        lea              rax, [rip + .Lx65_21]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   n53_match_lit_α
.Lx65_21:
                        lea              rax, [rip + .Lx65_19]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   n52_match_lit_α
n51_match_alternate_s0:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx65_40]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n51_match_alternate_as
n51_match_alternate_s1:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx65_41]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n51_match_alternate_as
.Lx65_40:
                                                                                        jmp   n53_match_lit_β
.Lx65_41:
                                                                                        jmp   n52_match_lit_β
n51_match_alternate_as:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n50_match_defer_α
n51_match_alternate_β:
                        sub              rsp, 32
                        mov              rax, qword ptr [rbp + 88]
                                                                                        jmp   rax
n51_match_alternate_af:
                        sub              rsp, 32
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rax, qword ptr [rbp + 96]
                                                                                        jmp   rax
.Lx65_19:
                        add              rsp, 32
                                                                                        jmp   n47_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n52_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n51_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   n51_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n51_match_alternate_s1
n52_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n51_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n53_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n51_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   n51_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n51_match_alternate_s0
n53_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n51_match_alternate_af
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 8]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 8]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 8], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
8:
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
                        mov              rax, [rbp + 24]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
                        .global          proc_PAT$5_α
                        .global          proc_PAT$5_β
                        .global          proc_PAT$5_γ
                        .global          proc_PAT$5_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], r8
                        mov              dword ptr [rsp + 8], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
                        lea              rax, [rip + proc_PAT$5_ω]
                        mov              qword ptr [rbp + 160], rax
#-----------------------------------------------------------------------------------------------------------------------
n70_match_patref_α:
                        mov              qword ptr [rbp + 144], rsp
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        cmp              eax, 3
                                                                                        jne   .Lx79_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx79_10
                        mov              rdi, rdx
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
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n71_match_fence1_α
.Lx79_5:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   proc_PAT$5_scanfail
.Lx79_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
                        xor              esi, esi
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx79_2
.Lx79_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx79_2
.Lx79_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$5_scanfail
                        mov              r14d, eax
                        lea              rax, [rip + .Lx79_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n71_match_fence1_α
.Lx79_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_scanfail
n70_match_patref_β:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   proc_PAT$5_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n71_match_fence1_α:
                        mov              qword ptr [rbp + 16], rsp
                                                                                        jmp   n72_match_alternate_α
n71_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 16], rbp
                                                                                        jmp   proc_PAT$5_γ
n71_match_fence1_β:
n71_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 16]
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n72_match_alternate_α:
                        sub              rsp, 32
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx83_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n74_match_sequence_α
.Lx83_21:
                        lea              rax, [rip + .Lx83_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n73_match_lit_α
n72_match_alternate_s0:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx83_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n72_match_alternate_as
n72_match_alternate_s1:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx83_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n72_match_alternate_as
.Lx83_40:
                                                                                        jmp   n74_match_sequence_β
.Lx83_41:
                                                                                        jmp   n73_match_lit_β
n72_match_alternate_as:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n71_match_fence1_as
n72_match_alternate_β:
                        sub              rsp, 32
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n72_match_alternate_af:
                        sub              rsp, 32
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx83_19:
                        add              rsp, 32
                                                                                        jmp   n71_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n73_match_lit_α:
                                                                                        jmp   n72_match_alternate_s1
n73_match_lit_β:
                                                                                        jmp   n72_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n74_match_sequence_α:
                        mov              dword ptr [rbp + 64], r14d
                                                                                        jmp   n76_match_alternate_α
n74_match_sequence_as:
                                                                                        jmp   n72_match_alternate_s0
n74_match_sequence_β:
                                                                                        jmp   n75_match_defer_β
n74_match_sequence_af:
                                                                                        jmp   n72_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n75_match_defer_α:
                        mov              qword ptr [rbp + 128], rsp
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 3
                                                                                        jne   .Lx88_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx88_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx88_10
.Lx88_9:
                        xor              eax, eax
.Lx88_10:
                        test             rax, rax
                                                                                        jz    .Lx88_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx88_4]
                        lea              rdx, [rip + .Lx88_5]
                                                                                        jmp   rax
.Lx88_4:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n72_match_alternate_s0
.Lx88_5:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n76_match_alternate_β
.Lx88_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx88_2:
                        test             rax, rax
                                                                                        je    .Lx88_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx88_7]
                        lea              rdx, [rip + .Lx88_8]
                                                                                        jmp   rax
.Lx88_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx88_2
.Lx88_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx88_2
.Lx88_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n76_match_alternate_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx88_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n72_match_alternate_s0
.Lx88_6:
                        add              rsp, 16
                                                                                        jmp   n76_match_alternate_β
n75_match_defer_β:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n76_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n76_match_alternate_α:
                        sub              rsp, 32
                        mov              dword ptr [rbp + 80], r14d
                        lea              rax, [rip + .Lx90_21]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   n78_match_lit_α
.Lx90_21:
                        lea              rax, [rip + .Lx90_19]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   n77_match_lit_α
n76_match_alternate_s0:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx90_40]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n76_match_alternate_as
n76_match_alternate_s1:
                        sub              rsp, 32
                        lea              rax, [rip + .Lx90_41]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n76_match_alternate_as
.Lx90_40:
                                                                                        jmp   n78_match_lit_β
.Lx90_41:
                                                                                        jmp   n77_match_lit_β
n76_match_alternate_as:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n75_match_defer_α
n76_match_alternate_β:
                        sub              rsp, 32
                        mov              rax, qword ptr [rbp + 88]
                                                                                        jmp   rax
n76_match_alternate_af:
                        sub              rsp, 32
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rax, qword ptr [rbp + 96]
                                                                                        jmp   rax
.Lx90_19:
                        add              rsp, 32
                                                                                        jmp   n72_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n77_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n76_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n76_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n76_match_alternate_s1
n77_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n76_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n78_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n76_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n76_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n76_match_alternate_s0
n78_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n76_match_alternate_af
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 8]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 8]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 8], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
8:
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
                        mov              rax, [rbp + 24]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$6_α
proc_PAT$6_α:
                        .global          proc_PAT$6_α
                        .global          proc_PAT$6_β
                        .global          proc_PAT$6_γ
                        .global          proc_PAT$6_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], r8
                        mov              dword ptr [rsp + 8], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
                        lea              rax, [rip + n95_match_sequence_β]
                        mov              qword ptr [rbp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n95_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n102_lit_integer_α
n95_match_sequence_as:
                                                                                        jmp   proc_PAT$6_γ
n95_match_sequence_β:
                                                                                        jmp   n97_match_rpos_β
n95_match_sequence_af:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n97_match_rpos_α
n96_lit_integer_β:
                                                                                        jmp   n98_match_arbno_β
.Lx106_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n97_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n98_match_arbno_β
                                                                                        jmp   proc_PAT$6_γ
n97_match_rpos_β:
                                                                                        jmp   n98_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n98_match_arbno_α:
                        sub              rsp, 48
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                        add              rsp, 48
                                                                                        jmp   n96_lit_integer_α
n98_match_arbno_β:
                        sub              rsp, 48
                        mov              r14d, dword ptr [rbp + 84]
                        mov              rax, qword ptr [rbp + 96]
                        sub              rsp, 112
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 96], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                                                                                        jmp   n99_match_sequence_α
n98_match_arbno_as:
                        sub              rsp, 48
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n99_match_sequence_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                        add              rsp, 48
                                                                                        jmp   n96_lit_integer_α
n98_match_arbno_af:
                        sub              rsp, 48
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 200]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 88]
                        test             ecx, ecx
                                                                                        jz    .Lx109_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 88], ecx
                        mov              qword ptr [rbp + 96], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n99_match_sequence_β
.Lx109_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                        add              rsp, 48
                                                                                        jmp   n103_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n99_match_sequence_α:
                        sub              rsp, 32
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n101_match_patref_α
n99_match_sequence_as:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n98_match_arbno_as
n99_match_sequence_β:
                        sub              rsp, 32
                                                                                        jmp   n100_match_patref_β
n99_match_sequence_af:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   n98_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n100_match_patref_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        cmp              eax, 3
                                                                                        jne   .Lx112_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx112_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx112_10
.Lx112_9:
                        xor              eax, eax
.Lx112_10:
                        test             rax, rax
                                                                                        jz    .Lx112_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx112_4]
                        lea              rdx, [rip + .Lx112_5]
                                                                                        jmp   rax
.Lx112_4:
                        add              rsp, 32
                                                                                        jmp   n98_match_arbno_as
.Lx112_5:
                        add              rsp, 32
                                                                                        jmp   n101_match_patref_β
.Lx112_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx112_2:
                        test             rax, rax
                                                                                        je    .Lx112_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx112_7]
                        lea              rdx, [rip + .Lx112_8]
                                                                                        jmp   rax
.Lx112_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx112_2
.Lx112_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx112_2
.Lx112_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx112_240
                        add              rsp, 32
                                                                                        jmp   n101_match_patref_β
.Lx112_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx112_6]
                        sub              rsp, 8
                        push             rax
                        add              rsp, 32
                                                                                        jmp   n98_match_arbno_as
.Lx112_6:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n101_match_patref_β
n100_match_patref_β:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n101_match_patref_α:
                        mov              qword ptr [rbp + 144], rsp
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 3
                                                                                        jne   .Lx113_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx113_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx113_10
.Lx113_9:
                        xor              eax, eax
.Lx113_10:
                        test             rax, rax
                                                                                        jz    .Lx113_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx113_4]
                        lea              rdx, [rip + .Lx113_5]
                                                                                        jmp   rax
.Lx113_4:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n100_match_patref_α
.Lx113_5:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n98_match_arbno_af
.Lx113_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx113_2:
                        test             rax, rax
                                                                                        je    .Lx113_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx113_7]
                        lea              rdx, [rip + .Lx113_8]
                                                                                        jmp   rax
.Lx113_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx113_2
.Lx113_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx113_2
.Lx113_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n98_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx113_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n100_match_patref_α
.Lx113_6:
                        add              rsp, 16
                                                                                        jmp   n98_match_arbno_af
n101_match_patref_β:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n98_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n103_match_pos_α
n102_lit_integer_β:
                                                                                        jmp   proc_PAT$6_ω
.Lx114_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n103_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$6_ω
                                                                                        jmp   n98_match_arbno_α
n103_match_pos_β:
                                                                                        jmp   proc_PAT$6_ω
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 8]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 16], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 8]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 8], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_attempt
8:
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
                        mov              rax, [rbp + 24]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
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
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 1064
                        mov              rdi, rsp
                        mov              ecx, 1064
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1056], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#         V              =  ANY('abcdefghijklmnopqrstuvwxyz')
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              dword ptr [rbp + 68], 5
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n117_call_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n117_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn164:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn164]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n119_lit_string_α
                                                                                        jmp   n118_assign_α
n117_call_β:
                                                                                        jmp   n119_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n118_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n119_lit_string_α
#=======================================================================================================================
#         I              =  SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              dword ptr [rbp + 132], 5
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n120_call_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n120_call_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn168:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn168]
                        lea              rsi, [rbp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n122_lit_string_α
                                                                                        jmp   n121_assign_α
n120_call_β:
                                                                                        jmp   n122_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n122_lit_string_α
#=======================================================================================================================
#         A              =  V | I | FENCE('(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              dword ptr [rbp + 196], 5
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n123_call_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n123_call_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn172:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn172]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n125_lit_string_α
                                                                                        jmp   n124_assign_α
n123_call_β:
                                                                                        jmp   n125_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n125_lit_string_α
#=======================================================================================================================
#         F              =  A | FENCE('+' *F) | FENCE('-' *F)
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              dword ptr [rbp + 260], 5
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n126_call_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n126_call_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn176:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn176]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n128_lit_string_α
                                                                                        jmp   n127_assign_α
n126_call_β:
                                                                                        jmp   n128_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n128_lit_string_α
#=======================================================================================================================
#         T              =  F FENCE(('*' | '/') *T | '')
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              dword ptr [rbp + 324], 5
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n129_call_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n129_call_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn180:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn180]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n131_lit_string_α
                                                                                        jmp   n130_assign_α
n129_call_β:
                                                                                        jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_assign_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n131_lit_string_α
#=======================================================================================================================
#         X              =  T FENCE(('+' | '-') *X | '')
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              dword ptr [rbp + 388], 5
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n132_call_α
.Lx182_0:
                        .quad            .Lx182_0_s
.Lx182_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n132_call_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn184:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn184]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n134_lit_integer_α
                                                                                        jmp   n133_assign_α
n132_call_β:
                                                                                        jmp   n134_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n134_lit_integer_α
#=======================================================================================================================
#         eol            =  CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n135_call_α
.Lx186_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n135_call_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lbynamefn64:           .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn64]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n137_lit_string_α
                                                                                        jmp   n136_assign_α
n135_call_β:
                                                                                        jmp   n137_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n137_lit_string_α
#=======================================================================================================================
#         C              =  POS(0) ARBNO(X eol) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              dword ptr [rbp + 516], 5
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n138_call_α
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n138_call_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn191:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rbp + 480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n140_lit_string_α
                                                                                        jmp   n139_assign_α
n138_call_β:
                                                                                        jmp   n140_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n139_assign_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n140_lit_string_α
#=======================================================================================================================
#         &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              dword ptr [rbp + 596], 4
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n141_lit_integer_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n142_call_α
.Lx194_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn196:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn196]
                        lea              rsi, [rbp + 544]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n143_lit_string_α
                                                                                        jmp   n143_lit_string_α
n142_call_β:
                                                                                        jmp   n143_lit_string_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4000000]')
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              dword ptr [rbp + 756], 5
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n144_call_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n144_call_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn199:              .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]
                        lea              rsi, [rbp + 720]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n148_var_α
                                                                                        jmp   n145_lit_integer_α
n144_call_β:
                                                                                        jmp   n148_var_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n146_lit_string_α
.Lx200_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              dword ptr [rbp + 788], 15
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n147_call_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "[-f0 -r4000000]"
#-----------------------------------------------------------------------------------------------------------------------
n147_call_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lbynamefn76:           .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn76]
                        lea              rsi, [rbp + 640]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n148_var_α
                                                                                        jmp   n148_var_α
n147_call_β:
                                                                                        jmp   n148_var_α
#=======================================================================================================================
#         src            =  INPUT                          :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx203_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx203_240
                        add              rsp, 16
                                                                                        jmp   n159_lit_string_α
.Lx203_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n149_assign_α
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n149_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        add              rsp, 16
                                                                                        jmp   n150_var_α
#=======================================================================================================================
#         src            C                                 :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n151_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n151_match_head_α:
                        mov              qword ptr [rbp + 880], r13
                        mov              qword ptr [rbp + 888], r14
                        mov              qword ptr [rbp + 896], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 904], rax
                        mov              qword ptr [rbp + 872], rbp
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 848], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 840], rax
                        mov              dword ptr [rbp + 832], 0
.Lx207_0:
                        mov              r14d, dword ptr [rbp + 832]
                                                                                        jmp   n152_match_patref_α
n151_match_head_β:
                        add              dword ptr [rbp + 832], 1
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, r15d
                                                                                        jg    .Lx207_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx207_1
                                                                                        jmp   .Lx207_0
.Lx207_1:
                        mov              rax, qword ptr [rbp + 840]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 848]
                        mov              r10, qword ptr [1879048192]
.Lx207_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx207_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 880]
                        mov              r14, qword ptr [rbp + 888]
                        mov              r15, qword ptr [rbp + 896]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 904]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 872]
                                                                                        jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n152_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx208_11
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        cmp              eax, 3
                                                                                        jne   .Lx208_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx208_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx208_10
.Lx208_9:
                        xor              eax, eax
.Lx208_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx208_11:
                        test             rax, rax
                                                                                        jz    .Lx208_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx208_4]
                        lea              rdx, [rip + .Lx208_5]
                                                                                        jmp   rax
.Lx208_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 832], eax
                                                                                        jmp   n153_match_release_α
.Lx208_5:
                                                                                        jmp   n151_match_head_β
.Lx208_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx208_2:
                        test             rax, rax
                                                                                        je    .Lx208_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx208_7]
                        lea              rdx, [rip + .Lx208_8]
                                                                                        jmp   rax
.Lx208_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx208_2
.Lx208_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx208_2
.Lx208_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n151_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx208_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n153_match_release_α
.Lx208_6:
                        add              rsp, 16
                                                                                        jmp   n151_match_head_β
n152_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n153_match_release_α:
                        mov              rax, qword ptr [rbp + 840]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 848]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx210_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx210_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx210_1:
                        test             rax, rax
                                                                                        je    .Lx210_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx210_3]
                        lea              rdx, [rip + .Lx210_4]
                                                                                        jmp   rax
.Lx210_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx210_1
.Lx210_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx210_1
.Lx210_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx210_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx210_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 880]
                        mov              r14, qword ptr [rbp + 888]
                        mov              r15, qword ptr [rbp + 896]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 904]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 872]
                                                                                        jmp   n154_lit_string_α
#=======================================================================================================================
#         OUTPUT         =  'matched bytes=' SIZE(src)      :(END)
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              dword ptr [rbp + 964], 14
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n155_var_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n156_call_α
#-----------------------------------------------------------------------------------------------------------------------
n156_call_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn214:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn214]
                        lea              rsi, [rbp + 992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    main_γ
                                                                                        jmp   n157_binop_α
n156_call_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n157_binop_α:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n158_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_α:
                        mov              rsi, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        mov              rdi, qword ptr [rip + .Lx216_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# fail    OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n160_assign_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx218_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n161_goto_α:
                                                                                        jmp   n159_lit_string_α
n161_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1056]
                        add              rsp, 1064
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1056]
                        add              rsp, 1064
                        ret
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
